# listings
alias ll='ls --color=always -alF'
alias la='ls --color=always --group-directories-first -A -v'
alias l='ls color=always -CF'

# ask before changing a file
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# changing directories
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias home='cd ~'
alias b='cd -'

# Alias for git dotfiles repo
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Update and upgrade
alias aptup='sudo apt update && sudo apt upgrade'
	
# doom emacs
alias doom='~/.emacs.d/bin/doom run'
alias doomsync='~/.emacs.d/bin/doom sync'
alias doomup='~/.emacs.d/bin/doom upgrade'

# git
alias addall='git add .'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'

# Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Get highest memory consuming processes
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# Get highest CPU consuming processes
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
