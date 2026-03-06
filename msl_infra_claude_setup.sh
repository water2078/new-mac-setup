#!/bin/bash
# MSL Infra Claude setup script

set -e

echo "=== Installing MSL Infra Claude Skills ==="
claude-templates skill feedstock install

echo "=== Installing MSL Infra Claude Plugins ==="
claude-templates plugin mia install

echo "=== Done! ==="
