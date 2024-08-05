if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="exa --created --long --icons --color=always --no-user --no-time --no-permissions --no-filesize --octal-permissions"
alias vim="nvim"
alias personal="cd ~/personal"

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

# Git
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."


function search_and_open_dir
    set selected_dir (find /Users/raivokinne/personal/ -type d 2>/dev/null | fzf)
    if test -n "$selected_dir"
        tmux new-session -d -s my_session "vim $selected_dir"
        tmux attach-session -t my_session
    end
end

bind \cs 'search_and_open_dir'

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


# pnpm
set -gx PNPM_HOME "/Users/raivokinne/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

zoxide init fish | source

starship init fish | source
