# Linux-To-PC
My Linux scripts!!! 

spinny

#!/bin/bash

# Install jp2a and img2txt if they are not already installed
sudo apt-get install jp2a
sudo apt-get install libcaca-utils

# Download the cat image
wget https://cdn.pixabay.com/photo/2018/03/26/20/13/cat-3261420_960_720.jpg -O cat.jpg

# Convert the cat image to ASCII art using jp2a
jp2a --width=60 cat.jpg > cat.txt

# Create a spinning animation of the cat using img2txt
for i in {1..10}; do
  img2txt -W 60 -f ansi cat.txt | sed 's/\[0m/\[1;32m/g' | sed 's/\[30m/\[1;32m/g' | sed 's/\[1;37m/\[1;32m/g'
  sleep 0.1
  clear
  img2txt -W 60 -f ansi cat.txt | sed 's/\[0m/\[1;33m/g' | sed 's/\[30m/\[1;33m/g' | sed 's/\[1;37m/\[1;33m/g'
  sleep 0.1
  clear
  img2txt -W 60 -f ansi cat.txt | sed 's/\[0m/\[1;31m/g' | sed 's/\[30m/\[1;31m/g' | sed 's/\[1;37m/\[1;31m/g'
  sleep 0.1
  clear
done

# Remove the temporary files
rm cat.jpg
rm cat.txt
