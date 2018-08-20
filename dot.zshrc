# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

#antigen
source /home/david/antigen.zsh


#Powerline9k Configuration
#
# POWERLEVEL9K_<name-of-segment>_<state>_[BACKGROUND|FOREGROUND].
#
# Segments with state are:
# Segment 	States
# battery 	LOW, CHARGING, CHARGED, DISCONNECTED
# context 	DEFAULT, ROOT, SUDO, REMOTE, REMOTE_SUDO
# dir 	HOME, HOME_SUBFOLDER, DEFAULT, ETC
# dir_writable 	FORBIDDEN
# host 	LOCAL, REMOTE
# load 	CRITICAL, WARNING, NORMAL
# rspec_stats 	STATS_GOOD, STATS_AVG, STATS_BAD
# status 	ERROR, OK (note: only, if verbose is not false)
# symfony2_tests 	TESTS_GOOD, TESTS_AVG, TESTS_BAD
# user 	DEFAULT, SUDO, ROOT
# vcs 	CLEAN, UNTRACKED, MODIFIED
# vi_mode 	NORMAL, INSERT
#
POWERLEVEL9K_MODE='nerdfont-complete'
#Custom Icons
POWERLEVEL9K_CARRIAGE_RETURN_ICON='\uF810'
POWERLEVEL9K_BACKGROUND_JOBS_ICON='\uF085 '
POWERLEVEL9K_TODO_ICON='\uF274'
POWERLEVEL9K_DISK_ICON='\uF7C9'
POWERLEVEL9K_ANDROID_ICON='\uF531'
POWERLEVEL9K_LINUX_UBUNTU_ICON='\uF31B \uF31A'
POWERLEVEL9K_LINUX_ICON='\uF31A'
POWERLEVEL9K_HOME_ICON='\uF46D'
POWERLEVEL9K_SWAP_ICON='\uE271'
POWERLEVEL9K_RAM_ICON='\uF463'
POWERLEVEL9K_SERVER_ICON='\uF98C'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\uF0AB '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\uF0AA '
POWERLEVEL9K_VCS_COMMIT_ICON='\uF417 '
POWERLEVEL9K_VCS_BRANCH_ICON='\uF418 '
POWERLEVEL9K_VCS_GIT_ICON='\uF1D3 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '
POWERLEVEL9K_PYTHON_ICON='\uE235 '
POWERLEVEL9K_PUBLIC_IP_ICON='\uF484'
POWERLEVEL9K_TIME_ICON='\uF64F'
POWERLEVEL9K_DATE_ICON='\uF073'
POWERLEVEL9K_JAVA_ICON='\uE256 '
POWERLEVEL9K_LARAVEL_ICON='\uE73F '
POWERLEVEL9K_USER_ICON='\uF007'
POWERLEVEL9K_BATTERY_ICON='\uF0E7' #'\uF1E6'

POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK=true
POWERLEVEL9K_STATUS_SHOW_PIPESTATUS=true
POWERLEVEL9K_STATUS_HIDE_SIGNAME=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='╭'
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX='\u251C'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='╰\uF63D\uF054 '

POWERLEVEL9K_TIME_FORMAT='%D{%-e-%^b-%Y '$POWERLEVEL9K_DATE_ICON' %-l:%M%P}'

POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_CHARGING='yellow'

POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'

POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery user host vpn ssh dir_writable dir nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs ip ram load virtualenv time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Other Bundles

antigen bundle ascii-soup/zsh-url-highlighter
antigen bundle djui/alias-tips
antigen bundle hcgraf/zsh-sudo
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle RobSis/zsh-completion-generator
antigen bundle rupa/z
antigen bundle srijanshetty/zsh-pip-completion
antigen bundle TamCore/autoupdate-oh-my-zsh-plugins
antigen bundle tarjoilija/zgen
antigen bundle thetic/extract
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle unixorn/awesome-zsh-plugins
antigen bundle unixorn/zsh-quickstart-kit
antigen bundle zpm-zsh/dropbox
antigen bundle zpm-zsh/ssh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
