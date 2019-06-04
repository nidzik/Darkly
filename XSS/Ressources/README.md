Vulnerability 5:
------
Documentation: [XSS](http://breakthesecurity.cysecurity.org/2012/02/complete-cross-site-scriptingxss-cheat-sheets-part-1.html)

Owasp list multiple pages with `XSS protection not enable`:
Go on page feedback: `http://10.11.200.146/?page=feedback`
Got a form.
Search on internet what is a XSS attack and how to do it.   
Enter string:
```
<script>alert("XSS")</script>
```
On the message field, submit and got the flag

### Resolv ?
Escaping all user input
Whitelisting input validation
