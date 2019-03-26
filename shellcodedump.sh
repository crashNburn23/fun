#!/bin/bash

name=${1?Error: Provide binary name!}

for i in $(objdump -d $name |grep "^ " |cut -f2); do echo -n '\x'$i; done; echo
