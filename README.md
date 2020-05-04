# Docker-compose sample

will the IP change?

## Removing/recreating php container does not change its IP, nginx still finds it

terminal 1
```
make up
```

open a separate terminal and run `make curl_tail` to see the response from nginx including IP value from PHP

run `make php_rm` and curl responses will start to error.

then run `php_recreate`

nginx will now respond with a 200 and the value in the page for the IP is still the same.


```
curl_1   | HTTP/1.1 200 OK
curl_1   | Server: nginx/1.17.9
curl_1   | Date: Mon, 04 May 2020 01:50:40 GMT
curl_1   | Content-Type: text/html; charset=UTF-8
curl_1   | Transfer-Encoding: chunked
curl_1   | Connection: keep-alive
curl_1   | X-Powered-By: PHP/7.4.5
curl_1   | 
curl_1   | Server IP Address is: 192.168.80.4 

...
curl_1   | HTTP/1.1 504 Gateway Time-out
curl_1   | Server: nginx/1.17.9
curl_1   | Date: Mon, 04 May 2020 01:54:19 GMT
curl_1   | Content-Type: text/html
curl_1   | Content-Length: 167
curl_1   | Connection: keep-alive
curl_1   | 
curl_1   | <html>
curl_1   | <head><title>504 Gateway Time-out</title></head>
curl_1   | <body>
curl_1   | <center><h1>504 Gateway Time-out</h1></center>
curl_1   | <hr><center>nginx/1.17.9</center>
curl_1   | </body>
curl_1   | </html>


...

curl_1   | Server IP Address is: 192.168.80.4 
curl_1   | HTTP/1.1 200 OK
curl_1   | Server: nginx/1.17.9
curl_1   | Date: Mon, 04 May 2020 01:55:06 GMT
curl_1   | Content-Type: text/html; charset=UTF-8
curl_1   | Transfer-Encoding: chunked
curl_1   | Connection: keep-alive
curl_1   | X-Powered-By: PHP/7.4.5
curl_1   | 
curl_1   | Server IP Address is: 192.168.80.4 



```