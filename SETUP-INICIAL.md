# 🚀 SETUP INICIAL - Instruções Para Você

## 📋 Checklist Rápido

Siga estes passos para colocar o projeto no ar:

---

## 1️⃣ Preparar o Repositório Local

No terminal, dentro do diretório `/home/nmaldaner/projetos/IMG`:

```bash
# Inicializar Git (se ainda não estiver)
git init

# Adicionar remote do seu repositório
git remote add origin https://github.com/inematds/FDF.git

# Verificar se o remote foi adicionado
git remote -v
```

---

## 2️⃣ Primeiro Commit

```bash
# Adicionar todos os arquivos
git add .

# Fazer commit inicial
git commit -m "feat: initial commit - Designer do Futuro v1.0

- Estrutura completa do projeto
- Trilha Iniciante completa (30h)
- Design system baseado no FEP
- Landing page responsiva
- Biblioteca de 40+ prompts
- Documentação INEMA.CLUB e INEMA.VIP
- Sistema de recursos educacionais
- Guias de contribuição e instalação"

# Criar branch main (se necessário)
git branch -M main

# Push para GitHub
git push -u origin main
```

---

## 3️⃣ Configurar GitHub Pages

### Opção A: Via Interface Web

1. Acesse: https://github.com/inematds/FDF/settings/pages

2. Configure:
   - **Source:** Deploy from a branch
   - **Branch:** main
   - **Folder:** /website
   - Clique em **Save**

3. Aguarde 2-3 minutos

4. Acesse: https://inematds.github.io/FDF/

### Opção B: Via GitHub CLI (se tiver instalado)

```bash
gh repo edit --enable-pages --pages-branch main --pages-path /website
```

---

## 4️⃣ Ajustar README.md (Atualizar Badges)

Edite o `README.md` principal e atualize os links:

```markdown
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue)](https://inematds.github.io/FDF/)
```

Commit e push:
```bash
git add README.md
git commit -m "docs: atualizar links do GitHub Pages"
git push
```

---

## 5️⃣ Configurar Topics no GitHub

1. Vá em: https://github.com/inematds/FDF
2. Clique em ⚙️ (engrenagem) ao lado de "About"
3. Adicione topics:
   - `education`
   - `ai`
   - `design`
   - `prompt-engineering`
   - `image-generation`
   - `free-course`
   - `open-source`
   - `portuguese`
   - `brazil`
   - `community`

4. Adicione descrição:
   ```
   🎨 Aprenda a criar imagens profissionais com IA. Curso 100% gratuito e open-source com 4 trilhas educacionais. By INEMA.CLUB
   ```

5. Website: `https://inematds.github.io/FDF/`

---

## 6️⃣ Habilitar Features do Repositório

Em https://github.com/inematds/FDF/settings:

### General
- [x] Issues
- [x] Preserve this repository (marque para segurança)
- [x] Discussions
- [x] Projects
- [x] Sponsorships (opcional)
- [ ] Wikis (deixe desmarcado, usamos docs/)

### Features
- [x] Restrict editing to collaborators only

---

## 7️⃣ Criar Arquivo de Configuração do GitHub Pages (Opcional)

Crie um arquivo `.github/workflows/deploy.yml` se quiser deploy automático mais customizado:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./website
```

Mas isso é **opcional** - o método básico já funciona perfeitamente!

---

## 8️⃣ Testar o Site

Após 2-3 minutos do deploy:

1. Acesse: **https://inematds.github.io/FDF/**

2. Teste:
   - [x] Landing page carrega
   - [x] Links funcionam
   - [x] Responsivo no mobile
   - [x] CSS carrega (Tailwind)
   - [x] JavaScript funciona (menu mobile)

3. Se algo não funcionar:
   - Verifique GitHub Actions: https://github.com/inematds/FDF/actions
   - Aguarde mais alguns minutos
   - Force refresh: Ctrl + Shift + R

---

## 9️⃣ Criar Primeira Release (Opcional mas Recomendado)

```bash
# Criar tag
git tag -a v1.0.0 -m "Release v1.0.0 - Trilha Iniciante Completa"

# Push da tag
git push origin v1.0.0
```

No GitHub:
1. Vá em: https://github.com/inematds/FDF/releases/new
2. Choose tag: v1.0.0
3. Release title: "Designer do Futuro v1.0.0 - Trilha Iniciante"
4. Descrição:
```markdown
## 🎉 Primeiro Release - Trilha Iniciante Completa!

### ✨ O que está incluído:

**Trilha Iniciante (30 horas):**
- ✅ Módulo 1: Mentalidade do Criador
- ✅ Módulo 2: Fundamentos Visuais Simplificados
- ✅ Módulo 3: Seus Primeiros Prompts
- ✅ Módulo 4: Ferramentas Acessíveis
- ✅ Projeto Final: Pack de 15 Imagens

**Recursos:**
- 📚 Biblioteca com 40+ prompts testados
- 🎨 Design System completo
- 🌐 Landing page profissional
- 📖 Documentação INEMA.CLUB e INEMA.VIP

### 🚀 Acesse:
https://inematds.github.io/FDF/

### 📝 Próximos Passos:
- Trilha Técnico (em desenvolvimento)
- Trilha Masterclass (planejado)
- Trilha Empreendedores (planejado)
- Expansão da biblioteca de prompts

100% Gratuito | Open-Source | MIT License
```

---

## 🔟 Configurar Proteção da Branch Main (Recomendado)

Para evitar commits acidentais direto na main:

1. Vá em: https://github.com/inematds/FDF/settings/branches
2. Clique em "Add rule"
3. Branch name pattern: `main`
4. Marque:
   - [x] Require a pull request before merging
   - [x] Require approvals: 1 (você mesmo)
5. Save changes

Agora você precisará:
1. Criar branch para mudanças: `git checkout -b feature/nova-coisa`
2. Fazer commit na branch
3. Push da branch
4. Abrir PR
5. Aprovar e merge

---

## ✅ CHECKLIST FINAL

Após seguir todos os passos:

- [ ] Código no GitHub
- [ ] GitHub Pages configurado e funcionando
- [ ] Site acessível em https://inematds.github.io/FDF/
- [ ] Topics configurados
- [ ] Description e website adicionados
- [ ] Issues/Discussions habilitados
- [ ] Release v1.0.0 criado
- [ ] Branch protection configurada (opcional)

---

## 📣 Divulgação

Agora que está no ar, você pode:

### Redes Sociais
```
🎨 Acabei de lançar o "Designer do Futuro"!

Curso COMPLETO e 100% GRATUITO para aprender a criar imagens profissionais com IA.

✅ 30h de conteúdo (Trilha Iniciante)
✅ 40+ prompts prontos
✅ Projeto prático final
✅ Certificado de conclusão
✅ Open-source

🔗 https://inematds.github.io/FDF/

#IA #Design #EducaçãoGratuita #OpenSource
```

### Email para Contatos
```
Assunto: 🎨 Novo curso gratuito: Designer do Futuro

Olá!

Acabei de lançar o "Designer do Futuro", um curso completo e 100% gratuito para ensinar criação de imagens profissionais usando Inteligência Artificial.

O projeto é open-source e inclui:
- 30 horas de conteúdo na Trilha Iniciante
- Biblioteca com 40+ prompts testados
- Projeto prático final
- Certificado de conclusão

Acesse: https://inematds.github.io/FDF/

O projeto é voltado para a democratização do acesso à criação visual através da IA.

Seria incrível ter seu feedback!

Abraço,
[Seu nome]
```

### LinkedIn
```
Orgulhoso de compartilhar o lançamento do "Designer do Futuro"! 🚀

Um projeto educacional open-source que ensina criação de imagens profissionais com IA.

🎯 100% gratuito
📚 30h de conteúdo (Trilha Iniciante completa)
🌍 Acessível a todos
💡 Foco em impacto social

O objetivo é democratizar o acesso à criação visual, mostrando que você não precisa ser designer para criar imagens incríveis - só precisa aprender a dirigir a IA.

Link: https://inematds.github.io/FDF/
GitHub: https://github.com/inematds/FDF

Feedbacks e contribuições são muito bem-vindos!

#IA #Educação #OpenSource #Design #InovacaoSocial
```

---

## 🆘 Ajuda

Se algo não funcionar:

1. **Verifique Actions:** https://github.com/inematds/FDF/actions
2. **Verifique Settings:** https://github.com/inematds/FDF/settings/pages
3. **Force refresh:** Ctrl+Shift+R no navegador
4. **Aguarde:** GitHub Pages pode levar até 10 minutos em casos raros

**Ainda com problemas?**
- Abra uma Issue no próprio repo
- Email: inematds@gmail.com

---

## 🎉 Parabéns!

Você criou e lançou um projeto educacional completo e profissional!

**Próximos passos naturais:**
1. Criar Discord INEMA.CLUB
2. Setup newsletter
3. Começar Trilha Técnico
4. Expandir biblioteca de prompts
5. Receber primeiros alunos!

---

<div align="center">

**🚀 Projeto no ar e pronto para impactar vidas!**

[Ver Site](https://inematds.github.io/FDF/) | [Ver no GitHub](https://github.com/inematds/FDF)

**Feito com ❤️ para democratizar a criação visual com IA**

</div>
