FROM sandy1709/catuserbot:slim-buster

RUN git clone https://github.com/llawllet/DazaiPack.git /root/userbot

WORKDIR /root/userbot

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash","start"]
