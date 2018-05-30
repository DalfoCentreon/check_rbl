
 (c) Matteo Corti, ETH Zurich, 2007-2012

 (c) Matteo Corti, 2007-2018

  see AUTHORS for the complete list of contributors

# check_rbl

A Nagios plugin to check if an SMTP server is blacklisted

## Note

Some blacklister as Spamhaus ban DNS queries from public DNS
resolvers as Google resulting in no host being listed. If you are
experiencing problems with the plugin just try the DNS query with a
tool as nslookup to check your DNS configuration.

## Known bugs and problems

Needs ```Data::Validate::Domain``` 0.12 to handle fully qualified host names with an ending dot (e.g., "example.org.")

## Example

```
check_rbl -H example.org -t 60 -c 1 -w 1 -s cbl.anti-spam.org.cn -s cblplus.anti-spam.org.cn -s cblless.anti-spam.org.cn -s cdl.anti-spam.org.cn -s cbl.abuseat.org -s bl.deadbeef.com -s t1.dnsbl.net.au -s spamtrap.drbl.drand.net -s spamsources.fabel.dk -s 0spam.fusionzero.com -s mail-abuse.blacklist.jippg.org -s korea.services.net -s spamguard.leadmon.net -s ix.dnsbl.manitu.net -s relays.nether.net -s no-more-funn.moensted.dk -s psbl.surriel.com -s dyna.spamrats.com -s noptr.spamrats.com -s spam.spamrats.com -s dnsbl.sorbs.net -s dul.dnsbl.sorbs.net -s old.spam.dnsbl.sorbs.net -s problems.dnsbl.sorbs.net -s safe.dnsbl.sorbs.net -s spam.dnsbl.sorbs.net -s bl.spamcop.net -s pbl.spamhaus.org -s sbl.spamhaus.org -s xbl.spamhaus.org -s ubl.unsubscore.com -s dnsbl-1.uceprotect.net -s dnsbl-2.uceprotect.net -s dnsbl-3.uceprotect.net -s db.wpbl.info
```

## Bugs
Please report any bugs or feature requests through the
web interface at https://github.com/matteocorti/check_rbl/issues
