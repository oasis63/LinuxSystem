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
alias bro-stop-services='sudo systemctl stop jenkins; sudo systemctl stop apache2' 
alias bro-restart-services='sudo systemctl restart jenkins; sudo systemctl restart apache2'
alias bro-status-services='sudo systemctl status jenkins; sudo systemctl status apache2' 
alias bro-map='telnet mapscii.me'
alias bro-postgres='sudo -u postgres psql'
alias bro-show-wifi-password='sudo nmcli device wifi show'
alias bro-list-users="cut -d: -f1 /etc/passwd"
alias run-deepseek-1-5="ollama run deepseek-r1:1.5b" 
alias run-deepkseek-8="ollama run deepseek-r1:8b"
alias bro-release-upgrade="sudo do-release-upgrade"


# cpp coding shortcuts
alias cpp-test="g++ test.cpp -o out && ./out"
alias cpp-test1="g++ test1.cpp -o out && ./out"
alias cpp-test2="g++ test2.cpp -o out && ./out"

cpp-run() {
  g++ "$1" -o out && ./out && rm -f out
}


#kubernetes shortcuts 

alias k="kubectl"
alias kgp="kubectl get pods"
alias kaf="kubectl apply -f"
alias kctx="kubectl config use-context"
alias kga="kubectl get all"
