copy-script:
   cmd.run:
      - name: sudo curl -k "https://CloudProxyIPorFQDN/downloads/salt/download.sh" --output /tmp/download.sh
make-script-executable:
   cmd.run:
      - name: sudo chmod +x /tmp/download.sh
install-vrops-agent:
   cmd.run:
      - name: sudo /tmp/download.sh -o install -t <refreshToken> -d /tmp