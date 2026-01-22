FROM ghcr.io/sparfenyuk/mcp-proxy:v0.11.0

# Install uv and uvx
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Install Node.js and npm (which includes npx)
RUN apk add --update --no-cache nodejs npm