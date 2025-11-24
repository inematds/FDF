# 🚀 Guia de Instalação e Deploy

## Para Desenvolvedores e Contribuidores

---

## 📋 Pré-requisitos

- Git instalado
- Conta no GitHub
- Editor de código (VS Code recomendado)
- Navegador moderno

---

## 🔧 Setup Local

### 1. Clone o Repositório

```bash
git clone https://github.com/inematds/FDF.git
cd FDF
```

### 2. Estrutura do Projeto

O projeto é baseado em **arquivos estáticos** (HTML, CSS via Tailwind CDN, JavaScript vanilla).

Não requer build process ou instalação de dependências!

### 3. Visualizar Localmente

**Opção 1: Abrir diretamente no navegador**
```bash
# Abra o arquivo HTML diretamente
open website/index.html
# ou no Windows
start website/index.html
```

**Opção 2: Usar servidor local (recomendado)**

Com Python:
```bash
cd website
python -m http.server 8000
# Acesse: http://localhost:8000
```

Com Node.js (npx):
```bash
cd website
npx serve
```

Com VS Code:
- Instale extensão "Live Server"
- Clique direito em `index.html` → "Open with Live Server"

---

## 🌐 Deploy no GitHub Pages

### Setup Automático

1. **Configure o repositório:**

```bash
# Já está configurado! Apenas faça:
git checkout -b main  # ou use a branch principal que preferir
git add .
git commit -m "Initial commit - Designer do Futuro v1.0"
git push origin main
```

2. **Ative GitHub Pages:**

- Vá em: `https://github.com/inematds/FDF/settings/pages`
- Source: `Deploy from a branch`
- Branch: `main` (ou sua branch principal)
- Folder: `/website`
- Clique em **Save**

3. **Aguarde o deploy:**

GitHub Pages levará 1-3 minutos para fazer o deploy.

Seu site estará disponível em:
```
https://inematds.github.io/FDF/
```

### Domínio Customizado (Opcional)

Se você tiver um domínio (exemplo: `inema.club`):

1. Configure DNS do seu domínio:
   - Tipo: `CNAME`
   - Nome: `designer-do-futuro` (ou `@` para apex)
   - Valor: `inematds.github.io`

2. No GitHub Pages settings:
   - Custom domain: `designer-do-futuro.inema.club`
   - Marque "Enforce HTTPS"

---

## 📝 Configurações Recomendadas

### GitHub Repository Settings

**General:**
- ✅ Issues: Enabled
- ✅ Discussions: Enabled
- ✅ Projects: Enabled
- Template repository: Off

**Branches:**
- Default branch: `main`
- Branch protection rules (opcional):
  - Require pull request reviews
  - Require status checks

**Topics (adicione):**
- `education`
- `ai`
- `design`
- `prompts`
- `image-generation`
- `free-course`
- `open-source`
- `portuguese`

### README.md no GitHub

O README principal já está otimizado com:
- Badges (License, GitHub Pages)
- Descrição clara
- Links para trilhas
- Instruções de como começar
- Como contribuir

---

## 🔄 Workflow de Desenvolvimento

### Para Você (Mantenedor)

```bash
# 1. Criar nova feature
git checkout -b feature/nova-funcionalidade

# 2. Fazer alterações
# ... edite arquivos ...

# 3. Commit
git add .
git commit -m "feat: adiciona nova funcionalidade X"

# 4. Push
git push origin feature/nova-funcionalidade

# 5. Abrir Pull Request no GitHub
# 6. Review e merge para main
# 7. GitHub Pages atualiza automaticamente!
```

### Para Contribuidores

Ver [contributing.md](./contributing.md) para instruções completas.

---

## 📦 Estrutura de Deploy

```
GitHub Pages irá servir de /website/:

website/
├── index.html              → https://inematds.github.io/FDF/
├── trilhas/
│   └── iniciante.html      → https://inematds.github.io/FDF/trilhas/iniciante.html
├── css/                    → Seus estilos customizados
├── js/                     → Scripts adicionais
└── assets/                 → Imagens, ícones, etc.
```

**Importante:** Links no HTML devem ser relativos ou absolutos para GitHub Pages.

---

## 🧪 Testes Antes do Deploy

### Checklist de QA

Antes de fazer deploy de mudanças:

- [ ] Testar em múltiplos navegadores (Chrome, Firefox, Safari, Edge)
- [ ] Testar responsividade (mobile, tablet, desktop)
- [ ] Validar HTML: https://validator.w3.org/
- [ ] Testar todos os links internos
- [ ] Verificar imagens carregam
- [ ] Testar JavaScript (console sem erros)
- [ ] Verificar acessibilidade (Lighthouse, WAVE)
- [ ] Testar velocidade de carregamento

---

## 🐛 Troubleshooting

### Problema: GitHub Pages não atualiza

**Soluções:**
1. Aguarde 1-5 minutos (pode levar um tempo)
2. Force refresh: `Ctrl + Shift + R` (ou `Cmd + Shift + R` no Mac)
3. Limpe cache do navegador
4. Verifique Actions do GitHub para erros no deploy

### Problema: Links quebrados no GitHub Pages

**Causa:** Links absolutos começando com `/` não funcionam em subdomínios.

**Solução:** Use caminhos relativos ou configure base URL.

```html
<!-- ❌ Errado (não funciona em GitHub Pages) -->
<a href="/trilhas/iniciante.html">

<!-- ✅ Correto -->
<a href="./trilhas/iniciante.html">
```

### Problema: CSS não carrega

**Causa:** Tailwind CDN pode ter delay ou estar bloqueado.

**Solução:**
1. Verifique conexão com internet
2. Abra DevTools → Network → veja se CDN carrega
3. Considere fazer download local do Tailwind se necessário

---

## 📊 Analytics (Opcional)

Para rastrear visitantes, adicione Google Analytics ou similar:

```html
<!-- No <head> de index.html -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

---

## 🔐 Segurança

### Boas Práticas

- ✅ Não commite secrets ou API keys
- ✅ Use `.gitignore` para arquivos sensíveis
- ✅ HTTPS sempre (GitHub Pages já fornece)
- ✅ Valide inputs se adicionar forms
- ✅ Mantenha dependências atualizadas

---

## 📞 Suporte

**Problemas com deploy ou desenvolvimento?**

- 📧 Email: inematds@gmail.com
- 🐙 GitHub Issues: https://github.com/inematds/FDF/issues
- 💬 Discord: discord.gg/inema-club (quando disponível)

---

## 🎉 Sucesso!

Se tudo deu certo, seu site está no ar em:

**https://inematds.github.io/FDF/**

Compartilhe o link e comece a receber alunos! 🚀

---

<div align="center">

**Feito com ❤️ pela comunidade INEMA**

[Ver Site](https://inematds.github.io/FDF/) | [Reportar Problema](https://github.com/inematds/FDF/issues)

</div>
