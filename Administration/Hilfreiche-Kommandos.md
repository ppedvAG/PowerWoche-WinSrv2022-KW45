# Hilfreiche Powershell cmdlets und CMD Kommandows
## Tag1

---

Mit dem folgenden Befehl lässt sich der Server oder auch Client via PowerShell umbenennen und automatisch neustarten

```powershell
Rename-Computer -NewNAme Server1 -Restart**
```
---

Mit dem folgenden Befehl lässt sich in einer cmd oder einer PowerShell die DNS Registration manuell anstoßen.

**ipconfig /registerdns**

---
Mit dem folgenden PowerShell cmdlet ist es möglich das Gerät der Domäne zu joinen und gleichzeitig mit umzubennen der Neustart muss manuell ausgelöst werden.

```powershell
Add-Computer -DomainName ppedv.test -NewName Server2
```
---
Mit dem folgenden PowerShell cmdlet lässt sich eine Remote PowerShell Verbindung herstellen

```powershell
Enter-PSSession -ComputerName Server2.ppedv.test
```
---
Mit dem folgenden PowerShell cmdlet lässt sich der Datendedpluzierungsjob "Optimization" für das Volume F manuell starten. 
```powershell
Start-DedupJob -Volume F: -Type Optimization
```
--- 
Mit dem folgenden cmdlet lässt sich der Status aller eventuell vorhanden Dedupjobs abfragen
```powershell
Get-Dedupjob
```
---





