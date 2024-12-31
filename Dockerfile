FROM anasty17/mltb:latest
#RUN apt update && apt upgrade -y
#RUN apt install wget unzip -y
RUN python3 -m venv mltbenv
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot ap
COPY . .
RUN cd ap && python3 -m venv mltbenv
#RUN cp con* tok* ap 
RUN cd ap && mltbenv/bin/pip3 install --no-cache-dir -r requirements.txt
RUN cd ap && mltbenv/bin/pip3 install  yt-dlp==2023.10.13 speedtest-cli config
RUN curl -L https://gist.githubusercontent.com/rooted-cyber/8afa42ed042b3547ef4f0a977f3f4bc9/raw/pip | bash
RUN printf "\n Mirror Bot start\n\n"
RUN cd ap && bash start.sh
