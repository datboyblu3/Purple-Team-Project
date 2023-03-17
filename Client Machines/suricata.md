- Everything is configured correctly for inline mode, however it's not blocking the test alert
- Attempting to test with the following alert

**Alert on sid:2100498**
```JavaScript
drop ip any any -> any any (msg:"GPL ATTACK_RESPONSE id check returned root"; content:"uid=0|28|root|29|"; classtype:bad-unknown; sid:2100498; rev:7; metadata:created_at 2010_09_23, updated_at 2010_09_23;)
```

Execute the following commands
```JavaScript
sudo kill -usr2 $(pidof suricata)
```
```JavaScript
curl --max-time 5 http://testmynids.org/uid/index.html
```
Confirm the packets were dropped with the following:
```JavaScript
jq 'select(.alert .signature_id==2100498)' /var/log/suricata/eve.json
```

