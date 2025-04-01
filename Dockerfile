FROM anasty17/mltb:latest
#RUN apt update && apt upgrade -y
#RUN apt install wget unzip -y
RUN python3 -m venv mltbenv
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
COPY . .
RUN dpkg -i *pip*
RUN cd m*t*t && python3 -m venv mltbenv
RUN cp con* tok* m*t*t
RUN cd m*t*t && mltbenv/bin/pip3 install --no-cache-dir -r requirements.txt
RUN cd m*t*t && mltbenv/bin/pip3 install  yt-dlp==2023.10.13 speedtest-cli config
RUN printf "\n Mirror Bot start\n\n"
RUN cd m*t*t && bash start.sh
