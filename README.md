# K-07: Helm Charts & Paketmanagement

## NovaTech-Szenario
Tom sitzt vor 43 YAML-Dateien. Markus (der Neue) soll die IoT-Plattform im Test-Cluster deployen und fragt: "In welcher Reihenfolge? Welche Werte muss ich für die Test-Umgebung ändern?" Tom führt Helm ein – den Paketmanager für Kubernetes.

## Lernziele
- Helm als Paketmanager für Kubernetes verstehen
- Helm Charts aus Repositories installieren und konfigurieren
- Eigene Helm Charts erstellen
- Values-Dateien für Umgebungstrennung nutzen

## Voraussetzungen
- minikube Cluster läuft
- Helm installiert ([helm.sh/docs/intro/install](https://helm.sh/docs/intro/install/))

## Aufgaben

### Aufgabe 1: PostgreSQL via Helm installieren
Arbeite `aufgaben/01_helm_install.sh` durch.

### Aufgabe 2: Eigenes Chart erstellen
Vervollständige das Chart in `aufgaben/novatech-api/`.

### Aufgabe 3: Umgebungstrennung
Erstelle Values-Dateien für Dev und Staging (`aufgaben/values-dev.yaml`, `aufgaben/values-staging.yaml`).

### Aufgabe 4: Upgrade und Rollback
Arbeite `aufgaben/04_upgrade_rollback.sh` durch.

## Lösung
Musterlösungen im Ordner `loesung/`.
