# find .        	Busca en el directorio actual.
# -name "*"     	Busca todos los archivos
# -type         	de tipo 
# f             	file
# d             	directory
# |             	pipe
# sort -n -r    	ordena los archivos con opcion -n -r
# -maxdepth 1			files or directories of the current directory
# while read    	mientras lea todos los parametros que encuentra find, hace lo posterior.
# -f "$GITIGNORE"	verify if the file exit
# ! -f "GITIGNORE" verify if the file does not exist				

find . -name "*" -type d -maxdepth 1 | while read directoryName

do
	GITIGNOREFILE=/Users/carlossantiagocruz/SWIFT-PROGRAMMING/$directoryName/.gitignore

	if [ ! -f "$GITIGNOREFILE" ]
			then 
					echo "gitignore file does not exist in $directoryName"
					echo "Copying ..."
					# does whatever else you want
					cat /Users/carlossantiagocruz/SWIFT-PROGRAMMING/.gitignore | head -31 > /Users/carlossantiagocruz/SWIFT-PROGRAMMING/$irectoryName/.gitignore
	fi
done
