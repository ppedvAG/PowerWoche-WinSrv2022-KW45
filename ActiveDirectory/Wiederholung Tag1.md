# Wiederholung

**Welche FSMO Rollen gibt es und was ist deren Hauptaufgabe?**

- PDC-Emulator
  - Kennwortänderungen
  - Zeitserver
  - externe Vertrauenstellungen
  - Gruppenrichtlinien
  - **1 pro Domäne**
- Infrastrukturmaster
  - Cached  "Berechtigungen" / Authentifizierungen zwischen zwei Domänen
  - **1 pro Domäne**
- DomänenNamenMaster
  - wird benötigt für neue Domänen in Gesamtstruktur 
  - stellt sicher das keine DomänenName doppelt vorkommen in Gesamststruktur
  - **1 pro Gesamtstruktur**
- RID Master
  - generiert **R**elative**ID**entifier
  - aus RID wird in Kombination mit Domänenkennung die **SID**
  - **1 pro Domäne**
- Schemamaster
  - zuständig für das Schema
  - das Schema ist die Struktur des Verzeichnisses
    - welche Objekte gibts
    - welche Eigenschaften die Objekte
  - **1 pro Gesamtstruktur**

Die aktuelle Verteilung der Flexible Single Master Operators (Betriebsmaster) lässt sich über folgenden Befehl abfrage
```bat
netdom query fsmo
```



