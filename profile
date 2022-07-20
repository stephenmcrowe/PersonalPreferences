# If the bashrc file exists, read it
if [ -f ~/.bashrc ];
then 
    .  ~/.bashrc; 
fi

PATH=$HOME/.local/bin:$PATH
PATH=$HOME/bin:$PATH
# Add Visual Studio Code (code)
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

PATH="/usr/local/opt/ruby/bin:$PATH"
PATH=$PATH:/usr/local/lib/ruby/gems/2.6.0
PATH=$PATH:/usr/local/lib/ruby/gems/2.6.0/bin

# Git branch autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Finally, export the updated PATH variable
export PATH
