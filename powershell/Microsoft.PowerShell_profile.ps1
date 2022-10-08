oh-my-posh init pwsh --config C:\Users\tutpa\AppData\Local\Programs\oh-my-posh\themes/bubbles.omp.json | Invoke-Expression

Import-Module PSFzf

# PSFzf Config

Import-Module PSFzf

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$env:FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

function ff{
   nvim $(fzf)
}

Clear
