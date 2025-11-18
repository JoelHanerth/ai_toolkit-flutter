# Chat AI Flutter – Exemplo com `flutter_ai_toolkit` + Google Gemini

Este projeto demonstra uma forma simples e prática de criar um **chat com Inteligência Artificial** usando:

* **Flutter AI Toolkit (`flutter_ai_toolkit`)**
* **Google Gemini API (`google_generative_ai`)**
* **Variáveis de ambiente com `flutter_dotenv`**

O chat suporta:

* Enviar mensagens de texto
* Enviar anexos
* Usar notas de voz
* UI completa gerada automaticamente

---

# 🚀 Funcionalidades

* Chat com IA totalmente funcional
* Interface pronta usando `LlmChatView`
* Compatível com Android, iOS, Web, Windows, Linux e macOS
* Carregamento seguro da API Key via `.env`
* Uso do modelo **Gemini 2.5 Flash**

---

# 📁 Estrutura do Projeto

O projeto já inclui:

* `pubspec.yaml` configurado
* `pubspec.lock` com versões exatas
* Pastas de cada plataforma (android/ios/web/windows/etc)
* `lib/` com o código do chat

Mesmo assim, quem clonar o projeto **precisará instalar as dependências**.
➡️ **Explicação detalhada abaixo.**

---

# 📦 Dependências

As dependências **já estão declaradas** no seu `pubspec.yaml`, então nada precisa ser alterado.

Mesmo assim, ao clonar o repositório, é necessário rodar:

```
flutter pub get
```
---

# 🔐 Configuração da API Key do Gemini

1. Entre em: [https://aistudio.google.com/](https://aistudio.google.com/)
2. Vá em **API Keys**
3. Gere uma API Key
4. Na raiz do projeto, crie o arquivo `.env`

```
GEMINI_API_KEY=SUA_CHAVE_AQUI
```



---

# ▶️ Como Rodar o Projeto

1. Certifique-se de que o arquivo `.env` exista na raiz.
2. No terminal:

```
flutter pub get
flutter run
```

Para rodar em dispositivo físico Android, ative a **Depuração USB**.


---

# 🧠 Dicas Úteis

* Para alterar o modelo do Gemini, basta mudar:

```dart
model: 'models/gemini-2.5-flash'
```
