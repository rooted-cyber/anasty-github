FROM anasty17/mltb:latest
RUN apt update && apt upgrade -y
RUN apt install wget -y
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot ap
COPY . .
RUN cp con* tok* ap
RUN cp tu /bin && chmod 777 /bin/tu
RUN cd ap && pip3 install --break-system-packages --no-cache-dir -r requirements.txt && pip3 install --break-system-packages yt-dlp==2023.10.13
RUN pip3 install --break-system-packages --no-cache-dir speedtest-cli crypto
RUN pip3 install --break-system-packages crypto
RUN printf "\n Bot start\n\n"
RUN cd ap && bash start.sh
