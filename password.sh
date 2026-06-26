#!/bin/bash

upper=$(tr -dc 'A-Z' < /dev/urandom | head -c 1)
lower=$(tr -dc 'a-z' < /dev/urandom | head -c 1)
digit=$(tr -dc '0-9' < /dev/urandom| head -c 1)
special=$(tr -dc '!@#%^&*' < /dev/urandom | head -c 1)

rest=$(tr -dc 'A-Za-z0-9!@#$%^&*' < /dev/urandom | head -c 6)

password="$upper$lower$digit$special$rest"

password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')

echo "Generated password: $password"
