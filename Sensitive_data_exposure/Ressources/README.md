Vulnerability 9
------
Documentation: [Path traversal](https://www.owasp.org/index.php/Path_Traversal)

Try a path traversal to access a file out of website scope   
Path `/images/`, `/css/` and `/js/` are protected but `page` attribute use relative path ...   
Go on `http://10.11.200.146/?page=../../../../../../../../etc/passwd` and found flag

### Resolv ?
- Hardcode file extension
- It is assumed that a 'Document Root' fully qualified, normalized, path is known, and this string has a length N. Assume that no files outside this directory can be served.
