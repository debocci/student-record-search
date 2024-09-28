echo "This demo checks if a student's file has been uploaded online"
remark ()
{
echo "Thanks"
echo "Next student, please"
}
ops ()
{
echo "1: View/Edit"
echo "2: Display"
read number 
case $number in 
1) 
vi $FName
;;
2)
cat $FName
esac
}
echo "Please input the syudent's full name"
read FName 
if [ -f $FName ]
then 
echo "Student's file exist"
echo "Which operation would you like to perform on the file?"
ops
remark
else
echo "Student's file does not exist. Do you want to create file?"
fi
read yesorno 
if [ $yesorno == Yes ]
then 
echo "Creating file, please wait..."
touch $FName
echo "confirm file creation from list below"
ls -i
echo "Which operation would you like to perform?"
ops 
remark
else
remark
fi






