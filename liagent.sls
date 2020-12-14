copy-liagent-rpm:
   cmd.run:
      - name: sudo curl -k http://sqa-deploy-1.sqa.local/iso/Munish/LIAgent/VMware-Log-Insight-Agent-8.2.0-16776561.noarch_10.142.71.218.rpm --output /tmp/VMware-Log-Insight-Agent-8.2.0-16776561.noarch_10.142.71.218.rpm
install-liagent:
   cmd.run:
      - name: sudo rpm -i /tmp/VMware-Log-Insight-Agent-8.2.0-16776561.noarch_10.142.71.218.rpm
copy-liagentconfig:
   cmd.run:
      - name: sudo curl -k http://sqa-deploy-1.sqa.local/iso/Munish/LIAgent/liagent.ini --output /var/lib/loginsight-agent/liagent.ini
restart-liagentd:
   cmd.run:
      - name: sudo systemctl restart liagentd