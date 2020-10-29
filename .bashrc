orange=$(tput setaf 208)
blue=$(tput setaf 31)
white=$(tput setaf 15)
grey=$(tput setaf 244)
reset=$(tput sgr0)

PS1="\[${orange}\]\u"
PS1+="\[${grey}\] in"
PS1+="\[${blue}\] \w"
PS1+="\[${reset}\]\n\$ "
# Added by serverless binary installer
# export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
#[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true

complete -C '/Users/spatel/Library/Python/3.7/bin/aws_completer' aws
