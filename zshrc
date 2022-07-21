# Custom aliases
alias ll='ls -tl'
alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias gl='git log'
alias gpush='git push'
alias gpull='git pull'
alias jp='jupyter notebook'

# Git branch in prompt
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='%n@%m %1~ %F{green}(${vcs_info_msg_0_}) %F{white}$ '

# Git zsh autocomplete
autoload -Uz compinit && compinit
