total= `echo -e "5\n3\m" | jenkinscode.py`

if test $total -eq 3
then 
  exit 0
else
  exit 1
fi
