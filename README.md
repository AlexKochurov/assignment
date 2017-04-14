# Assignment

## Notes

As for as I understood your task, Web Server doesn't touch the database, it only writes logs

It seems a little strange that parser has access to DB, and it has to send data to WEBrick.
So I'm in doubt if I understood it correctly

## To do

- **Parse csv and create convinient data structures** - *done*
- **Write logic for checking if import data belongs to DB already** - *done*
- **Send new data to WEBrick** - *done*
- **Configure WEBrick to get Post responces** - *done*

## Logs examples

```
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=4&apartment_id=1&external_id=t0173470&first_name=Emilia&last_name=O%27kon&email=emiliaokon%40gmail.com&phone_number=212-679-123
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=5&apartment_id=2&external_id=t0174040&first_name=Lambert&last_name=Gutowski&email=lambert.gutowski%40bing.com&phone_number=917-439-513
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/floors/1/apartments HTTP/1.1" 200 21 PARAMETERS=id=3&floor_id=1&external_id=103%23B1
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=6&apartment_id=3&external_id=t0172269&first_name=Clement&last_name=Keeling&email=clementkeeling%40gmail.com&phone_number=201-187-804
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/buildings/1/floors HTTP/1.1" 200 21 PARAMETERS=id=2&building_id=1&number=2
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/floors/2/apartments HTTP/1.1" 200 21 PARAMETERS=id=4&floor_id=2&external_id=201%23B1
127.0.0.1 - - [14/Apr/2017:05:31:16 MSK] "POST /v1/people HTTP/1.1" 200 21 PARAMETERS=id=7&apartment_id=4&external_id=t0174688&first_name=unknown&last_name=unknown&email=Webster.Moscioiski%40yahoo.com&phone_number=646-819-474
```
