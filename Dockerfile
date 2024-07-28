FROM anasty17/mltb:latest
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot ap
COPY . .
RUN cp con* tok* ap
RUN cp tu /bin && chmod 777 /bin/tu
RUN cd ap && pip3 install --break-system-packages --no-cache-dir -r requirements.txt && pip3 install --break-system-packages yt-dlp==2023.10.13
RUN pip3 install --break-system-packages --no-cache-dir speedtest-cli
RUN cd ap && bash start.sh
RUN bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/10af5569ae3cb10af83390c8aeb4d145/raw/anastt)"
