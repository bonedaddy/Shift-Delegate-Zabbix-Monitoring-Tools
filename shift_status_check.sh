#! /bin/bash
check=$(ps aux | grep -i nodejs | grep -i shift | grep -v grep  | head -n 1 | awk '{print $(NF-2)}')

# gets current shift status.
# 0 = offline
# 1 = online

if [[ "$check" == "/root/shift/app.js" ]]; then
        echo "1"
else
        echo "0"
fi