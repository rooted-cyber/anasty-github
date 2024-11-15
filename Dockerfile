FROM anasty17/mltb:latest
RUN apt update && apt upgrade -y
RUN apt install wget unzip -y
RUN python3 -m venv mltbenv
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot ap
COPY . .
RUN cd ap && python3 -m venv mltbenv
RUN cp con* tok* ap
RUN unzip pip.zip -d pip
RUN cp tu pp /bin && chmod 777 /bin/tu /bin/pp
RUN pp i wget
RUN cd ap && mltbenv/bin/pip3 install --no-cache-dir -r requirements.txt
RUN cd ap && mltbenv/bin/pip3 install  yt-dlp==2023.10.13 speedtest-cli
RUN printf "\n Bot start\n\n"
RUN cd ap && bash start.sh
