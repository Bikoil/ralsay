#!/bin/sh

# Function to build the package
build_pkg() {
    echo "-> Changing file name..."
    mv ralsay.lua ralsay
    echo "-> Making file executable..."
    chmod +x ralsay
    echo "-> Copying file to '/usr/local/bin'... Requires SUDO permissions"
    sudo cp ralsay /usr/local/bin
    echo "-! Ralsay package installed! Thank you for installing my package."
}

# Function to check the OS
check_os() {
    if [ "$(uname)" = "FreeBSD" ]; then
        # Check for FreeBSD
        echo "-> Installing lua53 via pkg..."
        sudo pkg install lua53
        echo "-> Creating symlink for lua53"
        sudo ln -s /usr/local/bin/lua53 /usr/local/bin/lua
        build_pkg
    elif [ "$(uname)" = "Darwin" ]; then
        # Check for macOS
        echo "-> Installing lua via brew..."
        brew install lua
        build_pkg
    elif [ -f /etc/os-release ]; then
        # Check for Fedora or Debian-based systems
        . /etc/os-release
        case "$ID" in
            fedora)
                echo "-> Installing lua via dnf..."
                sudo dnf install lua
                build_pkg
                ;;
            debian)
                echo "-> Installing lua via apt..."
                sudo apt install lua
                build_pkg
                ;;
            ubuntu)
                echo "-> Installing lua via apt..."
                sudo apt install lua
                build_pkg
                ;;
            *)
                echo "-! Unknown Linux distribution, Building PKG..."
                build_pkg
                ;;
        esac
    else
        echo "-! Unknown operating system, Running POSIX sh build PKG..."
	build_pkg
    fi
}

# Call the function
check_os
