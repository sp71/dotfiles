alias g='git'
alias ga='git add'
alias gaa="git add ."
alias gb="git branch"
alias gbm='git branch --move'
alias gca!='git commit --verbose --all --amend'
alias gcam='git commit --all --message'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdm="git diff main"
alias gds='git diff --staged'
alias gl='git pull'
alias glg='git log --stat'
alias gp='git push'
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
alias prv='gh pr view -w'
export GIT_EDITOR=vim
git config --global push.default simple
git config --global push.autosetupremote true
git config --global core.pager less
git config --global pager.branch false

function signIn() {
    echo "dockerCoderToken in local terminal and then paste here\n"
    aws sso login
    docker login -u satinderlace
    gh auth login -p https -h github.com -w
    tsh login --proxy=teleport.ops.lacework.engineering --auth okta
    brew install watchexec
    cd /home/coder/lwcode
    if [[ ! -d "./sgm" ]]; then
      gh repo clone lacework-dev/sgm
      cd sgm
      touch .env
      code -a .env
      cd ..
      echo "-----NOTE SGM-----ADD .env"
    fi
    if [[ ! -d "./services" ]]; then
      gh repo clone lacework/services
    fi
}

alias updateBazel="REPIN=1 bazel run @unpinned_maven//:pin"
alias invalidateCache="rm -rf /home/coder/.cache/JetBrains.backup; mv /home/coder/.cache/JetBrains /home/coder/.cache/JetBrains.backup"
alias updateIntelliJ="vim $(find ~/.cache/JetBrains -name idea64.vmoptions)"
alias docknuke='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker volume prune -f && docker network prune -f && docker rmi -f $(docker images -aq) && docker system prune -af --volumes'

alias services="cd /home/coder/lwcode/services"
alias rainbow="cd /home/coder/lwcode/rainbow"
alias sgm="cd /home/coder/lwcode/sgm"

alias runPreflight="services; ./tools/preflight -p devtest-admin"
alias watchQueryService="services; watchexec --watch lql-builders -w query -w query-builder-core --restart tools/run-query-service"
alias watchIris="services; watchexec --watch iris --restart tools/run-iris"
alias createCards="bazel run --test_env=TEST_OUTPUT_DIR="/home/coder/lwcode/services/query/src/test/check_cards/" //query/src/test/check_cards:sql-smoke-test  -- --matcher CIEM"

export AWS_PROFILE=devtest-def-eng

PATH="$PATH:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"
