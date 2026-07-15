#!/bin/bash
echo "=== Helm: PostgreSQL installieren ==="

echo "--- Schritt 1: Bitnami-Repository hinzufügen ---"
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

echo ""
echo "--- Schritt 2: Chart suchen ---"
helm search repo bitnami/postgresql

echo ""
echo "--- Schritt 3: PostgreSQL installieren ---"
# TODO: Installiere PostgreSQL mit Custom-Values
# helm install novatech-db bitnami/postgresql \
#   --namespace novatech-dev \
#   --set auth.postgresPassword=dev-password \
#   --set auth.database=novatech \
#   --set primary.persistence.size=5Gi

echo ""
echo "--- Schritt 4: Ergebnis prüfen ---"
helm list -n novatech-dev
kubectl get all -n novatech-dev -l app.kubernetes.io/instance=novatech-db

echo ""
echo "=== Fragen ==="
echo "1. Welche Kubernetes-Objekte hat Helm erstellt?"
echo "2. Wie findest du die verfügbaren Values eines Charts?"
echo "   helm show values bitnami/postgresql | head -50"
echo "3. Wie deinstallierst du das Release?"
echo "   helm uninstall novatech-db -n novatech-dev"
