# Copyright KTRN 2022

# ALIASES
alias ll='ls -alG'
alias leaks='leaks -atExit -- ./a.out'
alias cpplint='~/Linter/lint.sh'
alias gcc='gcc -Wall -Wextra -Werror'
alias chrome="open -a 'Google Chrome'"
alias rabbitmqctl-ack="rabbitmqctl list_queues name messages_ready messages_unacknowledged"

# COLORS
export CLICOLOR=1
export LSCOLORS=CxFxCxGxFxegedabagaced
export PRE_COMMIT_COLOR=always

PURPLE='\[\033[1;34m\]'
GREEN='\[\033[1;32m\]'
YELLOW='\[\033[1;33m\]'
CYAN='\[\033[1;36m\]'
CLEAR_CLR='\[\033[0m\]'

# PATH
PATH=$PATH:/Users/berizaryad57/Library/Python/3.8/bin
#export PS1="${YELLOW} $ ${CLEAR_CLR}"
export PS1="${CYAN}[\w]${YELLOW} $ ${CLEAR_CLR}"
eval "$(/opt/homebrew/bin/brew shellenv)"

# BASH COMPLETION
[ -f /opt/homebrew/etc/bash_completion ] && source /opt/homebrew/etc/bash_completion

# The default interactive shell is now zsh...bla....bla... fuck it!
export BASH_SILENCE_DEPRECATION_WARNING=1
export GITGUARDIAN_API_KEY='d4d19A04c5f8617edd7698FFf19C983ff1E4eB390ce6b2b7cC8D73EDC726F1B760dadcD'

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/berizaryad57/yandex-cloud/path.bash.inc' ]; then source '/Users/berizaryad57/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/berizaryad57/yandex-cloud/completion.bash.inc' ]; then source '/Users/berizaryad57/yandex-cloud/completion.bash.inc'; fi

# FUNC FOR YC COMPUTE INSTANCES
yc() {
    if [ "$1" = "vm" ]; then
        shift
        yc compute instance "$@"
    else
        command yc "$@"
    fi
}
