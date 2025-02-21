#!/bin/bash

# Funzione per mostrare l'uso dello script
show_help() {
  echo "Usage: $0 [dev|prod] [up|build|down]"
  echo "  dev: Ambiente di sviluppo"
  echo "  prod: Ambiente di produzione"
  echo "  up: Avvia i container"
  echo "  build: Costruisce i container"
  echo "  down: Ferma i container"
}

# Controllo se sono stati passati argomenti
if [ $# -ne 2 ]; then
  show_help
  exit 1
fi

# Ambienti e comandi
ENV=$1
CMD=$2

# Verifica dell'ambiente
if [[ "$ENV" != "dev" && "$ENV" != "prod" ]]; then
  echo "Errore: Ambiente non valido. Usa 'dev' o 'prod'."
  show_help
  exit 1
fi

# Controllo comando
if [[ "$CMD" != "up" && "$CMD" != "build" && "$CMD" != "down" ]]; then
  echo "Errore: Comando non valido. Usa 'up', 'build' o 'down'."
  show_help
  exit 1
fi

# Percorso del docker-compose in base all'ambiente
DOCKER_COMPOSE_PATH="docker/$ENV/docker-compose.$ENV.yml"
DOCKER_COMPOSE_BASE="docker/docker-compose.yml"

# Esegui il comando docker-compose
echo "Eseguendo '$CMD' su ambiente '$ENV'..."
docker-compose -f $DOCKER_COMPOSE_BASE -f $DOCKER_COMPOSE_PATH $CMD
