if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="exa --icons --group-directories-first -1"
function fzf
    vim (command fzf $argv)
end

alias nvim-lazy "NVIM_APPNAME=LazyVim nvim"
alias nvim-kick "NVIM_APPNAME=kickstart nvim"
alias nvim-chad "NVIM_APPNAME=NvChad nvim"
alias nvim-astro "NVIM_APPNAME=AstroNvim nvim"

function nvims
    set items "default" "kickstart" "LazyVim" "NvChad" "AstroNvim"
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if test -z $config
        echo "Nothing selected"
        return 0
    else if test $config = "default"
        set config ""
    end
    set -x NVIM_APPNAME $config
    nvim $argv
end


# Bind the function to Ctrl+a
bind \ca 'nvims\n'

alias i="brew install"
alias b="brew"
alias vim="nvim"
alias personal="cd ~/personal"
alias gp="git push -u origin master"
alias gc="git commit -m"
alias ga="git add ."
alias gs="git status"
alias gl="git log"

function g
    git $argv
end

function c
    cd $argv
end

# Add .local/bin to PATH
set -gx PATH /Users/raivokinne/.local/bin $PATH

# Add pip to PATH
set -gx PATH /Users/raivokinne/.local/bin $PATH

# Set default editor
set -g EDITOR nvim

# Add code to PATH 
set -gx PATH /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin $PATH

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/raivokinne/anaconda3/bin/conda
    eval /Users/raivokinne/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

