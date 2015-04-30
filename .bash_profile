git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
PS1='——\n\[\033[36m\]\u\[\033[0m\]\[\033[32m\]\w\[\033[0m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias rep='find . -type f -print0 | xargs -0 sed -i -e'

# Aws script
alias ec2mdkn='python /home/aws/ec2_info.py /home/aws/access_key_mdkn'

# Show git branch name
PS1='[\u@\h \W$(__git_ps1 " \e[0;32m\]%s\e[0;37m\]")]\$ '
source ~/.git-completion.sh

# Show git command suggest
source ~/dotfiles/bin/git-completion.bash

