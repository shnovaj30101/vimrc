# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias vrc='vim ~/.vimrc'
alias sb='source ~/.bashrc'
alias brc='vim ~/.bashrc'
alias gc='git checkout'
alias gbr='git branch'
alias gs='git status'
alias ga='git add'
alias mount='sshfs shnovaj30101@nubot3.ddns.net:/home/shnovaj30101 /home/shnovaj30101/work/nubot3/'
alias unmount='fusermount -u /home/shnovaj30101/work/nubot3'
alias sftpn0='sftp shnovaj30101@nubot0.ddns.net'
alias sftpn1='sftp shnovaj30101@nubot1.ddns.net'
alias sftpn3='sftp shnovaj30101@nubot3.ddns.net'
alias sftpn4='sftp shnovaj30101@nubot4.ddns.net'
alias sftpna03='sftp shnovaj30101@nubota03.ddns.net'
alias sftpna04='sftp shnovaj30101@nubota04.ddns.net'
alias sftpn14='sftp shnovaj30101@nubot14.ddns.net'
alias sftpt='sftp 104.199.197.73'
alias login0='ssh shnovaj30101@nubot0.ddns.net'
alias login1='ssh shnovaj30101@nubot1.ddns.net'
alias login4='ssh shnovaj30101@nubot4.ddns.net'
alias login5='ssh shnovaj30101@nubot5.ddns.net'
alias login14='ssh shnovaj30101@nubot14.ddns.net'
alias logino1='ssh shnovaj30101@onlybot1.ddns.net'
alias login8='ssh shnovaj30101@nubot8.ddns.net'
alias login9='ssh shnovaj30101@nubot9.ddns.net'
alias login17='ssh shnovaj30101@nubot17.ddns.net'
alias logina03='ssh shnovaj30101@nubota03.ddns.net'
alias logina04='ssh shnovaj30101@nubota04.ddns.net'
alias login3='ssh shnovaj30101@nubot3.ddns.net'
alias taigun='ssh 104.199.197.73'
alias wgetserver='http_proxy="http://114.35.151.137:8887" https_proxy="114.35.151.137:8887" wget -qO -  http://shopping.pchome.com.tw'
alias wgetrserver='http_proxy="http://114.35.151.137:8887" https_proxy="114.35.151.137:8887" wget -r  http://shopping.pchome.com.tw'
alias wgettest='http_proxy="http://114.35.151.137:8887" https_proxy="114.35.151.137:8887" wget -qO - '
alias wgetrtest='http_proxy="http://114.35.151.137:8887" https_proxy="114.35.151.137:8887" wget -r '
alias f='fg'
alias cdu='cd ~/work/lang_analyze/unicode_range'
alias cyth='python setup.py build_ext --inplace'
alias cyth3='python3 setup.py build_ext --inplace'
alias cyth2='python setup2.py build_ext --inplace'
alias cyth32='python3 setup2.py build_ext --inplace'
alias libuni='g++ -std=c++11 unirange.cpp  -fPIC -shared -o libunirange.so'
alias cdf='cd ~/work/lang_analyze/fasttext/'
alias cdc='cd ~/work/lang_analyze/fasttext/corpus'
alias cdda='cd ~/work/lang_analyze/unicode_range/lang-detection/dev/test/data'
alias cdde='cd ~/work/lang_analyze/lang-detection/dev'
alias z='zmore'
alias lsh='ls -alh'
alias solang='source /home/shnovaj30101/work/lang_analyze/lang_detect_env/bin/activate'
alias somv='source /home/shnovaj30101/music_visualizer/MV_env/bin/activate'
alias deac='deactivate'
alias h='history'
alias hg='history | grep'
alias ini='google-chrome https://taiwin368368.slack.com/messages/C730XP4G4/ https://bitbucket.org/taiwin368/ https://trello.com/ https://mail.google.com/mail/u/0/'

alias fpre8='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model8.ftz - 2'
alias fpre9='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model9.ftz - 2'
alias fpre73='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model7_3.ftz - 2'
alias fpre74='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model7_4.ftz - 2'
alias fpre75='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model7_5.ftz - 2'
alias fpre6='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model6.ftz - 2'
alias fpre5='/home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/fasttext predict-prob /home/shnovaj30101/work/lang_analyze/lang-detection/dev/fasttext/model/model5.ftz - 2'
alias cdm1='cd ~/work/lang_analyze/lang-detection/dev/model_result/20170415_26409/model6/more3/' 
alias cdm2='cd ~/work/lang_analyze/lang-detection/dev/model_result/20170415_26188/' 
alias cdm3='cd ~/work/lang_analyze/lang-detection/dev/model_result/20170414_26981/' 
alias cdm4='cd ~/work/lang_analyze/lang-detection/dev/model_result/20170415_26200/' 
alias cdm5='cd ~/work/lang_analyze/lang-detection/dev/model_result/20170415_26256/' 

#alias gl='-lGL -lGLEW -lglfw3  -lX11 -lXxf86vm -lpthread -ldl -lXi -lXinerama -lXcursor -lXrandr'


export PATH=$PATH:/usr/local/mongodb/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
