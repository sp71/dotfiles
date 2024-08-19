alias gaa="git add ."
alias gb="git branch"
alias gca!='git commit --verbose --all --amend'
alias gcam='git commit --all --message'
alias gco='git checkout'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdm="git diff main"
alias gds='git diff --staged'
alias gl='git pull'
alias glg='git log --stat'
alias gpf='git push -f'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias gsoft="git reset --soft HEAD^"
alias gsh="git show"
alias gst="git status"
alias gss="git status -s"
alias gum="git checkout main; git pull; git checkout -; git rebase main"
alias grs='git restore'
export GIT_EDITOR=vim

alias updateBazel="REPIN=1 bazel run @unpinned_maven//:pin"
alias services="cd /home/coder/lwcode/services"
alias invalidateCache="rm -rf /home/coder/.cache/JetBrains.backup; mv /home/coder/.cache/JetBrains /home/coder/.cache/JetBrains.backup"
alias updateIntelliJ="vim $(find ~/.cache/JetBrains -name idea64.vmoptions)"
PATH="$PATH:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"
