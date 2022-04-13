# Copyright KTRN 2022

# ALIASES
alias test='echo "hi"'
alias ll='ls -l'
alias leaks='leaks -atExit -- ./a.out'
alias cpplint='~/Linter/lint.sh'
alias cdb='cd ..'
alias gcc='gcc -Wall -Wextra -Werror'

# COLORS
LSCOLORS="abb"
PURPLE='\e[01;34m\]'
GREEN='\e[01;32m\]'
CLEAR_CLR='\e[m'

# PATH
export PS1="${PURPLE}\u@ ${GREEN}\w> ${CLEAR_CLR}"
