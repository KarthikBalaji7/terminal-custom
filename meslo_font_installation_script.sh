#!bin/bash

if [ $(uname)="Linux" ]
then 
	echo "Running Linux"
	font_dir="$HOME/.local/share/fonts"
else 
	echo "Running Mac"
	font_dir="$HOME/Library/Fonts"
fi 

mkdir $font_dir

fontName="Meslo"

echo "Fonts directory created ::: $font_dir"

curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip -L -o $font_dir/$fontName.zip

unzip -q $font_dir/$fontName.zip -d $font_dir 

rm $font_dir/$fontName.zip