Before acting on my request, restate it in clear, grammatically correct English. Show the refined version using this format:

**Polished prompt:** <refined version of the user's request>

=======================================

<Your actual response here>

Note: A weekly summary file is maintained locally at `~/notes/weekly/` (named by Friday date, e.g. `2026-02-06.md`). Use this to help the user review or update their weekly summary.

# Devserver Environment

## Code Location
- Source code: `~/fbsource`

## Data Locations (WSFuse Mounts)
- `~/pci-wsf` — PCI region data
- `~/eag-wsf` — EAG region data
- `~/nao-wsf` — NAO region data
- `/mnt/wsfuse` — auto-mounted to the same region as the devserver

## Determining Devserver Region
Run `hostname` to determine region. Example: `devgpu028.nao3.facebook.com` → region is **nao**.

## Checking / Mounting WSFuse
- Check if mounted: `ls ~/pci-wsf` (or eag-wsf, nao-wsf)
- Unmount: `umount ~/pci-wsf`
- Mount commands:
  - **NAO**: `oilfs ws://ws.ai.nao0genai/genai_fair_llm ~/nao-wsf`
  - **EAG**: `oilfs ws://ws.ai.eag0genai/genai_fair_llm ~/eag-wsf`
  - **PCI** (special): `oilfs ws://ws.ai.pci0ai/genai_fair_llm ~/pci-wsf`
