wait-for-it
===========

A small debian-stretch based image to utilize [wait-for-it.sh](https://github.com/vishnubob/wait-for-it) as a docker image. Perfectly suited as init-container in container orchestration to wait for dependent services.

Usage
-----

Simple example:

```
docker run djbasster/wait-for-it www.google.com:80

Output:
wait-for-it: waiting 15 seconds for www.google.com:80
wait-for-it: www.google.com:80 is available after 1 seconds
```

Find more usage examples on the [vishnubob/wait-for-it source repo](https://github.com/vishnubob/wait-for-it#examples).
