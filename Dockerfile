# Usa un'immagine base leggera
FROM ubuntu:22.04

# Imposta la directory di lavoro
WORKDIR /app

# Installa dipendenze necessarie
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Espone la porta su cui Ollama lavora
EXPOSE 11434

# Comando per avviare Ollama
CMD ["/usr/local/bin/ollama", "serve"]
