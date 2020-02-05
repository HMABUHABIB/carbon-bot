ARG RASA_SDK_IMAGE
FROM $RASA_SDK_IMAGE

WORKDIR /app

COPY action-server-requirements.txt ./
COPY actions.py ./actions/actions.py

RUN pip install -r action-server-requirements.txt
