# ----------------------
# Aliases commands
# ----------------------
alias c 'clear'
alias .. 'cd ..'
alias ... 'cd ~'
alias ls 'exa --icons --long --git -la'
alias o 'open .'
alias dev 'cd ~/Documents/Development'
alias vsc 'code-insiders'
alias s 'ssh'
## EXAMPLE OF COMMAIND FOR FIGLET TEXT CREATOR
alias bog 'toilet -f future Scott Mackey --filter metal'

# ----------------------
# Utilities
# ----------------------
alias myip 'ipconfig'
alias diskusage 'df -h'
alias folderusage 'du -ch'
alias totalfolderusage 'du -sh'

function wtf -d "Print which and --version output for the given command"
    for arg in $argv
        echo $arg: (which $arg)
        echo $arg: (sh -c "$arg --version")
    end
end

function prpath -d "Print PATH on each line"
	for val in $PATH
		echo $val
	end
end

function killp
    kill -9 $argv
end

function rtmux
  bind r source-file ~/.tmux.conf \; display "Reloaded ~/.tmux.conf"
end

function mkcd
	mkdir $argv && cd $argv
end

function rmf
  rm -rf $argv
end

# ----------------------
# Git Aliases
# ----------------------
alias g 'git status'
alias gull 'git pull'
alias gush 'git push'
alias gl 'git log'
alias gdiff 'git diff'
alias glean 'git clean -df'
alias gd 'git checkout develop'
alias ghard 'git reset --hard'
alias glg 'git log --graph --oneline --decorate --all'
alias gss='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

# ----------------------
# Git commands
# ----------------------
function gb
  git checkout -b $argv
end

function gch
  git checkout $argv
end

function gc
  git commit -am $argv
end

# ----------------------
# vim 'nvim'
# ----------------------
alias ea 'nvim ~/.config/fish/aliases.fish'
alias ef 'nvim ~/.config/fish/config.fish'
alias eg 'nvim ~/.gitconfig'
alias ev 'nvim ~/.vimrc'

# ----------------------
# tmux
# ----------------------
alias t 'tmux' # start tmux
alias ta 't a -t' # attach to session
alias tls 't ls' # list sessions
alias tn 't new -s primary' # new session named primary
alias tks 't kill-session -t' # kill session by name

# function grevert
#   branch $(git branch | grep \* | cut -d ' ' -f2)
#   git reset --hard origin/$branch
# end

# function gstream
#   branch $(git branch | grep \* | cut -d ' ' -f2)
#   git push --set-upstream origin $branch
# end

# Initialise Fish Greeting
# function fish_greeting
# 	archey
# end
# funcsave fish_greeting
