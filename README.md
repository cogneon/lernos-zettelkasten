## Dateistruktur
- /de ==> Generierte Leitfänden
- /de/src ==> Mark-Down Dateien, Bilder etc. aus denen die Leitpfänden generiert werden
- /Working Materials ==> Arbeitsmaterial das außerhalb des Lenrpfades verwendet wird, also nicht rein kommt sondern zur Plannung etc. dient. 
- /docs ==> generierter Ordner für die Website


## Bauen des Lernpfades
um den Lernpfad neu zu "erstellen" nach Änderungen wird /de/make.bat, für Windows, bzw. /de/make.sh, für Linux/MacOS, ausgeführt. Dazu muss die Toolchain auf dem Rechner eingerichtet sein. Ein Leitfaden dazu ist [hier](https://community.cogneon.de/t/von-0-auf-lernos-die-produktionsumgebung-fuer-lernos-leitfaeden-verstehen-losos20/2456) zu finden. 


## Änderungen
Um Änderungen in den Lernpfad einzufügen werden die .md Dateien in /de/src/ entsprechend editiert. Mit einem Texteditor bereits möglich. Programme wie Atom machen es bequemer. 
### Online
Änderungen können online direkt auf der Website gemacht werden
### offline - auf dem Rechner
Mit GitHub Desktop kann das Repository auf den eigenen Rechner synchronisiert werden. Dort werden dann Änderungen vorgenommen, ein commit gesetzt, mit push auf GitHub "geschoben" für alle sichtbar. 

## Commit-Message
Eine kurze Nachricht eingeben die den Kern der Änderung trifft. Ein guter Ansatz ist folgenden Satz weiter zu schreiben: "Dieser Commit fügt ... hinzu"

## Einrichten der Toolchain um den Lenrpfad zu _bauen_
Die Tools sind hier aufgelistet die zu installieren sind: https://meet.cogneon.de/pad/p/losos20s06
und zusätzlich die folgende Befehle in der Commandline (CMD) auszuführen
`pip install mkdocs-mermaid2-plugin`
`pip install mkdocs`
`pip install mkdocs-material`

Auf dieser Seite sind zwei Videos gelistet in der die Details besprochen werden. https://community.cogneon.de/t/von-0-auf-lernos-die-produktionsumgebung-fuer-lernos-leitfaeden-verstehen-losos20/2456

Es würde ausreichen die Tools zu installieren, in das /de wechseln und die make.bat bzw. make.sh auszuführen. 


## Anzeigen der Web-Version
Wenn die Toolchain auf dem rechner installiert ist, kann über `python -m mkdocs serve` im Verzeichnis lernos-zetteklasten-wip/de ein Webserver gestartet werden der dann über http://localhost:8000 aufgerufen werden kann.


![lernOS Logo](https://github.com/cogneon/lernos-core/blob/master/images/lernOS%20Logo/lernOS-logo-400px.png)

This lernOS Guide is part of [lernOS](https://lernos.org).
