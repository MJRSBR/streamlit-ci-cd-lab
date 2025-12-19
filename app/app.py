import streamlit as st

# =========================================================
# App Streamlit — Exemplo Tutorial
# Projeto: Plataforma de Pesquisa Segura
# Fase 7 — Streamlit + Cloudflare
# =========================================================

# Configuração básica da página
st.set_page_config(
    page_title="App Exemplo - Pesquisa em Saúde",
    layout="centered"
)

# Título principal
st.title("App Exemplo — Plataforma de Pesquisa")

# Texto introdutório
st.markdown(
    """
    Este é um **aplicativo de exemplo**, criado como **template** para a
    Plataforma de Pesquisa Segura.

    Ele **não contém dados reais** e **não executa análises**.
    """
)

# Caixa informativa
st.info(
    "Este app será publicado futuramente atrás de um Cloudflare Tunnel "
    "com autenticação Zero Trust."
)

# Mensagem final de validação
st.success("Estrutura básica do app Streamlit criada com sucesso.")
