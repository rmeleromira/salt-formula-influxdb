influxdb:
  client:
    enabled: true
    server:
      protocol: http
      host: 127.0.0.1
      port: 8086
      user: admin
      password: foobar
    user:
      user1:
        enabled: true
        admin: true
        name: username1
        password: secret
    database:
      mydb1:
        enabled: true
        name: mydb1
        retention_policy:
        - name: rp_db1
          duration: 30d
          replication: 1
          is_default: true
        - name: rp_db2
          duration: 365d
          replication: 1
      mydb2:
        enabled: true
        name: mydb2
    grant:
      username1_mydb1:
        enabled: true
        user: username1
        database: mydb1
        privilege: all
      username1_mydb2:
        enabled: true
        user: username1
        database: mydb2
        privilege: read
