FROM theteamultroid/ultroid:main
RUN git clone https://github.com/rooted-cyber/mirror-leech-telegram-bot m
RUN cd m && ls && bash st.sh
