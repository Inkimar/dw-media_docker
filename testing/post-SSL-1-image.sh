# test to submit three images with metadata to the server
#curl -L -H "Accept: application/json" -H "Content-type: application/json" -X POST -d @picapica-fly.vegadare-test.b64 http://api.nrm.se/MediaServerResteasy/media
curl -L -H "Accept: application/json" -H "Content-type: application/json" -X POST -d @picapica-fly.b64 https://api.nrm.se/MediaServerResteasy/media
