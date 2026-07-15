#!/bin/bash
echo "=== Helm Upgrade & Rollback ==="

echo "--- Chart installieren ---"
helm install novatech-api ./novatech-api -n novatech-dev -f values-dev.yaml

echo ""
echo "--- Upgrade: Neues Image-Tag ---"
helm upgrade novatech-api ./novatech-api -n novatech-dev \
  -f values-dev.yaml --set image.tag=1.26-alpine

echo ""
echo "--- Revisions-Verlauf ---"
helm history novatech-api -n novatech-dev

echo ""
echo "--- Rollback ---"
# TODO: Rollback auf Revision 1
# helm rollback novatech-api 1 -n novatech-dev

echo ""
echo "--- Prüfen ---"
helm get values novatech-api -n novatech-dev
