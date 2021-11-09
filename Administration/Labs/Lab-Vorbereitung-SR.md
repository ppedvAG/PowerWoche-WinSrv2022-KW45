# Vorbereitung Storage Replica

Stellen Sie sicher das die Server (Server2 und Server3 über folgende Konfiguration verfügen)

- Server2
    - IP Adresse: 192.168.10.2
    - Volume "Daten" F: abändern auf E: "Dateien"
    - zwei zusätzliche Festplatten / Volumes
      - F: "Daten" 50GB
      - G: "Log" 10 GB
    - Rollen / Features
      - DateiServer
      - Speicherreplikat
- Server3
  - IP Adresse: 192.168.10.3
  - zwei zusätzliche Festplatten / Volumes
      - F: "Daten" 50GB
      - G: "Log" 10 GB
    - Rollen / Features
      - DateiServer
      - Speicherreplikat