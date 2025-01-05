# Imp Syntax Highlighter for Vim/Neovim

This is a **syntax highlighter** for the **Imp language** used in the [Ivy project](https://github.com/dalisyron/Ivy).

## Installation

### Using vim-plug (Recommended)

If you are using [vim-plug](https://github.com/junegunn/vim-plug), you can install this plugin by adding the following to your `.vimrc` or `init.vim`:

```vim
Plug 'dalisyron/imp-vim-plugin'
```

Then run the following commands in Vim/Neovim:

```vim
:source $MYVIMRC
:PlugInstall
```

That’s it! The syntax highlighter will now be applied automatically to files with the `.imp` extension.

### Manual Installation

If you prefer to install the plugin manually, follow the steps below:

#### For Neovim:

1. Create the syntax directory (if it doesn’t already exist):

   ```bash
   mkdir -p ~/.config/nvim/syntax
   mkdir -p ~/.config/nvim/ftdetect
   ```

2. Clone the repository:

   ```bash
   git clone https://github.com/dalisyron/imp-vim-plugin.git
   ```

3. Copy the syntax and file detection files to the appropriate directories:

   ```bash
   cp imp-vim-plugin/syntax/imp.vim ~/.config/nvim/syntax/
   cp imp-vim-plugin/ftdetect/imp.vim ~/.config/nvim/ftdetect/
   ```

4. Restart Neovim, and the highlighter will be active for `.imp` files.

#### For Vim:

1. Create the syntax directory (if it doesn’t already exist):

   ```bash
   mkdir -p ~/.vim/syntax
   mkdir -p ~/.vim/ftdetect
   ```

2. Clone the repository:

   ```bash
   git clone https://github.com/dalisyron/imp-vim-plugin.git
   ```

3. Copy the syntax and file detection files to the appropriate directories:

   ```bash
   cp imp-vim-plugin/syntax/imp.vim ~/.vim/syntax/

   cp imp-vim-plugin/ftdetect/imp.vim ~/.vim/ftdetect/
   ```

4. Restart Vim, and the highlighter will be active for `.imp` files.

## Demo
![Screenshot 2025-01-05 at 12 37 11 AM](https://github.com/user-attachments/assets/2327702f-767c-442c-98a2-ab369f908028)

## License

This plugin is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


