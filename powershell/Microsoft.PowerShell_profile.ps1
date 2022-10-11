oh-my-posh init pwsh --config C:\Users\tutpa\AppData\Local\Programs\oh-my-posh\themes/bubbles.omp.json | Invoke-Expression

# PSFzf Config

Import-Module PSFzf

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$env:FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

function ff{
   nvim $(fzf)
}

# Aliases

Function ChangeTo([string] $path) { Set-Location -Path $path }

Function ChangeToDev{ChangeTo('C:\dev\')}
Function ChangeToDotFiles{ChangeTo('C:\Users\tutpa\.dotfiles\')}
Function ChangeToParent{ChangeTo('..')}
Function ChangeToParent2{ChangeTo('..\..')}
Function ChangeToParent3{ChangeTo('..\..\..')}

Set-Alias -Name dev -Value ChangeToDev
Set-Alias -Name dotfiles -Value ChangeToDotFiles
Set-Alias -Name .. -Value ChangeToParent
Set-Alias -Name .... -Value ChangeToParent2
Set-Alias -Name ...... -Value ChangeToParent3

Clear
