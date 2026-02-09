# My MCP-Servers

## Build
```bash
docker build -t my-mcp-servers .
```

## Configuration
```json
"hoge": {
  "command": "opt/homebrew/bin/docker",
  "args": [
    "run",
    "-i",
    "--rm",
    "-e",
    "my-mcp-servers",
    "npm run foobar"
  ]
}
```
