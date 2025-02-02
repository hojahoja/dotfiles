alias sudo='sudo ' # Trailing space enables aliases to work with sudo
alias ff='fastfetch'
alias ffs='fastfetch -c neofetch -l arch_small' # Defaut seting for small screens.
alias filez='du -sh * | sort -n'
alias vat='bat -pp'
# Arch specific:
# The next two work on arch because passwordless
# has been enabled in wheel group for them specficially.
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
#Quick alternative to pacdiff -f
alias pacfinder="sudo find /etc -name '*.pacnew' -o -name '*.pacsave'" 
alias orphans='pacman -Qtdq'
# My bootsplash setup hides critical level messages on thinkpad
# This is a quick way to check if there's anything but that one bugged message
alias bootcrit='sudo dmesg --level=crit+'
# Quick command for for a pretty list for 20 latest commits of VCS /etc Folder
alias etclog='sudo git -C /etc log -20 --pretty="format:%C(yellow)%h %Cblue%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s"'
# Arch specific end
