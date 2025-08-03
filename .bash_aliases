# custom aliases 


alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias bro-update='sudo apt update -y'
alias bro-upgrade='sudo apt upgrade -y'
alias bro-upgrade-list='apt list --upgradable'
alias bro-dist-upgrade='sudo apt dist-upgrade'
alias bro-install='sudo apt install'

alias gte='gnome-text-editor'
alias purge='sudo dpkg --purge '
alias bro-sync='bro-update && bro-upgrade'
alias bro-battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage"'
alias bro-copy-content='xclip -selection clipboard -i < '
alias bro-remove='sudo apt-get --purge remove '


# aliases related to services
alias bro-stop-services='sudo systemctl stop jenkins; sudo systemctl stop apache2; sudo systemctl stop docker.socket; sudo systemctl stop docker; sudo systemctl stop mysql'

alias bro-start-services='sudo systemctl start jenkins; sudo systemctl start apache2; sudo systemctl start docker.socket; sudo systemctl start docker; sudo systemctl start mysql'

alias bro-disable-services='sudo systemctl disable jenkins; sudo systemctl disable apache2; sudo systemctl disable docker.socket; sudo systemctl disable docker; sudo systemctl disable mysql'

alias bro-enable-services='sudo systemctl enable jenkins; sudo systemctl enable apache2; sudo systemctl enable docker.socket; sudo systemctl enable docker; sudo systemctl enable mysql'

alias bro-restart-services='sudo systemctl restart jenkins; sudo systemctl restart apache2; sudo systemctl restart docker; sudo systemctl restart mysql'


alias bro-status-services='sudo systemctl status jenkins; sudo systemctl status apache2' 


alias bro-map='telnet mapscii.me'
alias bro-postgres='sudo -u postgres psql'


alias bro-show-wifi-password='sudo nmcli device wifi show'

alias bro-list-users="cut -d: -f1 /etc/passwd"

alias run-deepseek-1-5="ollama run deepseek-r1:1.5b" 
alias run-deepkseek-8="ollama run deepseek-r1:8b"

alias bro-release-upgrade="sudo do-release-upgrade"
alias bro-check-running="systemctl list-units --type=service --state=running"

# cpp coding shortcuts
alias cpp-test="g++ test.cpp -o out && ./out"
alias cpp-test1="g++ test1.cpp -o out && ./out"
alias cpp-test2="g++ test2.cpp -o out && ./out"


# git aliases
alias git_lol_msg='git commit -m "$(shuf -n1 funny-commit-messages.txt)"'
alias bro_git_push="git add . ; git_lol_msg ; git push"



# cpp runtime 

cpp-run() {
  g++ "$1" -o out && ./out && rm -f out
}

cpp-run1(){
  g++ -std=c++17 -O2 -Wall "$1" -o out && ./out && rm -f out 
}

cpp-run2(){
  g++ -std=c++17 -O2 -Wall "$1" -o out && /usr/bin/time -f "real\t%E\nuser\t%U sec\nsys\t\t%S sec" ./out 2> runtime.txt && rm -f out
}


#kubernetes shortcuts 

alias k="kubectl"
alias kgp="kubectl get pods"
alias kaf="kubectl apply -f"
alias kctx="kubectl config use-context"
alias kga="kubectl get all"
