git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
PS1='——\n\[\033[36m\]\u\[\033[0m\]\[\033[32m\]\w\[\033[0m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '

source ~/dotfiles/bin/git-completion.bash
export HOMEBREW_CACHE=~/Library/Caches/Homebrew

#ruby
export PATH=/usr/local:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
