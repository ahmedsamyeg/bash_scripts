
# tout cols
# tout lines

yourfilenames=`ls -al ./*`
for eachfile in $yourfilenames
do
    echo $eachfile
done

# dir is a replacement to the linux standard ls and windows dir cmd command
# shows the list of files, permissions and settngs like, file, directory, 
# hidden, exeutable and the permissions as well as the file type icon 
# coloring the folders, executables, hidden only.
# file type icons to be displayed before the file name.
# order of files: # Type, name, size, attibutes, permissions, type in words

# should use paging by default without any argument, however disabling the paging should
# be by passing an argument. i.e dir -no-paging

# it should include the nerd fonts with the installation.

