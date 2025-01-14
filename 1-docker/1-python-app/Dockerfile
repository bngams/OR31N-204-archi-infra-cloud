# --- 
# Stratégie 1: Je pars d'une image "light OS" et j'installe python moi-même
# FROM ubuntu:latest  # /!\ moins pratique , moins de maitrise
# FROM ubuntu:24.04
 
# RUN wget aptdefintion
# RUN apt update -y && apt install python:3.15
# RUN user.../group
# RUN install pip ...

# --- 
# Stratégie 2: On part sur un environnement tout prêt :)

# FROM python3.12:slim-bookworm
FROM public.ecr.aws/docker/library/python:3.12.8-slim-bookworm

WORKDIR /app

# COPY <source> <dest_image>
COPY . .

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["python", "index.py"] 