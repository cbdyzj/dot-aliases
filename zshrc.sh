# shell prompt
ZSH_PROMPT_NEWLINE=$'\n'
PS1="%n@%m:%~${ZSH_PROMPT_NEWLINE}$ "

# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -U compinit && compinit

# aliases
. "$(dirname "$0")/aliases.sh"

# node
NODE_PATH="$HOME/get-node"
if [ -f "$NODE_PATH/.profile" ]; then
    . "$NODE_PATH/.profile"
fi

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# java
export GRAALVM_HOME="$HOME/Library/Java/JavaVirtualMachines/graalvm-ce-21.0.2/Contents/Home"

# gradle
alias gradle="$HOME/gradle/gradle-8.7/bin/gradle"