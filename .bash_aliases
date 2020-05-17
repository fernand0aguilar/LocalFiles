# Aliases to enhance speed of using machine


#EDITOR
alias pico='edit'
alias spico='sedit'
alias nano='edit'
alias snano='sedit'


#GENERAL
alias q='exit'
alias open='xdg-open'
alias brightnessLCD='xrandr --output LVDS-1 --brightness'
alias please='sudo'
alias shutdown="sudo shutdown -h now"

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

# Change directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias la='ls -Alh' # show hidden files
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Fls' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

#NETWORK
alias openports='netstat -nape --inet'

#SHUTDOWN
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'

#DISK MANAGEMENT
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias mountedinfo='df -hT'
alias mkdir='mkdir -p'
alias ps='ps auxf'

#To compress and uncompress
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

#PYTHON
alias pyco='ipython3'
alias po='python3'
alias run='python3 manage.py runserver'
alias run='python3 manage.py runserver'
alias manage='python3 manage.py'
alias manage='python3 manage.py'
alias run_venv='virtualenv venv && source venv/bin/activate'

#UPDATE
alias att='apt-get -f install && apt-get update'
alias att2='apt-get -f install -y && apt-get update -y && apt-get -f install -y && apt-get update -y'

#C++ COMPILE
alias c='g++ -o prog -O2 -lm -std=c++11'
alias p='cat in.txt | ./prog'

#SYTEM INFO
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias mem="free -m | awk 'NR==2{printf \"MEM: %.2f%%\n\", \$3*100/\$2}'"
alias cpu="grep 'cpu ' /proc/stat | awk '{usage=(\$2+\$4)*100/(\$2+\$4+\$5)} END {print usage}' | awk '{printf(\"%.1f\n\", \$1)}'"
alias see='sudo netstat -lpn | grep'
alias htop='sudo htop'

#GIT
alias commit='git commit -ps'
alias gitDate='LC_ALL=C GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"'
