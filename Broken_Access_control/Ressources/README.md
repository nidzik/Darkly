Vulnerability 2
------

In code source of page : http://10.11.200.146/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
Found some comment :
```
You must coming from : "https://www.nsa.gov/" to go to the next step
```
and
```
Let's use this browser : "ft_bornToSec". It will help you a lot.
```

So we need to edit HTTP get request of the current page.   
We set `Referer` to `https://www.nsa.gov/`   
And `User-Agent` to `ft_bornToSec`

### How to resolv ?
Do not let comment in HTML code there are public.
Nobody let comment for helping hacker ...
