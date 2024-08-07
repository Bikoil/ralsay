# Ralsay - A silly CLI tool like cowsay
Ever wondered what would happen if ralsei and cowsay merged together? no? well then you get ralsay
borrowed the idea from a friend in discord lol

## Preview
<img src="https://raw.githubusercontent.com/Bikoil/ralsay/main/Ralsay.png">

## Usage
```sh
ralsay "Message Goes Here"
```

## How to set up
- First, clone the repository
```sh
git clone https://github.com/Bikoil/ralsay
```
- Then `cd` into it
```sh
cd ralsay
```
- After this, there will be 2 sectors, follow according to your OS

### Arch linux
```sh
sudo pacman -U ralsay-1.0-1-any.pkg.tar.zst
```
- or
```sh
makepkg -si
```
- After this, you are free to remove the git folder
```sh
cd .. && rm -rf ralsay
```

### Unix/Other Linux Distros

- First, make sure lua is installed
```sh
# For debian
sudo apt install lua
# For fedora
sudo dnf install lua
# For MacOS
brew install lua
# For FreeBSD
sudo pkg install lua
```
- Then change the name of the `ralsay.lua` file
```sh
mv ralsay.lua ralsay
```
- Make it executable
```sh
chmod +x ralsay
```
- Then finally copy the file to `/usr/local/bin`
```sh
sudo cp ralsay /usr/local/bin/
```

