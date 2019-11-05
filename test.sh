sucet=$(echo -e "5\n3\n" | python jenkinscode.py)
echo $sucet

if test $sucet -eq 8
then 
  exit 0
else
  exit 1
fi
