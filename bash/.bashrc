#
# ~/.bashrc
#

# If not running interactively, don't do anything (e.g., for scripts)
[[ $- != *i* ]] && return

export EDITOR="nvim"

# IME
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export INPUT_METHOD=fcitx

PS1='\[\033[35m\][\u@\h \W]\$ \[\033[0m\]'

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'

img () {
	kitty icat "$1"
}

# mpd client
if [ -f ~/.cargo/bin/inori ]; then
	alias inori='~/.cargo/bin/inori'
else
	alias inori='echo "Error: inori not found."'
fi

#
# private config
#

if [ -f ~/.bashrc_private ]; then
	. ~/.bashrc_private
else
	echo "Warning: ~/.bashrc_private not found."
fi

# 
# miniconda
#

if [ -f /opt/miniconda3/etc/profile.d/conda.sh ]; then 
	. /opt/miniconda3/etc/profile.d/conda.sh
else
	echo "Warning: /opt/miniconda3/ not found."
fi

#
# utilities
#

rename_dirs() {
	local max_len=0
	local -a operations=()

	# First pass: calculate transformations and find max length
	for dir in */; do
		dir="${dir%/}"
		local new_name="$dir"

		# Check if starts with [tag] or (tag)
		if [[ "$dir" =~ ^(\[[^\]]+\]|\([^\)]+\))[[:space:]]*(.*) ]]; then
			local tag="${BASH_REMATCH[1]}"
			local rest="${BASH_REMATCH[2]}"
			new_name="${rest}-${tag}"
		fi

		# Replace all spaces with dots
		new_name="${new_name// - /-}"
		new_name="${new_name//\) \(/\)\(}"
		new_name="${new_name// \(/-\(}"
		new_name="${new_name// \[/-\[}"
		new_name="${new_name// ~ /\~}"
		new_name="${new_name// /.}"

		if [[ "$new_name" =~ ^(.+)(\.S[0-9]{2})(.+?)$ ]]; then
			local g1="${BASH_REMATCH[1]}"
			local g2="${BASH_REMATCH[2]}"
			local g3="${BASH_REMATCH[3]}"
			new_name="${g1}-${g2}-${g3}"
		fi

		new_name="${new_name//-./-}"
		new_name="${new_name//--/-}"

		# Only add to operations if name changed
		if [[ "$dir" != "$new_name" ]]; then
			operations+=("$dir|$new_name")

			# Track max length
			[[ ${#dir} -gt $max_len ]] && max_len=${#dir}
		fi
	done

	# If no operations, exit
	if [[ ${#operations[@]} -eq 0 ]]; then
		echo "No directories found with leading tags."
		return
	fi

	# Display preview
	echo "Preview of changes:"
	echo
	for op in "${operations[@]}"; do
		IFS='|' read -r old new <<< "$op"
		printf "%-${max_len}s  ->  %s\n" "$old" "$new"
	done

	# Confirm
	echo
	read -p "Proceed with rename? Type 'yes' to confirm: " confirm

	if [[ "$confirm" != "yes" ]]; then
		echo "Aborted."
		return
	fi

	# Execute renames
	echo
	for op in "${operations[@]}"; do
		IFS='|' read -r old new <<< "$op"
		if [[ -e "$new" ]]; then
			echo "Error: '$new' already exists, skipping '$old'"
		else
			mv "$old" "$new"
			echo "Renamed: $old -> $new"
		fi
	done
}
