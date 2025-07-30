

gh_install caddyserver/caddy linux_amd64.tar.gz /tmp/caddy.tar.gz
mkdir -p /tmp/caddy
tar -xzf /tmp/caddy.tar.gz -C /tmp/caddy
sudo cp /tmp/caddy/caddy /bin

gh_install go-gost/gost linux_amd64.tar.gz /tmp/gost_linux.tar.gz
mkdir -p /tmp/gost && tar xf /tmp/gost_linux.tar.gz -C /tmp/gost
sudo mv /tmp/gost/gost /bin/


gh_install vi/websocat x86_64-unknown-linux-musl /tmp/websocat
chmod +x /tmp/websocat
sudo mv /tmp/websocat /bin/


gh_install cloudflare/cloudflared cloudflared-linux-amd64 /tmp/cloudflared
chmod +x /tmp/cloudflared
sudo mv /tmp/cloudflared /bin/