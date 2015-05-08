git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias rep='find . -type f -print0 | xargs -0 sed -i -e'

# Aws script
alias ec2mdkn='python /home/aws/ec2_info.py /home/aws/access_key_mdkn'

# Show git branch name
PS1='[\u@\h \W$(__git_ps1 " \e[0;32m\]%s\e[0;37m\]")]\$ '

# Show git command suggest
source ~/dotfiles/bin/git-prompt.sh
source ~/dotfiles/bin/git-completion.bash
export HOMEBREW_CACHE=~/Library/Caches/Homebrew

#ruby
export PATH=/usr/local:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
