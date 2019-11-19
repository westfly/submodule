function update() {
   dir=$1
   for file in $(ls $dir)
   do
	if [[ -d $file ]];then
	    echo $file
	    cd $file
            git checkout master && git pull
	    cd -
	fi
   done
}
update $(pwd)
