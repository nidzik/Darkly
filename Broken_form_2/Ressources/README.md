Vulnerability 6
------

On page `http://10.11.200.146/?page=survey`:   
Edit value of the fisrt 10th element of the select list, enter `10000000000`
Now you need to submit the form. Select the 10th element of the select list.   

### Resolv ?
Alway check value sent by client before process them.
If client send anormal / invalid value, always reject the form.
