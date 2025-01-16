# Création du Secret

- Option 1: utilisation de la commande `kubectl create secret generic` avec l'option `--from-file`

Utilisez la commande suivante afin de créer un fichier *mongo_url* contenant la chaine de connexion à la base de données:

```
echo -n "mongodb://k8sExercice:k8sExercice@db.techwhale.io:27017/message?ssl=true&authSource=admin" > mongo_url
```

Nous crééons ensuite le Secret à partir de ce fichier:

```
kubectl create secret generic mongo --from-file=mongo_url
```

- Option 2: utilisation de la commande `kubectl create secret generic` avec l'option `--from-literal`

La commande suivante permet de créer le Secret à partir de valeurs littérales

```
kubectl create secret generic mongo \
--from-literal=mongo_url='mongodb://k8sExercice:k8sExercice@db.techwhale.io:27017/message?ssl=true&authSource=admin'
```

- Option 3: utilisation d'un fichier de spécification

La première étape est d'encrypter en base64 la chaine de connexion

```
$ echo -n 'mongodb://k8sExercice:k8sExercice@db.techwhale.io:27017/message?ssl=true&authSource=admin' | base64

bW9uZ29kYjovL2s4c...yY2U9YWRtaW4=
```

Ensuite nous pouvons définir le fichier de spécification mongo-secret.yaml:

```
apiVersion: v1
kind: Secret
metadata:
  name: mongo
data:
  mongo_url: bW9uZ29kYjovL2s4c...yY2U9YWRtaW4=
```