FROM anasty17/mltb:latest
#RUN apt update && apt upgrade -y
#RUN apt install wget unzip -y

RUN git clone https://github.com/rooted-cyber/mirror-leech-telegram-bol
RUN bash st.sh
