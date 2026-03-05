#!/bin/bash
# Claude Code setup script — installs all skills, agents, commands, plugins, and MCP servers
# Run after installing Claude Code itself

set -e

echo "=== Installing Claude Code Skills ==="
claude-templates skill skill-creator install
claude-templates skill google-sheets install
claude-templates skill google-docs install
claude-templates skill google-api-proxy install
claude-templates skill diff-search install
claude-templates skill calendar install
claude-templates skill text-to-google-doc install
claude-templates skill eats install
claude-templates skill workplace install
claude-templates skill paste install
claude-templates skill mast-debugging install

echo "=== Installing Claude Code Agents ==="
claude-templates agent code-reviewer install
claude-templates agent coder install

echo "=== Installing Claude Code Commands ==="
claude-templates command save install
claude-templates command restore install
claude-templates command learn install

echo "=== Installing Claude Code Plugins ==="
claude-templates plugin 10x-engineer install
claude-templates plugin ralph-wiggum install

echo "=== Installing Claude Code MCP Servers ==="
claude-templates mcp metamate install
claude-templates mcp workplace install
claude-templates mcp google-docs install
claude-templates mcp google-sheets install
claude-templates mcp gchat install
claude-templates mcp graphql-query install


echo "=== Done! ==="
echo "Installed: 11 skills, 2 agents, 3 commands, 1 plugin, 6 MCP servers"
echo "Note: Meta org plugins (meta, knowledge_search, code_provenance, llm-rules, trajectory) auto-install on first claude launch."
