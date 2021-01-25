function clearConsole {
  Clear-Host
}

function gitStatus {
  git status
}

function gitLog {
  git log --decorate --oneline --graph
}

function gitCommit([string]$CommitName) {
  git add .
  git commit -m "$CommitName"
}

function gitCheckout([string]$CheckoutBranch) {
  git checkout "$CheckoutBranch"
}

function gitCheckoutNew([string]$CheckoutBranch) {
  git checkout -b "$CheckoutBranch"
}

function gitResetSoft([string]$HeadCount = 1) {
  git reset --soft HEAD~"$HeadCount"
}

function gitResetHard([string]$HeadCount = 1) {
  git reset --hard HEAD~"$HeadCount"
}

function gitPullDevelop {
  git pull --rebase origin develop
}

function gitRebaseContinue {
  git add .
  git rebase --continue
}

function gitPull([string]$Branch) {
  git pull --rebase origin "$Branch"
}

function gitStashApply {
  git stash apply
}

function gitPushHead {
  git push origin HEAD
}

New-Alias c clearConsole

New-Alias gist gitStatus
New-Alias gilo gitLog
New-Alias gico gitCommit
New-Alias gich gitCheckout
New-Alias gichn gitCheckoutNew
New-Alias girs gitResetSoft
New-Alias girh gitResetHard
New-Alias gipd gitPullDevelop
New-Alias girc gitRebaseContinue
New-Alias gipu gitPull
New-Alias gisa gitStashApply
New-Alias giup gitPushHead
