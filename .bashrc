export PATH=~/bin:$PATH

# aliases and shortcuts
alias l='lein'

alias g='git'
alias gs='git status'
alias gl='git log'

alias grm='git rm'
alias gc='git commit'
alias gp='git push'

gca () {
  gc -a -m "$*"
}
gcp () {
  gca "$*"
  gp
}

unset PROMPT_COMMAND
