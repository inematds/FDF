#!/bin/bash
# 🚀 Script de Deploy Rápido - Designer do Futuro
# Execute este arquivo ou copie os comandos um por um

echo "🎨 Designer do Futuro - Setup Inicial"
echo "======================================"
echo ""

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 1. Inicializar Git (se necessário)
echo -e "${BLUE}📦 Passo 1: Inicializando Git...${NC}"
if [ ! -d .git ]; then
    git init
    echo -e "${GREEN}✓ Git inicializado${NC}"
else
    echo -e "${YELLOW}⚠ Git já inicializado${NC}"
fi
echo ""

# 2. Configurar remote
echo -e "${BLUE}🔗 Passo 2: Configurando remote...${NC}"
git remote remove origin 2>/dev/null  # Remove se já existir
git remote add origin https://github.com/inematds/FDF.git
echo -e "${GREEN}✓ Remote configurado: https://github.com/inematds/FDF.git${NC}"
echo ""

# 3. Adicionar todos os arquivos
echo -e "${BLUE}📝 Passo 3: Adicionando arquivos...${NC}"
git add .
echo -e "${GREEN}✓ Todos os arquivos adicionados${NC}"
echo ""

# 4. Commit inicial
echo -e "${BLUE}💾 Passo 4: Criando commit inicial...${NC}"
git commit -m "feat: initial commit - Designer do Futuro v1.0

- Estrutura completa do projeto
- Trilha Iniciante completa (30h de conteúdo)
- Design system baseado no FEP
- Landing page HTML responsiva
- Biblioteca de 40+ prompts testados
- Documentação INEMA.CLUB e INEMA.VIP
- Sistema de recursos educacionais
- Guias de contribuição e instalação
- 100% gratuito e open-source

Inclui:
- 4 módulos educacionais completos
- Projeto final prático
- Website profissional com Tailwind CSS
- Documentação completa
- MIT License"

echo -e "${GREEN}✓ Commit criado${NC}"
echo ""

# 5. Criar/renomear branch para main
echo -e "${BLUE}🌿 Passo 5: Configurando branch main...${NC}"
git branch -M main
echo -e "${GREEN}✓ Branch configurada: main${NC}"
echo ""

# 6. Push para GitHub
echo -e "${BLUE}🚀 Passo 6: Enviando para GitHub...${NC}"
echo -e "${YELLOW}Você precisará autenticar com GitHub...${NC}"
git push -u origin main

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Push realizado com sucesso!${NC}"
    echo ""
    echo -e "${GREEN}🎉 SUCESSO! Projeto enviado para GitHub${NC}"
    echo ""
    echo "Próximos passos:"
    echo "1. Configure GitHub Pages em: https://github.com/inematds/FDF/settings/pages"
    echo "   - Source: Deploy from a branch"
    echo "   - Branch: main"
    echo "   - Folder: /website"
    echo ""
    echo "2. Aguarde 2-3 minutos e acesse:"
    echo "   https://inematds.github.io/FDF/"
    echo ""
    echo "3. Veja SETUP-INICIAL.md para próximos passos detalhados"
else
    echo -e "${YELLOW}⚠ Erro no push. Verifique sua autenticação com GitHub${NC}"
    echo ""
    echo "Você pode precisar:"
    echo "1. Configurar GitHub CLI (gh auth login)"
    echo "2. Ou usar Personal Access Token"
    echo "3. Ou SSH keys"
    echo ""
    echo "Execute manualmente: git push -u origin main"
fi

echo ""
echo "======================================"
echo "📖 Documentação útil:"
echo "  - SETUP-INICIAL.md: Guia passo a passo completo"
echo "  - docs/guia-instalacao.md: Deploy e desenvolvimento"
echo "  - PROJETO-COMPLETO.md: Resumo do projeto"
echo "======================================"
