#!/bin/bash

name=${1?Error: Provide binary name!}
echo -e "Below is your shellcode: \n"
for i in $(objdump -d $name |grep "^ " |cut -f2); do echo -n '\x'$i; done; echo
echo -e "\nTesting for null bytes... \n"
for i in $(objdump -d $name |grep "^ " |cut -f2); do echo -n '\x'$i | grep "\x00"; done
