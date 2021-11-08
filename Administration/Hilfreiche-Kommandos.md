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



