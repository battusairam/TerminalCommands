for file in 'ls *.txt';
do
   folderName='echo $file | awk -F. '{print $1}'';
   #echo "checking for already existing directory started ";
   if [ -d $folderName ];
   then
       rm -r $folderName;
   fi
   #echo creating foler ${folderName};
   mkdir $folderName;
   #echo copying ${file} to ${folderName};
   cp $file $folderName;
done

