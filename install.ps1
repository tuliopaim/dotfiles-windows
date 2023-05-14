# SYMBOLIC LINKS

# NEOVIM
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Local\nvim\*" -Target "$HOME\.dotfiles\nvim\" 

# CS SNIPPETS
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Local\coc\ultisnips" -Target "$HOME\.dotfiles\coc\ultisnips" 

# POWERSHELL PROFILE
New-Item -ItemType SymbolicLink `
     -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" `
     -Target "$HOME\.dotfiles\powershell\Microsoft.PowerShell_profile.ps1" 

# VSVIM
New-Item -ItemType SymbolicLink  -Path "$HOME\_vsvimrc"  -Target "$HOME\.dotfiles\visual_studio\_vsvimrc" 

# IdeaVim
# New-Item -ItemType SymbolicLink  -Path "$HOME\.ideavimrc"  -Target "$HOME\.dotfiles\ideavim\.ideavimrc"

# GIT 
New-Item -ItemType SymbolicLink  -Path "$HOME\.gitconfig"  -Target "$HOME\.dotfiles\git\.gitconfig" 

