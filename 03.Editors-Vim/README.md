# Notes
1. Use `:help {character}` to look up help info for {character},  
Example:  
`:help r` will tell you how to use **r** in normal mode.
2. How to paste from system clipboard into vim:  
First, check vim version:  
`$ vim --version | grep clipboard`.  
If you see **+clipboard** or **+xterm_clipboard**, you are good to go. If it's **-clipboard** and **-xterm_clipboard**, you will need to look for a version of Vim that was compiled with clipboard support. On Debian and Ubuntu, to obtain clipboard support install the packages **vim-gtk** or **vim-gnome** (not vim-tiny):  
`$ sudo apt install vim-gnome`  
Enter **"p+** in normal mode to paste from system clipboard to vim.
3. Check the `.vimrc` file in this folder, it may be a good substitution for your default `.vimrc`.
4.  See other useful tips in [course notes](https://missing.csail.mit.edu/2020/editors/).

# Exercises
Omitted

