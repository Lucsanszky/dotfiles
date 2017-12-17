
export PATH=/usr/bin:/usr/sbin:/bin:/sbin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export TERM="screen-256color"
export PS1="\h:\w 🃏  \u 🃏  $ "

if [ -f ~/.bash_profile ]; then
    source ~/.bash_profile
fi



#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
export GVM_DIR="/Users/dlucsanszky/.gvm"
[[ -s "/Users/dlucsanszky/.gvm/bin/gvm-init.sh" ]] && source "/Users/dlucsanszky/.gvm/bin/gvm-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dlucsanszky/.sdkman"
[[ -s "/Users/dlucsanszky/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dlucsanszky/.sdkman/bin/sdkman-init.sh"
eval "$(docker-machine env default)";
