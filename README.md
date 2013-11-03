myvim
=====

1. Install it with git clone:
```
git clone https://github.com/xfsnowind/myvim.git ~/.vim
```
Here for windows, ~ means the home folder of current user. Defaultly is `C:/User/yourusername`

2. Link to the configuration file:

For linux
```
ln -s ~/.vim/vimrc ~/.vimrc
```
For windows, copy vimrc to the gvim install folder and change the name to `_vimrc`

3. Install Vundle
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

4. Then, open vim and type :BundleInstall in the command
