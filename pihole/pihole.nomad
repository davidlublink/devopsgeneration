job "pi-hole" {
  group "pi-hole" {
    disconnect {
      lost_after = "24h"
    }
    network {
      port "dns" {
        to           = 53
        static       = 5454
      }
      port "web" {
        to           = 80
      }
    }
    task "server" {
      driver = "docker"
      config {
        image      = "pihole/pihole:latest"
        entrypoint = ["/local/entrypoint.sh"]
        volumes    = ["local/custom.list:/etc/pihole/custom.list"]
        ports = [
          "dns", "web"
        ]
      }

      template {
        data  = <<EOH
#!/bin/bash
192.168.1.1 something.example.net
EOH
        perms = "444"

        destination = "local/custom.list"
      }

      template {
        data  = <<EOH
https://github.com/blocklistproject/Lists/blob/master/malware.txt
https://github.com/blocklistproject/Lists/blob/master/phishing.txt
EOH
        perms = "755"

        destination = "local/sources.list"
      }


      template {
        data  = <<EOH
#!/bin/bash
sqlite3 /etc/pihole/gravity.db "DELETE FROM adlist;"

for url in $(cat /local/sources.list)
     do
          echo "Adding $url to pihole!";
          sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('$url',1,'');"
     done

exec /s6-init
EOH
        perms = "755"

        destination = "local/entrypoint.sh"
      }

      env {
        DNSMASQ_LISTENING = "all"
        WEBPASSWORD       = "REPLACE_THIS_WITH_A_SECURE_PASSWORD"
      }
    }
  }
}
