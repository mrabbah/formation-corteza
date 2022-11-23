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

# lors de debug d'un workflow regarder la ligne qui contienne : workflow.workflow

docker-compose logs -t --tail=100 -f server | grep workflow.workflow

# API de test : https://jsonplaceholder.typicode.com/users

var inputData;

var inputData;
try {
        inputData = JSON.parse(input);
} catch (e) {
        throw new Error('could not parse input payload: ' + e);
}

if (!inputData.name) {
        throw new Error('could not parse input payload, name missing');
}

return { name: inputData.name, email: inputData.id };

var inputData;

try {
        inputData = JSON.parse(readRequestBody(input));
} catch (e) {
        throw new Error('could not parse input payload: ' + e);
}

if (!inputData.name) {
        throw new Error('could not parse input payload, name missing');
}

return { name: inputData.name, email: inputData.id };
# indiquer outside url pour redireger http://localhost:8083/compose/ns/namespace_handle/pages/page_id

# pour accéder à une valuer recode.values.xyz
