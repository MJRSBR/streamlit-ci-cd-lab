# 1. Imagem base oficial do Python
FROM python:3.11-slim

# 2. Variáveis de ambiente para Python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3. Diretório de trabalho dentro do container
WORKDIR /app

# 4. Copiar apenas o arquivo de dependências
COPY app/requirements.txt .

# 5. Instalar dependências Python
RUN pip install --no-cache-dir -r requirements.txt

# 6. Copiar o código da aplicação
COPY app/app.py .

# 7. Expor a porta padrão do Streamlit
EXPOSE 8501

# 8. Comando para iniciar o Streamlit
CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]
