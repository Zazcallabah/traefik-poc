# if everything works, the following two lines should output "http" and "tcp" respectively
curl localhost -H "Host: http.local"
curl localhost:81 -H "Host: tcp.local"
