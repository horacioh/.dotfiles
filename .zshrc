# pure
autoload -U promptinit; promptinit
prompt pure

PURE_PROMPT_SYMBOL=→
# PURE_PROMPT_SYMBOL="➡️ "

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/horacio/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew github node npx nvm yarn pod react-native vscode)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# ---------------------
# Custom aliases
# ---------------------

alias cp='cp -iv'                                     # Preferred 'cp' implementation
alias mv='mv -iv'                                     # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                               # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                                 # Preferred 'ls' implementation
alias ls='ls -la'
alias less='less -FSRXc'                              # Preferred 'less' implementation
# cd() { builtin cd "$@"; ll; }                         # Always list directory contents upon 'cd'
alias cd..='cd ../'                                   # Go back 1 directory level (for fast typers)
alias ..='cd ../'                                     # Go back 1 directory level
alias ...='cd ../../'                                 # Go back 2 directory levels
alias .3='cd ../../../'                               # Go back 3 directory levels
alias .4='cd ../../../../'                            # Go back 4 directory levels
alias .5='cd ../../../../../'                         # Go back 5 directory levels
alias .6='cd ../../../../../../'                      # Go back 6 directory levels
alias edit='open A'                                     # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                           # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                                        # ~:            Go Home
alias c='clear'                                       # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'                   # path:         Echo all executable Paths
alias show_options='shopt'                            # Show_options: display bash options settings
alias fix_stty='stty sane'                            # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'             # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }                  # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }               # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }              # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'              # DT:           Pipe content to file on MacOS Desktop
alias sserver='python -m SimpleHTTPServer 3000'       # Simple HTTP Server
alias phpserver='php -S localhost:3000'
alias st='git status'
alias co='git checkout'
alias tree='git log --pretty=oneline --graph --decorate --all'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'


#
# ---------------------
# NODE PACKAGES
# ---------------------
#
# export PATH="/usr/local/bin:$PATH"
# NPM_PACKAGES="/Users/horacio/.npm-packages"
# NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# PATH="$NPM_PACKAGES/bin:$PATH"

# export PATH="$PATH:/Users/horacio/Library/Python/3.7"
# # Unset manpath so we can inherit from /etc/manpath via the `manpath`
# # command
# unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
# MANPATH="$NPM_PACKAGES/share/man:$(manpath)"


#
# ---------------------
# ANDROID
# ---------------------
#
# export ANDROID_HOME=/usr/local/opt/android-sdk
# export ANDROID_NDK=/usr/local/Cellar/android-ndk/r7b
# export PATH=${PATH}:$ANDROID_HOME/platform-tools/
# export PATH=${PATH}:$ANDROID_HOME/tools
# export PATH=${PATH}:/usr/local/bin/ant

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

#
# ---------------------
# MONGODB
# ---------------------
#
#
# export PATH=/usr/local/Cellar/mongodb/3.0.3/bin/:$PATH

# export NVM_DIR="/Users/horacio/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#
# ---------------------
# PHP
# ---------------------
#

export PATH=/usr/local/php5/bin:$PATH
# source ~/.caniuse.completion.sh



# ---------------------
# Specific projects setup
# ---------------------

# AVEN

# alias avend="node /Users/horacio/workspace/ono/Aven/aven-tools/cli.js"
# export AVEN_SRC_EXTEND_OVERRIDE="/Users/horacio/workspace/ono/Aven"
# export PATH="/usr/local/opt/curl/bin:$PATH"


# Nix

. /Users/horacio/.nix-profile/etc/profile.d/nix.sh

# ---------------------
# tooling setup
# ---------------------

eval "$(direnv hook zsh)"

# ---------------------
# n (N package manager http://git.io/n-install-repo)
# ---------------------

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).


# ---------------------
# Go setup
# ---------------------

export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"