#!/usr/bin/env bash


echo "Bootstraping: Install ansible into virtualenv using system python"
echo "-----------------------------------------------------------------"

set -e
set -x

PYTHON_BIN="~/Library/Python/2.7/bin"
PATH="$PYTHON_BIN:$PATH"

/usr/bin/easy_install --user pip

pip install --upgrade pip

pip install --user virtualenv

virtualenv ansible-virtualenv

source ansible-virtualenv/bin/activate

pip install ansible


echo "Bootstraping: Install Ansible module for homebrew"
echo "-------------------------------------------------"

ansible-galaxy install geerlingguy.homebrew
