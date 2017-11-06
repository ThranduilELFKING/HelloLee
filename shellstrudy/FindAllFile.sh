###JennieLee
###2017-11-6
###背景：数据文件受损坏之后，会产生journal后缀的文件，一旦这个文件产生，可能会导致copy过来的新数据库文件也无法使用，造成数据库一直写入失败。
###     解决方法，就是把journal后缀的文件给删掉，然后copy新的为损坏的数据库文件过来，覆盖原本被破坏的数据库文件。
###功能：检查（遍历）filepath下，如果存在后缀为journal的文件，则删除。

#!/bin/sh

while true;do
	FilePath="/home/lee/nut/config/dbfile"
	for file in ${FilePath}/*
	do
		temp_file=`basename $file`
		echo $temp_file
		key_name="journal"
		if [[ $temp_file =~ $key_name ]]
		then
			echo $temp_file
			rm $FilePath/$temp_file
		fi
	done
	sleep 3
done

