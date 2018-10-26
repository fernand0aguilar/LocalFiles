# Aliases to enhance speed of using machine

alias pico='edit'
alias spico='sedit'
alias nano='edit'
alias snano='sedit'
alias see='sudo netstat -lpn | grep'
alias open='gnome-open'
alias htop='sudo htop'
alias commit='git commit -ps'
alias q='exit'
alias gitDate='LC_ALL=C GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"'

alias run_venv='virtualenv venv && source venv/bin/activate'

#original aliases
alias open='xdg-open'

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

alias mkdir='mkdir -p'
alias ps='ps auxf'


# Change directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cdmds='cd UNB/MDS/working_directory/2016.2-Time07-SME_UnB/2016.2-SME_UnB/SME_UnB && ls'

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

# alias chmod commands
#alias mx='chmod a+x'
#alias 000='chmod -R 000'
#alias 644='chmod -R 644'
#alias 666='chmod -R 666'
#alias 755='chmod -R 755'
#alias 777='chmod -R 777'

alias for5='for i in {0..5}; do'
alias for10='for i in {0..10}; do'
alias h="history | grep "
alias p="ps aux | grep "
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"
alias f="find . | grep "
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"


alias openports='netstat -nape --inet'
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'

#To compress and uncompress
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'


alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias sha1='openssl sha1'
alias whatismyip="whatsmyip"
alias pyco='ipython3'
alias po='python3'
alias att='apt-get -f install && apt-get update'
alias att2='apt-get -f install -y && apt-get update -y && apt-get -f install -y && apt-get update -y'
alias cpmb='pdflatex tcc.tex && pdflatex tcc.tex &&  bibtex tcc.aux && pdflatex tcc.tex && pdflatex tcc.tex && gnome-open tcc.pdf'
alias cpm='pdflatex tcc.tex && pdflatex tcc.tex && gnome-open tcc.pdf'
alias c='g++ -o prog -O2 -lm -std=c++11'
alias p='cat in.txt | ./prog'
alias logcot='ssh root@162.243.111.72'
alias logmiu='ssh root@192.241.255.171'
alias run='python3 manage.py runserver'
alias manage='python3 manage.py'
alias mem="free -m | awk 'NR==2{printf \"MEM: %.2f%%\n\", \$3*100/\$2}'"
alias cpu="grep 'cpu ' /proc/stat | awk '{usage=(\$2+\$4)*100/(\$2+\$4+\$5)} END {print usage}' | awk '{printf(\"%.1f\n\", \$1)}'"
alias run='python3 manage.py runserver'
alias manage='python3 manage.py'

alias brightnessLCD='xrandr --output DVI-I-2 --brightness'
