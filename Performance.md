# A Simple Performance Test

EventMachine works best when you have significant network latency.  A simple
test with database access over a coffeeshop WiFi:

    Without EventMachine:
    Requests per second:    4.39 [#/sec] (mean)

    With EventMachine:
    Requests per second:    21.31 [#/sec] (mean)


## More detail:

Without EventMachine, where database is across a slow network (aka coffeeshop WiFi)

> ab -n 1000 -c 50 http://localhost:3000/hello/world
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        thin
Server Hostname:        localhost
Server Port:            3000

Document Path:          /hello/world
Document Length:        18555 bytes

Concurrency Level:      50
Time taken for tests:   227.650 seconds
Complete requests:      1000
Failed requests:        0
Write errors:           0
Non-2xx responses:      1000
Total transferred:      18736000 bytes
HTML transferred:       18555000 bytes
Requests per second:    4.39 [#/sec] (mean)
Time per request:       11382.498 [ms] (mean)
Time per request:       227.650 [ms] (mean, across all concurrent requests)
Transfer rate:          80.37 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   0.5      0       4
Processing:  5106 11238 1249.1  11423   15745
Waiting:     2926 8992 1169.3   9039   13277
Total:       5109 11239 1248.9  11424   15746
WARNING: The median and mean for the initial connection time are not within a normal deviation
        These results are probably not that reliable.

Percentage of the requests served within a certain time (ms)
  50%  11424
  66%  11677
  75%  11847
  80%  11956
  90%  12470
  95%  12974
  98%  13660
  99%  15746
 100%  15746 (longest request)


With EventMachine, where database is across a slow network (aka coffeeshop WiFi)

> ab -n 1000 -c 50 http://localhost:3000/hello/world
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        thin
Server Hostname:        localhost
Server Port:            3000

Document Path:          /hello/world
Document Length:        2 bytes

Concurrency Level:      50
Time taken for tests:   46.931 seconds
Complete requests:      1000
Failed requests:        9
   (Connect: 0, Receive: 0, Length: 9, Exceptions: 0)
Write errors:           0
Total transferred:      242852 bytes
HTML transferred:       1982 bytes
Requests per second:    21.31 [#/sec] (mean)
Time per request:       2346.538 [ms] (mean)
Time per request:       46.931 [ms] (mean, across all concurrent requests)
Transfer rate:          5.05 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.2      0       2
Processing:   257 1882 4259.1    649   34518
Waiting:        0 1589 3095.6    626   27447
Total:        257 1882 4259.2    649   34519

Percentage of the requests served within a certain time (ms)
  50%    649
  66%    910
  75%   1285
  80%   1587
  90%   3322
  95%  10416
  98%  15107
  99%  27448
 100%  34519 (longest request)
