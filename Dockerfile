FROM anasty17/mltb:latest
#RUN apt update && apt upgrade -y
#RUN apt install wget -y
RUN python3 -m venv mltbenv
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot ap
COPY . .
RUN cd ap && python3 -m venv mltbenv
RUN cp con* tok* ap
RUN cp tu /bin && chmod 777 /bin/tu
RUN cd ap && mltbenv/bi/pip3 install --break-system-packages --no-cache-dir -r requirements.txt
RUN mltbenv/bin/pip3 install --break-system-packages yt-dlp==2023.10.13 speedtest-cli
RUN printf "\n Bot start\n\n"
RUN cd ap && bash start.sh
