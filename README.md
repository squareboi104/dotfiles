# Dotfiles

To setup the dotfiles [GNU Stow](https://www.gnu.org/software/stow) is used.

### How to:

```bash
# Get my dotfiles.
cd ~
git clone https://github.com/squareboi104/dotfiles.git ~/.dotfiles
cd .dotfiles

# Symlink all of them.
rm LICENSE README.md
stow *

# Symlink only one, in this case, urxvt.
stow urxvt
```

### Tabliss how to:

- Stow it.

- Open your browser and install [tabliss](https://tabliss.io/)

- Tabliss settings > Scroll down > Import

- Go to .config/tabliss/ and select "tabliss.json"

- Tabliss settings > Scroll up > Choose files

- Go to .config/tabliss/ and select "02_pastel-blackBG_1920x1080.jpg"

### Disclamer:

Some things may look weird, like urxvt or alacritty, because they use Inconsolata Nerd Font and it needs to be installed to make them look as they should.
