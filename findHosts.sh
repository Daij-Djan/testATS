grep -rhoE 'https?://.*?/' --exclude-dir='.*' "$1" | sed '/Binary file/d' | sort | uniq
