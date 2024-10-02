if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x PATH $HOME/.local/bin:$PATH
    set CC -x "/usr/bin/clang"
    set -x CXX "/usr/bin/clang++"
    set -x CMAKE_EXPORT_COMPILE_COMMANDS "ON"
    set -x EDITOR $HOME/.local/bin/lvim
    set -x SAM_CLI_TELEMETRY 0
    set -e DEBUGINFOD_URLS

    # source "$HOME/Stash/github/google-cloud-sdk/path.fish.inc"

    if test -z "$XDG_CURRENT_DESKTOP"
    	alias logout "bspc quit"
    else if [ "$XDG_CURRENT_DESKTOP" = "KDE" ]
    	alias logout "qdbus org.kde.ksmserver /KSMServer logout 0 0 0"
    	alias poweroff="systemctl poweroff"
    	alias reboot "systemctl reboot"
    else if [ $XDG_CURRENT_DESKTOP = "QTILE" ]
    	alias logout "qtile cmd-obj -o cmd -f shutdown"
    else if [ $XDG_SESSION_TYPE = "wayland" ]
    	alias logout "hyprctl dispatch exit"
    else if [ $XDG_CURRENT_DESKTOP = "GNOME" ]
    	alias logout "gnome-session-quit"
    end


    alias vim lvim 
    alias nvim lvim
    alias killemacs 'emacsclient -e "(kill-emacs)"'
    alias reloademacs 'emacsclient -e "(kill-emacs)" && emacs --daemon' 
    alias ssh 'TERM=tmux-256color command ssh'
    alias config='git --git-dir=$HOME/Projects/dotfiles_bare_git --work-tree=$HOME/.config'
    alias icat 'feh -F'
    alias top 'htop'
    alias cat 'cat -v'
    alias apg 'command apg -t -MSNCl -m 8'

    starship init fish | source
    fzf --fish | source

    function fish_greeting
      config status -s
    end
end
