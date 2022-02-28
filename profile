# If the bashrc file exists, read it
if [ -f ~/.bashrc ];
then 
    .  ~/.bashrc; 
fi

PATH=$HOME/.local/bin:$PATH
PATH=$HOME/bin:$PATH
# Add Visual Studio Code (code)
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Git branch in prompt.
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1

PATH="/usr/local/opt/ruby/bin:$PATH"
PATH=$PATH:/usr/local/lib/ruby/gems/2.6.0
PATH=$PATH:/usr/local/lib/ruby/gems/2.6.0/bin

# Git branch autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Finally, export the updated PATH variable
export PATH