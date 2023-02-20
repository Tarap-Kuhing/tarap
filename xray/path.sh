cat >/etc/xray/config.json <<-EOF
$domain
{
    handle_path /vless {
        reverse_proxy localhost:14016

    }
    import vmess
    handle_path /vmess {
        reverse_proxy localhost:23456
    }

    handle_path /trojan-ws {
        reverse_proxy localhost:25432
    }


    handle_path /ss-ws {
        reverse_proxy localhost:30300
    }

    handle {
        reverse_proxy https://$domain {
            trusted_proxies 0.0.0.0/0
            header_up Host {upstream_hostport}
        }
    }
}
EOF


cat >/etc/xray/config.json <<-EOF

@ws_path {
path /worryfree
path /vmess
path /xray
path /*

}


handle @ws_path {
    uri path_regexp /.* /
    reverse_proxy localhost:23456
}
EOF
