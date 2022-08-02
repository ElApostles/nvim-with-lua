# Neovim from scratch
this is from Christian Chiarulli's nvim from scratch. I custom his settings and adapt to Seoul cluster environment.
you can see his video from [here](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)

## Try out this config

Make sure to remove or move your current `nvim` directory

```
cd ~
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
rm nvim-macos.tar.gz
```

```
git clone https://github.com/ElApostles/nvim-with-lua.git ~/.config/nvim
```

Before Run `nvim`, execute `auto_setup.sh`

After then, run `nvim` and wait for the plugins to be installed 

if you want to write `c` code, `vim somthing.c` and run `:LspInstall`
and install clangd.


# Notice
Now you can you lsp(language server protocol). it will do diagnostics, jump to and hover definition, and so on.

Please enjoy Nvim world.
If you have any question to use this settings include plugins, Please find hdoo in slack, or mail to me. 

Slack ID: hdoo in 42 network 

Email: tyeirdoo06@gmail.com

# License
The MIT License (MIT)

Copyright (c) 2022 Hyeokjin Doo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
