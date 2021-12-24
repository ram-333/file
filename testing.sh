#! /bin/bash
function checkIt()
{
 ps auxw | grep $1 | grep -v grep > /dev/null

 if [ $? != 0 ]
 then
   echo $1"bad";
   sudo service tomcat8 start
   sudo service jenkins start

 else
   echo $1"good";
 fi;
}

checkIt "tomcat8";
checkIt "jenkins";
