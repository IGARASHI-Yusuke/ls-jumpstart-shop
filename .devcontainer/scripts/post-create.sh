#!/bin/bash
# This script is executed after the dev container is created.
set -e

# Install Gemini CLI
if ! command -v gemini &> /dev/null; then
    echo "Gemini CLI not found. Installing..."
    npm install -g @google/gemini-cli
else
    echo "Gemini CLI is already installed."
fi

# Install Contentful CLI
if ! command -v contentful &> /dev/null; then
    echo "Contentful CLI not found. Installing..."
    npm install -g contentful-cli
else
    echo "Contentful CLI is already installed."
fi
