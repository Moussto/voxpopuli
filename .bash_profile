parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e]0;\u@\h: \w\a\]\u@laptop:\[\033[38;5;39m\]\w\[\033[38;5;227m\]$(parse_git_branch)\[\033[00m\]$"
