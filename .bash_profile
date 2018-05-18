export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


alias gpom='git pull origin master'

#
# Usage: mycd <path>
#
#  Replacement for builtin 'cd', which keeps a separate bash-history
#   for every directory.
function mycd()
{
  history -w # write current history file
  builtin cd "$@"  # do actual cd
  local HISTDIR="$HOME/.bash_history.d$PWD" # use nested folders for history
  if [ ! -d "$HISTDIR" ]; then # create folder if needed
    mkdir -p "$HISTDIR"
  fi
  export HISTFILE="$HISTDIR/${USER}_bash_history.txt" # set new history file
  history -c  # clear memory
  history -r #read from current histfile
}

alias cd=mycd

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
export PATH="/Users/jfox/Library/Python/2.7/bin:$PATH"export PATH="/usr/local/opt/gdal2/bin:$PATH"
export PATH="/usr/local/cuda/bin:$PATH"alias blender=/Applications/Blender/blender.app/Contents/MacOS/blender

alias blender=/Applications/blender.app/Contents/MacOS/blender
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
