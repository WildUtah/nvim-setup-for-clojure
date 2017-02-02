# nvim-setup-for-clojure
Some basic recommendations about how to setup Neovim or Vim to run nicely with Clojure, mostly with better syntax highlighting.

Good highlighting like this:

![example](https://github.com/WildUtah/nvim-setup-for-clojure/raw/master/example.png)

Not like the regular vim-clojure and Solarize:

![bad example](https://github.com/WildUtah/nvim-setup-for-clojure/raw/master/bad-example.png)

This is an add-on to the latest (2013) standard vim-clojure highlighting that comes with vim-polyglot or with some recent versions of the base install of Neovim and Vim.

You can just copy this repository right into your ~/.vim/ or ~/.config/nvim/ folders and the syntax highlighting will include alternating paren colors and different colors for {:maps :maps}, #{:sets}, [:vectors], and #(anonymous-functions %). I like this much better than rainbow parens. You'll want to choose the colors on your own in after/syntax/clojure.vim unless you're using the Solarize colorscheme. Maybe even then.

## Installation

With [pathogen.vim](https://github.com/tpope/vim-pathogen), 

    cd ~/.vim/bundle
    git clone git://github.com/WildUtah/nvim-setup-for-clojure

Or with [Dein](https://github.com/Shougo/dein.vim), add 

    call dein#add('WildUtah/nvim-setup-for-clojure')

to your Dein confiugration in .vimrc. This will also work in Neovim.
