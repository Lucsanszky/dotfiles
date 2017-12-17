# export PS1="\h:\w \u $ "

export FZF_DEFAULT_COMMAND='find .'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/jre

export PATH="Users/dlucsanszky/Library/R/3.3/library/rJava/jri:$PATH"

export PATH="$PATH:$JAVA_HOME:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MacPorts Installer addition on 2014-10-10_at_00:24:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# OPAM configuration
. /Users/dlucsanszky/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# CUDA
export PATH="/Developer/NVIDIA/CUDA-7.0/bin:$PATH"
export DYLD_LIBRARY_PATH="/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH"

# Cabal
PATH="$HOME/.cabal/bin:$PATH"

export PATH="/usr/local/texlive/2015/bin/universal-darwin:$PATH"

# added by Anaconda3 4.0.0 installer
export PATH="/Users/dlucsanszky/anaconda3/bin:$PATH"

# NIX
if [ -e /Users/dlucsanszky/.nix-profile/etc/profile.d/nix.sh ]; then
  . /Users/dlucsanszky/.nix-profile/etc/profile.d/nix.sh;
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


DOCKER_MACHINE="default"
if docker-machine status $DOCKER_MACHINE | grep "Running" &> /dev/null
  then
    eval "$(docker-machine env $DOCKER_MACHINE)"
  else
    docker-machine start $DOCKER_MACHINE && eval "$(docker-machine env $DOCKER_MACHINE)"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/dlucsanszky/.sdkman"
# [[ -s "/Users/dlucsanszky/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dlucsanszky/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
