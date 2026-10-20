FROM anasty17/mltb:latest
#RUN apt update && apt upgrade -y
#RUN apt install wget unzip -y

RUN git clone https:/j/github.com/rooted-cyber/mirror-leech-telegram-bot m
RUN bash m/st.sh
