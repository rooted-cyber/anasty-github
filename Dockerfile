FROM anasty17/mltb:latest
RUN apt update && apt upgrade -y
RUN apt install git wget -y
RUN wget -O tu https://gist.githubusercontent.com/rooted-cyber/05ca0b015cdbdb3ac87bb9cdaed3da75/raw/tu
RUN sh -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/10af5569ae3cb10af83390c8aeb4d145/raw/anastt)"
