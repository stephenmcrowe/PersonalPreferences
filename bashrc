# Custom aliases
alias ll='ls -tl'
alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias gl='git log'
alias gpush='git push'
alias gpull='git pull'
alias jp='jupyter notebook'

# Git branch in prompt git > 1.9.3
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '


# Git branch in prompt.
#parse_git_branch() {
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

#PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1

