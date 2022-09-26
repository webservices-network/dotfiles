
set PATH /usr/local/bin /usr/local/sbin /opt/homebrew/bin /opt/homebrew/sbin /usr/local/opt/python/libexec/bin $PATH

# Repo for dotfiles
alias config='/usr/bin/git --git-dir=/Users/scott/.dotfiles/ --work-tree=/Users/scott'

. ~/.config/fish/aliases.fish

if test -z "$TMUX"
	neofetch
end

# Start tmux session automatically
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]
#     tmux attach -t main || tmux new -s main
# end

# # Start X at login
# if status is-interactive
#     if test -z "$DISPLAY" -a $XDG_VTNR = 1
#         exec startx -- -keeptty
#     end
#     if test -z "$TMUX"
#         set id (tmux ls | grep -vm1 attached | cut -d: -f1)
#         if test -z "$id"
#             tmux new-session
#         else
#             tmux attach-session -t "$ID"
#         end
#     end
# end

# node -v

# Start starship #
starship init fish | source

# Start Zoxide #
zoxide init fish | source