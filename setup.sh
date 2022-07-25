#!/bin/bash

echo "Reading user input"

read -p "Please enter your password: " user_pwd

echo "thanks for your password $user_pwd"


echo "Setup and configure server"
file_name=config.yaml
config_dir=$1
if [ -d "$config_dir" ]
then
	echo "reading config directory contents"
	config_files=$(ls "$config_dir")
else
	echo "the config directory not fouch creating one"
	mkdir "$config_dir"
	touch "$config_dir/config.sh"
fi
user_group=$2
if [ "$user_group" == "harsh"  ]
then
	echo "configure the server"
elif [ "$user_group" == "admin"  ]
then
	echo "administer the server"
else 
	echo "no permission to configure server. wrong user group"
fi
echo "using file $file_name to configure something"
echo "here are all configuration files: $config_files"
