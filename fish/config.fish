if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
alias ls="exa"

alias ls="exa --icons --group-directories-first -1"
function fzf
    vim (command fzf $argv)
end

# Add Homebrew to PATH
set -gx PATH /usr/local/Homebrew/bin $PATH

# Add Homebrew binaries to fish_user_paths
set -gx fish_user_paths /usr/local/Homebrew/bin $fish_user_paths

fish_add_path /opt/homebrew/bin
set -g fish_greeting

set --export GOPATH "$HOME/go"
set --export PATH $GOPATH/bin $PATH

set --export GOBIN "$GOPATH/bin"
set --export PATH $GOBIN $PATH

set --export COMPOSER_HOME "$HOME/.composer"
set --export PATH $COMPOSER_HOME/vendor/bin $PATH

set --export CARGO_HOME "$HOME/.cargo"
set --export PATH $CARGO_HOME/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
