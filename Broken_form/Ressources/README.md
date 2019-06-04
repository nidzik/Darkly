Vulnerability 3:
------

On page `http://10.11.200.146/index.php?page=recover`   
Found a hidden field:
```
	<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
```
Set `name` to `admin` and `value` to `true`   
Submit form and found flag

### Resolv ?
Privileges right need to be stock in Database. Only the username must be sent from client.
Database check if username with a particular cookie ID is an admin or not.
