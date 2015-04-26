unset COMMAND_PROMPT

export PATH=~/bin:$PATH
export EMACS_PROFILE=mac

# aliases and shortcuts
alias l='lein'

alias g='git'
alias gs='git status'
alias gl='git log'

alias ga='git add'
alias grm='git rm'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'

gca () {
  gc -a -m "$*"
}
gcp () {
  gca "$*"
  gp
}

