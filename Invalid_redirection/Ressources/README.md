Vulnerability 8
------

Found url on main page: `http://10.11.200.146/index.php?page=redirect&site=facebook`   
Replace `facebook` value of `site` attribute   

### Resolv ?
Never process user input when you can do without
Here the backend generate url following user click.
Link are exernal and must be static.
