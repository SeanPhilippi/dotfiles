export FILE_CLEANER_DIR_PATH='/Users/kesto/Soulseek Downloads/complete'
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
PATH="$PATH:/Users/kesto/.npm-global/lib/node_modules/nodemon/bin"
export PATH
export CLICOLOR=1

gitBranch() { # this gives me the name of the current git branch I'm on
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
export PS1="    \u@\[\033[32m\]\w\[\033[33m\]\$(gitBranch)\[\033[00m\]> "


export PATH=$PATH:/usr/local/opt/postgresql@9.6/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.git-completion.bash ];
then . ~/.git-completion.bash; # this allows for autocomplete of branches with TAB
fi;
export PATH=/usr/local/mysql/bin:$PATH
