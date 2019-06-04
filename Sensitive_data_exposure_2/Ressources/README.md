Vulnerability 1
------
Found a weird url path: `http://10.11.200.146/whatever/htpasswd`
File contain `root:8621ffdbc5698829397d97767ac13db3`

Try to decrypt md5 hash with [md5 decrypt](https://md5decrypt.net/)
Result: `Dragon`

Test login / password on every submit form
- http://10.11.200.146/
- http://10.11.200.146/admin/

Log on `http://10.11.200.146/admin/`

### Resolv ?
Do not let sensitive file in web root directory
And Admin login page can be on another url or protected with another method
