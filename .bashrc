unset COMMAND_PROMPT

export PATH=~/bin:$PATH
export EMACS_PROFILE=kinesis 

# aliases and shortcuts
alias ls='ls -G'
alias grepi='grep -i'

alias l='lein'
alias lt='lein midje'
alias lr='lein repl'
alias ld='lein deps'

alias g='git'
alias gs='git status'
alias gl='git log'

alias ga='git add'
alias grm='git rm'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'

alias emacs-stuph='emacs ~/stuph/src/clj/stuph/repl.clj'

gca () {
  gc -a -m "$*"
}
gcp () {
  gca "$*"
  gp
}

