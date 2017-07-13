#!/bin/bash
echo "Updating the Website..."
echo ""
echo "Robinson is pulling the latest changes from github.com..."
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/boycott-america/.git/ --work-tree=/home/winterwell/boycott-america gc --prune=now'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/boycott-america/.git/ --work-tree=/home/winterwell/boycott-america pull origin master'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/boycott-america/.git/ --work-tree=/home/winterwell/boycott-america reset --hard FETCH_HEAD'
echo ""
echo "Robinson is converting markdown to HTML..."
ssh winterwell@robinson.soda.sh 'cd /home/winterwell/boycott-america/jerbil && java -cp jerbil.jar:lib/* Jerbil ../'
echo ""
echo "Robinson is optimising images..."
ssh winterwell@robinson.soda.sh 'jpegoptim /home/winterwell/boycott-america/webroot/img/*.jpg'
ssh winterwell@robinson.soda.sh 'optipng /home/winterwell/boycott-america/webroot/img/*.png'
echo ""
echo "website updated"
