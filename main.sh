#!/bin/bash
echo "######                                   ###         ##     "
echo "#                                      #  #          #     " 
echo "#                                      #             #     " 
echo "####  ######  ##  ##  ########          #   ##  ##   ####  "
echo "#      #   #   #   #   #  #  #           ##  #   #   #   # " 
echo "#      #   #   #   #   #  #  #  ######    #  #   #   #   # "
echo "#      #   #   #   #   #  #  #         #  #  #   #   #   # "
echo "###### ## ##   #####  ########         ###   #####   #### "
echo "author : Sylncereyes"
sleep 1
echo -n "Target: "
read dom
subfinder -silent -d $dom | httpx -silent -mc 200 url-active_$dom