    #!/usr/bin/env bash

    echo "Starting server"
    cd /vagrant
    nohup node server.js &>/vagrant/node.log &
    echo "Server started"