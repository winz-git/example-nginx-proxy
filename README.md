# example-nginx-proxy

## Reference:
- https://www.singularaspect.com/use-nginx-proxy-and-letsencrypt-companion-to-host-multiple-websites/

## Once nginx-proxy is running, and want to run different virtual host
### run in console
```bash
make docker-gen
```

### and in another console, run the command below to see the generated default configuration.
```bash
docker exec nginx-proxy cat /etc/nginx/conf.d/default.bak
```


### Note:
 - need to edit hosts /etc/hosts to add
```bash
 -- 127.0.0.1 myadmin.site1.local
 -- 127.0.0.1 www.site1.local
 ----------------------------
 -- 127.0.0.1 myadmin.site2.local
 -- 127.0.0.1 www.site2.local
```
 
### to add a new virtual host
eg. site1

```shell
cd nginx-data/vhosts.d

sudo ln -sf ../site1/docker/nginx/config/default.conf www.site1.local
```