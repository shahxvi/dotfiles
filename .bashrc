# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

# IntelliJ 'bin' directory to PATH
export PATH="$PATH:$HOME/IntelliJ/bin"

# Default Text Editor
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"

# Aliases
alias ls="lsd"
alias la="ls -la"
alias lg="lazygit"
alias df="duf"
alias fetch="fastfetch"
alias cls="clear"
alias uname="uname -a"
alias c="cd"
alias home="cd ~"
alias ..="cd .."
alias back="cd -"
alias emacs="emacs -nw"
alias e="emacs"
alias v="vim"
alias n="nano"

# Zoxide
eval "$(zoxide init bash)"

# Edit bashrc
function bashrc() {
        vim ~/.bashrc
        if bash -n ~/.bashrc; then
                source ~/.bashrc
        else
                echo "~/.bashrc not sourced"
        fi
}

# Update
function update() {
        sudo dnf upgrade; fwupdmgr upgrade; flatpak update
}

# Bash Greeting
function greeting() {
        echo "Hello, $USER! Today is $(date)" | cowsay
}
greeting
