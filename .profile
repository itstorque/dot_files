alias loadsource="source ~/.zshrc"
alias editsource="sublime ~/.profile"

PATH="/usr/local/bin:$PATH"

PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"


alias sublime="subl"


autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c) '

# PROMPT='➜ %F{51}%n%f:%B%F{15}%~%f%b$ %F{red}${vcs_info_msg_0_}%f %#'
# PROMPT='%1~  %# '

PROMPT='%F{51}%n%f:%B%F{15}%~%f%b %F{196}${vcs_info_msg_0_}%f%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%f'