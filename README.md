# Assignment

## Info

```ruby
rake s         # starts the server
ruby app.rb    # application runs
rake dback     # to "rollback" db changes
```

## Example of logs

```
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=4&apartment_id=1&external_id=t0173470&first_name=Emilia&last_name=O%27kon&email=emiliaokon%40gmail.com&phone_number=212-679-123
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=5&apartment_id=2&external_id=t0174040&first_name=Lambert&last_name=Gutowski&email=lambert.gutowski%40bing.com&phone_number=917-439-513
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/floors/1/apartments HTTP/1.1" 200 21 PARAMETERS=id=3&floor_id=1&external_id=103%23B1
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=6&apartment_id=3&external_id=t0172269&first_name=Clement&last_name=Keeling&email=clementkeeling%40gmail.com&phone_number=201-187-804
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/buildings/1/floors HTTP/1.1" 200 21 PARAMETERS=id=2&building_id=1&number=2
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/floors/2/apartments HTTP/1.1" 200 21 PARAMETERS=id=4&floor_id=2&external_id=201%23B1
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=7&apartment_id=4&external_id=t0174688&first_name=unknown&last_name=unknown&email=Webster.Moscioiski%40yahoo.com&phone_number=646-819-474
```
