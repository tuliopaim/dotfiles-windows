oh-my-posh init pwsh --config C:\Users\tutpa\AppData\Local\Programs\oh-my-posh\themes/bubbles.omp.json | Invoke-Expression

# 
# PSReadline

Import-Module PSReadline
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

#
# FZF
Import-Module PSFzf

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$env:FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# Aliases
# 

function ff{ nvim $(fzf) }

function ..{cd  ..}
function ....{cd  ..\..}
function ......{cd  ..\..\..}

function dev{cd C:\dev\}
function dotfiles{cd  C:\Users\tutpa\.dotfiles\}
function home{cd  C:\Users\tutpa\}

function gs{git status}


