for i in 0 1 2 3 4
do 
lsdev -l hdisk$i -a pv=yes 
done
lspv|awk '{print $1 }' |while read xx
do
rmdev -dl $xx -R
done
