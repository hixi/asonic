FROM ghcr.io/astral-sh/uv:python3.13-bookworm
WORKDIR /app
COPY . /app
RUN uv sync --locked
