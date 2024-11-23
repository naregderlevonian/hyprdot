clear

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH:$HOME/.cargo/bin

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Qemu
export LIBVIRT_DEFAULT_URI="qemu:///system"

# Custom colors
eval $(dircolors ~/.dir_colors) 

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# PROMPT='%{$FG[015]%}%n %{$FG[012]%}%1~%{$FG[015]%} # %{$reset_color%}'

# Ignore empty Enter key presses
accept-line() { [[ -z "$BUFFER" ]] || zle .accept-line }
zle -N accept-line

PROMPT='
%{$FG[012]%}%~%{$reset_color%}
%{$FG[015]%}%n%{$reset_color%}
%{$FG[015]%}   %{$reset_color%}'

RPROMPT='%{$FG[008]%}${vcs_info_msg_0_}%{$reset_color%}'

zstyle ':vcs_info:git:*' formats 'git:%b'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	colored-man-pages
	colorize
	sudo
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls --color --group-directories-first"

# History size
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000

typeset -A ZSH_HIGHLIGHT_STYLES

# Colors
export TERM=xterm-256color
export COLORTERM=truecolor

export LS_COLORS="di=94:fi=0:ln=96:or=91:mh=40:bd=33:cd=93:pi=33:so=95:ex=92:mi=40:su=92;45:sg=92;44:ca=30;41:tw=94;45:ow=94;44:st=37;41:*.bak=37:*\~=37"
autoload -U colors && colors

ZSH_HIGHLIGHT_STYLES[command]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[default]='fg=7'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=7,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=3'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=12,bold'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=15,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=0'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=5,bold'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=5,bold'
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=2'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=2,bold'
ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=2'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=2,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=3,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=3,bold'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=1'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=1'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=1'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=1'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=3'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=6'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=6'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=15,bold'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=0,bold'

# 256 Color
if [ $TERM != "linux" ]; then
    ZSH_HIGHLIGHT_STYLES[command]='fg=15'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=15'
    ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=7,underline'
    ZSH_HIGHLIGHT_STYLES[path]='fg=12'
    ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=15'
    ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=7'
    ZSH_HIGHLIGHT_STYLES[globbing]='fg=13'
    ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=13'
    ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=9'
    ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=9'
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=11'
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=11'
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=9'
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=9'
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=9'
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=9'
    ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=9'
    
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
fi

if [ $(tty) = /dev/tty1 ]; then
    Hyprland > /dev/null
    # dbus-launch --sh-syntax --exit-with-session Hyprland > /dev/null
    clear
    if [ -f /tmp/switch-gpu-mode ]; then
        $HOME/.config/waybar/bin/set-gpu-mode
    fi
    logout
fi

 zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }
