# 1. Imagem base oficial do Python
FROM python:3.11-slim

# 2. Variáveis de ambiente para Python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3. Diretório de trabalho dentro do container
WORKDIR /app

# 4. Copiar arquivo de dependências
COPY app/requirements.txt /app/requirements.txt

# 5. Instalar dependências Python (modo otimizado)
RUN pip install --upgrade pip \
    && pip install --no-cache-dir --prefer-binary -r /app/requirements.txt

# 6. Copiar toda a aplicação preservando a estrutura
COPY app/ /app/app/

# 7. Expor a porta usada em produção
EXPOSE 8502

# 8. Comando EXPLÍCITO para iniciar o Streamlit
CMD ["streamlit", "run", "app/app.py", "--server.address=0.0.0.0", "--server.port=8502", "--server.headless=true", "--server.enableCORS=false", "--server.enableXsrfProtection=false"]
