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
- Simply run the `install.sh` file
```sh
sh install.sh
```

### Unsupported OS's
- If you got `Unknown operating system, please build it by hand` error, then follow this guide
- **Do note that there is no windows support as of right now**
- Firstly, depending on your package manager, install lua from it if available

- Then change the name of the `ralsay.lua` file
```sh
mv src/ralsay.lua ./ralsay
```
- Make it executable
```sh
chmod +x ralsay
```
- Then finally copy the file to `/usr/local/bin` or a folder where you are able to execute files from
```sh
sudo cp ralsay /usr/local/bin/
```

// Original ASCII art is from [this Reddit post](https://www.reddit.com/r/ralsei/comments/qgdpv5/ascii_ralsei/)

## Wanna try out other tools like cowsay?
- Go ahead and try out other ones like [tetosay](https://github.com/makichiis/tetosay) with kasane teto or [catsay](https://github.com/sdx6/catsay) with cats :3! it'd be nice if you supported their projects as well!
