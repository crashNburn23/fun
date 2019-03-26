#!/bin/bash

name=${1?Error: Provide .nasm file name}
name2=${name::-4}o
name3=${name::-5}

nasm -felf64 $name -o $name2
ld $name2 -o $name3
