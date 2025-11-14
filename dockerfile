# Étape 1 : image de base
FROM python:3.10-slim

# Étape 2 : dossier de travail dans le conteneur
WORKDIR /app

# Étape 3 : copier tous les fichiers Django dans le conteneur
COPY . .

# Étape 4 : installer Django
RUN pip install --upgrade pip && \
    pip install django

# Étape 5 : exposer le port du serveur Django
EXPOSE 8000

# Étape 6 : lancer Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
