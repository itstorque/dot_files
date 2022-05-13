# commands for editing source

alias loadsource="source ~/.zshrc"
alias editsource="sublime ~/dot_files/.profile"

# setting up PATH and envs

PATH="/usr/local/bin:$PATH"

PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

eval $(/opt/homebrew/bin/brew shellenv)

# aliases I use

alias sublime="subl"

# zsh prompt : git status

autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c) '

# zsh prompt : message

PROMPT='%F{51}%n%f:%B%F{15}%~%f%b %F{196}${vcs_info_msg_0_}%f%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%f'