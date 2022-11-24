# récupérer tp2
git stash && git pull

# Accéder à tp2
cd tp2

# lancer l'application
docker-compose up -d

# accès à l'appli http://localhost:8083
# login : admin@admin.com
# pwd: Azerty$123

# command suivi des logs:

docker-compose logs -t --tail=100 -f server

# Au niveau du dossier corteza-ext/scripts
# vous pouvez ajouter une dépendance nodejs soit en exécutant
yarn add mydependecy
# exemple: 
yarn add kafkajs

# soit en ajoutant la dépendance dans le fichier package.json et par la suite en exécutant:
yarn install

# au niveau du borker kafka vous pouvez écouter sur un topic
kafka-verifiable-consumer --broker-list kafka-1:9092 --topic test-topic --group-id consumer-01
kafka-console-consumer  --bootstrap-server localhost:9092  --topic test-topic  --from-beginning