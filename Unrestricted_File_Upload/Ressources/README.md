Vilnerability 11
------

We need OWASP to use the vulnerability, we configure a server proxy on OWASP and we connect firefox to that proxy.   
In the page: `10.11.200.146/?page=upload` we need to upload bad file (test or whatever) but no img type.

We submit the form, we see the request on OWASP, 
the header look like:
```
-----------------------------114263174114554193821375375918
Content-Disposition: form-data; name="MAX_FILE_SIZE"


-----------------------------114263174114554193821375375918

Content-Disposition: form-data; name="uploaded"; filename="dirsearch.py"   
Content-Type: text/x-python
```

We need to change the `Content-Type` to `image/jpg`, for the submit to be validate.   
We send the modified request with OWASP.

### Resolv ?
- Blacklisting File Extensions
- Use getimagesize() (function will check if it is an image and will check "mime" to verify image type. )
