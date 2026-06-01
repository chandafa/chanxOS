# chanxOS shell environment & aliases
alias cupdate='chanx-update'
alias cinfo='chanx-info'
alias cdev='chanx-devpack'
alias cinstall='chanx-install'
alias cglass='chanx-glass'
alias ctheme='chanx-theme'
alias cstudy='chanx-study-mode'
alias cclean='chanx-clean'
alias cfocus='chanx-focus'
alias chud='chanx-hud'
alias csnap='chanx-snap'
alias cnote='chanx-quicknote'

# Custom prompt
export PS1='\[\033[1;36m\]chanx\[\033[0;37m\]@\[\033[1;36m\]\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\]\$ '
export EDITOR=nano
export VISUAL=nano
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
