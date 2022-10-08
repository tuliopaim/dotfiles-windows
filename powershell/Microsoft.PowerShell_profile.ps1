oh-my-posh init pwsh --config C:\Users\tutpa\AppData\Local\Programs\oh-my-posh\themes/bubbles.omp.json | Invoke-Expression

# PSFzf Config

Import-Module PSFzf

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$env:FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

function ff{
   nvim $(fzf)
}

Clear
