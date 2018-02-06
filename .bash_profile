export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


alias gpom='git pull origin master'

ram() {
    command git push origin master
}

function touchp() {
  mkdir -p "$(dirname "$1")/" && touch "$1"
}

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias reload='source ~/.bash_profile'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

alias jpnb='workon jupyter;jupyter notebook ~'

export PATH=/usr/local/bin:$PATH
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# workon joe
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
export PATH=/Users/user/.pyenv:$PATH
export PATH=/usr/local/bin/sen2cor240/bin:$PATH

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}

export PATH="/usr/local/opt/mozjpeg/bin:$PATH"
export PATH="/Users/jfox/Library/Python/2.7/bin:$PATH"