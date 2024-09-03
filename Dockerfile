FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:7860
EXPOSE 7860

RUN useradd -m user && chown -R user:user /home/user

USER user

ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]
