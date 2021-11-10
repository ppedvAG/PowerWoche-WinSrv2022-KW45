# Wiederholung Tag 1

- Netzwerkgrundlagen
  - IPv4
  - Subnetting
  - NetzId
  - Broadcast
  - Subnetzmaske
  - ARP
- DNS
  - FQDN 
    - 2ndLevel.1stLevel.RootDomain
  - Ablauf einer Abfrage
    1. Localhost Check
    2. Host Datei (C:\windows\system32\drivers\etc\hosts)
    3. lokale DNS Client Cache
    4. Rekursive Abfrage an den eingetragenen DNS Server
  - Weiterleitungen
  - Root DNS Server
  - Alterung / Aufräumvorgang (DNS Server)
  - Forward (Name -> IP) / Reverse (IP -> Name) Lookup
  - DNS Records :
  
    | Rekord | Verwendung | 
    | ------ | ---------- | 
    | A-Record | Name zu IPv4 |  
    | AAAA-Record | NAme zu IPv6 | 
    | CNAME | Alias für bestehenden FQDN | 
    |MX-Record | Mail Exchanger (zuständiger E-Mail Server für die Domäne) | 
    | NSR | Name Server Records. zuständige DNS Server für Subdomänen | 
    | Text | für weitere Einträge  | 
  - TTL (Time To Live)
- DHCP
  - Dynamic Host Configuration Protkoll
  - verteilt an Clients IP Adressen dynamisch mit einer Lease
  - definiert wird der DHCP über seine Scopes / Bereiche
  - es ist möglich Reservierungen zu erstellen
  - MAC Filter
  - DHCP Failover
  - Clients versuchen Ihre Lease automatisch zu verlängern ab der Hälfte der Zeit
- Dateisystem
  - NTFS
    - beschränkt auf 256 TB
  - ReFS
    - beschränkt auf 4,7 ZB
  - MBR / GPT
  - Basis / dynamische Datenträger
- Grundlagen
  - Mindestanforderungen
  - Lizenzierung
  - Editionen
  