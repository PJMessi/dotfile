# OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# ZSH_THEME="af-magic"
plugins=(
  git
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# PYENV
eval "$(pyenv init --path)"

# RBENV
# eval "$(rbenv init -)"

# JAVA 
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-19.jdk/Contents/Home"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home"

# PROTOBUF
export PATH="/opt/homebrew/opt/protobuf@3/bin:$PATH"

# PROTOC GO
export PATH="$PATH:$(go env GOPATH)/bin"

# GOLANG: authenticate for private repository access
export GOPRIVATE="github.com/pjmessi"
# export GOPRIVATE="github.com/org_name_here"

# ATOMICMAGE: alias
alias dockerstop='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
alias gb='git branch --sort=-committerdate'
alias launch_parallels='/Users/prajwalshrestha/parallels_hack/parallelsdesktop/parallelsdesktopwithcrack/Application/Crack/Launch_Parallels.command'
brw() {
    local commands=(
        "brew update"
        "brew upgrade"
        "brew autoremove"
        "brew cleanup"
    )
    echo "Running brew commands..."
    for cmd in "${commands[@]}"; do
        echo "Running: $cmd"
        eval "$cmd"
    done
    echo "brw complete"
}

export P='/Users/prajwalshrestha/projects/'
export p='/Users/prajwalshrestha/projects/'
export c='/Users/prajwalshrestha/.config/'
export C='/Users/prajwalshrestha/.config/'

# FOR REACT NATIVE ANDROID EMULATOR
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools

# 1PASSWORD
# source /Users/prajwalshrestha/.config/op/plugins.sh

# FOR RUBY ON RAILS POSTGRES
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# for stupid SAM CLI FUCK THIS
# export DOCKER_HOST=$(docker context inspect | jq -r '.[0].Endpoints.docker.Host')

# TODO: remove this
# for lua rocks
export PATH="$HOME/.luarocks/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

eval "$(starship init zsh)"
