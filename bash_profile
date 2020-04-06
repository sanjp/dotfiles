
export PATH=/Users/spatel/Library/Python/3.7/bin:/usr/local/opt/ruby/bin:/opt/apache-maven-3.6.3/bin:$PATH

set -o vi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Export pypi creds
if [ -f ~/.pypi_creds ]; then
  . ~/.pypi_creds
  export AWS_PYPI_USER
  export AWS_PYPI_PASSWORD
fi

# Functions

function docker-build {
  echo $AWS_PYPI_PASSWORD > pip-password && DOCKER_BUILDKIT=1 docker build --build-arg AWS_PYPI_USER=$AWS_PYPI_USER --secret=id=pip-password,src=pip-password -t $1 . && rm pip-password
}

# Setup history
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND='history -a'
export HISTCONTROL=ignoreboth:erasedups

stty stop undef

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
