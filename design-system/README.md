# 🎨 Designer do Futuro - Design System

> Sistema de Design Completo adaptado do FEP para o projeto Designer do Futuro

**Versão:** 1.0 | **Data:** 2025-11-24 | **Autor:** INEMA Team

---

## 📋 Índice Rápido

- [Visão Geral](#visão-geral)
- [Identidade Visual](#identidade-visual)
- [Sistema de Cores](#sistema-de-cores)
- [Tipografia](#tipografia)
- [Espaçamento e Grid](#espaçamento-e-grid)
- [Componentes](#componentes)
- [Animações](#animações)
- [Responsividade](#responsividade)

---

## 🎯 Visão Geral

### Sobre o Projeto

**Designer do Futuro** é um projeto educacional com 4 trilhas progressivas de aprendizado focadas em criação de imagens com IA.

### Princípios de Design

1. ✅ **Clareza** - Interface limpa e fácil de navegar
2. ✅ **Progressão Visual** - Cada trilha tem sua identidade
3. ✅ **Acessibilidade** - WCAG 2.1 AA compliant
4. ✅ **Performance** - Animações suaves e carregamento rápido
5. ✅ **Mobile-First** - Design responsivo priorizando mobile

### Stack Tecnológico

```
Framework CSS:  Tailwind CSS 3.x (CDN)
JavaScript:     Vanilla JS
Fontes:         Google Fonts - Inter
Build:          HTML puro (GitHub Pages)
```

---

## 🎨 Identidade Visual

### Logo e Marca

```
Nome:     Designer do Futuro
Fonte:    Inter Bold (700)
Cor:      Indigo 600 (#6366F1)
Tagline:  "Criatividade Amplificada com IA"
```

### Sub-marcas

```
INEMA.CLUB
└─ Fonte: Inter SemiBold (600)
└─ Cor: Emerald 600 (#10B981)

INEMA.VIP
└─ Fonte: Inter SemiBold (600)
└─ Cor: Pink 600 (#EC4899)
```

### Personalidade

- **Tom**: Inspirador, acessível, moderno
- **Estilo**: Futurista, minimalista, profissional
- **Emoção**: Empoderamento, criatividade, transformação

---

## 🌈 Sistema de Cores

### Cores por Trilha (PRINCIPAL)

```css
/* 4 Trilhas de Aprendizado */
🌟 Iniciante:      #10B981  /* Verde Emerald 500 */
⚡ Técnico:        #3B82F6  /* Azul Blue 500 */
👑 Masterclass:    #8B5CF6  /* Roxo Purple 500 */
💼 Empreendedor:   #F59E0B  /* Âmbar 500 */
```

### Paleta Completa

```css
/* Marca Principal */
--primary:        #6366F1;  /* Indigo 500 - INEMA */
--primary-dark:   #4F46E5;  /* Indigo 600 - Hover */
--accent:         #EC4899;  /* Pink 500 - Destaques VIP */
--accent-dark:    #DB2777;  /* Pink 600 - Hover */

/* Trilhas */
--iniciante:      #10B981;  /* Emerald 500 */
--tecnico:        #3B82F6;  /* Blue 500 */
--masterclass:    #8B5CF6;  /* Purple 500 */
--empreendedor:   #F59E0B;  /* Amber 500 */

/* Escala de Cinzas */
--gray-50:        #F9FAFB;  /* Backgrounds leves */
--gray-100:       #F3F4F6;  /* Cards alternativos */
--gray-200:       #E5E7EB;  /* Bordas leves */
--gray-300:       #D1D5DB;  /* Bordas padrão */
--gray-400:       #9CA3AF;  /* Disabled */
--gray-600:       #4B5563;  /* Texto secundário */
--gray-700:       #374151;  /* Texto principal */
--gray-900:       #111827;  /* Títulos */
```

### Gradientes

```css
/* Hero Section */
background: linear-gradient(to bottom right, #6366F1, #4F46E5, #8B5CF6);
/* Indigo → Indigo Dark → Purple */

/* INEMA.VIP Badge */
background: linear-gradient(90deg, #EC4899, #8B5CF6);
/* Pink → Purple */

/* Cards de Trilha */
.iniciante-card {
  background: linear-gradient(to bottom right, #ECFDF5, #FFFFFF);
  /* from-emerald-50 to-white */
}

.tecnico-card {
  background: linear-gradient(to bottom right, #EFF6FF, #FFFFFF);
  /* from-blue-50 to-white */
}

.masterclass-card {
  background: linear-gradient(to bottom right, #FAF5FF, #FFFFFF);
  /* from-purple-50 to-white */
}

.empreendedor-card {
  background: linear-gradient(to bottom right, #FFFBEB, #FFFFFF);
  /* from-amber-50 to-white */
}
```

### Uso por Contexto

| Elemento | Iniciante | Técnico | Masterclass | Empreendedor |
|----------|-----------|---------|-------------|--------------|
| **Badge** | `bg-emerald-500` | `bg-blue-500` | `bg-purple-500` | `bg-amber-500` |
| **Borda** | `border-emerald-200` | `border-blue-200` | `border-purple-200` | `border-amber-200` |
| **Hover** | `border-emerald-400` | `border-blue-400` | `border-purple-400` | `border-amber-400` |
| **Botão** | `bg-emerald-500` | `bg-blue-500` | `bg-purple-500` | `bg-amber-500` |

---

## 📝 Tipografia

### Família de Fontes

```html
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
```

```css
body {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
```

### Hierarquia Tipográfica

#### Desktop
```css
H1 (Hero):      4rem (64px) | font-weight: 800
H2 (Section):   3rem (48px) | font-weight: 700
H3 (Card):      2rem (32px) | font-weight: 700
H4 (Subtitle):  1.5rem (24px) | font-weight: 600
Body Large:     1.25rem (20px) | font-weight: 400
Body:           1rem (16px) | font-weight: 400
Small:          0.875rem (14px) | font-weight: 400
```

#### Mobile (< 640px)
```css
H1:  2.5rem (40px)
H2:  2rem (32px)
H3:  1.5rem (24px)
```

### Classes Tailwind

```html
<!-- Hero Title -->
<h1 class="text-4xl sm:text-6xl font-extrabold">Designer do Futuro</h1>

<!-- Section Title -->
<h2 class="text-3xl sm:text-5xl font-bold">Trilhas de Aprendizado</h2>

<!-- Card Title -->
<h3 class="text-2xl sm:text-3xl font-bold">Trilha Iniciante</h3>

<!-- Body Text -->
<p class="text-base text-gray-700">Conteúdo aqui</p>

<!-- Secondary Text -->
<p class="text-sm text-gray-600">Informação secundária</p>
```

---

## 📏 Espaçamento e Grid

### Sistema de Espaçamento (Base: 1rem = 16px)

```
xs:   0.25rem   (4px)   - Espaços mínimos
sm:   0.5rem    (8px)   - Gaps pequenos
md:   1rem      (16px)  - Padrão
lg:   1.5rem    (24px)  - Entre elementos
xl:   2rem      (32px)  - Entre seções
2xl:  3rem      (48px)  - Padding de seções
3xl:  4rem      (64px)  - Espaços grandes
4xl:  5rem      (80px)  - Separadores
```

### Container Padrão

```html
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
  <!-- Conteúdo -->
</div>
```

**Comportamento:**
- Max width: 1280px
- Padding horizontal responsivo:
  - Mobile: 16px (`px-4`)
  - Tablet: 24px (`sm:px-6`)
  - Desktop: 32px (`lg:px-8`)

### Grids Responsivos

```html
<!-- 1 col → 4 cols (Trilhas) -->
<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">

<!-- 1 col → 3 cols -->
<div class="grid grid-cols-1 md:grid-cols-3 gap-6">

<!-- 1 col → 2 cols -->
<div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
```

### Breakpoints

```
sm:  640px   - Smartphone landscape
md:  768px   - Tablets
lg:  1024px  - Desktop
xl:  1280px  - Large desktop
2xl: 1536px  - Extra large
```

---

## 🧩 Componentes

### 1. Navegação

```html
<nav class="sticky top-0 z-50 bg-white/95 backdrop-blur-sm shadow-sm">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between items-center h-16">
      <!-- Logo -->
      <a href="/" class="flex items-center space-x-2">
        <span class="text-2xl font-bold text-indigo-600">Designer do Futuro</span>
      </a>

      <!-- Desktop Menu -->
      <div class="hidden md:flex space-x-8">
        <a href="#trilhas" class="text-gray-700 hover:text-indigo-600 transition-colors">Trilhas</a>
        <a href="#recursos" class="text-gray-700 hover:text-indigo-600 transition-colors">Recursos</a>
        <a href="#comunidade" class="text-gray-700 hover:text-indigo-600 transition-colors">Comunidade</a>
      </div>

      <!-- CTA -->
      <div class="hidden md:block">
        <a href="#começar" class="bg-indigo-600 text-white px-6 py-2 rounded-lg font-semibold hover:bg-indigo-700 transition-colors">
          Começar Grátis
        </a>
      </div>

      <!-- Mobile Menu Button -->
      <button class="md:hidden">
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
        </svg>
      </button>
    </div>
  </div>
</nav>
```

---

### 2. Hero Section

```html
<section class="relative bg-gradient-to-br from-indigo-600 via-indigo-700 to-purple-700 py-20 lg:py-32">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-white">
    <h1 class="text-4xl sm:text-6xl lg:text-7xl font-extrabold mb-6">
      Designer do Futuro
    </h1>
    <p class="text-xl sm:text-2xl lg:text-3xl mb-4 text-white/90 font-semibold">
      Criatividade Amplificada com IA
    </p>
    <p class="text-lg sm:text-xl mb-10 text-white/80 max-w-3xl mx-auto">
      Aprenda a criar imagens profissionais usando IA, mesmo sem experiência em design. 100% gratuito e open-source.
    </p>
    <div class="flex flex-col sm:flex-row gap-4 justify-center">
      <a href="#trilhas" class="bg-white text-indigo-600 px-8 py-4 rounded-lg font-bold text-lg hover:bg-gray-100 transition-all shadow-lg">
        Escolher Minha Trilha
      </a>
      <a href="#comunidade" class="bg-transparent border-2 border-white text-white px-8 py-4 rounded-lg font-bold text-lg hover:bg-white/10 transition-all">
        Conhecer a Comunidade
      </a>
    </div>
  </div>
</section>
```

---

### 3. Cards de Trilha

```html
<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">

  <!-- Card Iniciante -->
  <div class="bg-gradient-to-br from-emerald-50 to-white border-2 border-emerald-200 hover:border-emerald-400 rounded-2xl p-8 transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl">
    <div class="text-5xl mb-4">🌟</div>
    <h3 class="text-2xl font-bold text-gray-900 mb-2">Iniciante</h3>

    <!-- Badge -->
    <span class="inline-block px-3 py-1 bg-emerald-500 text-white text-sm font-semibold rounded-full mb-4">
      30 horas • 4 semanas
    </span>

    <p class="text-gray-600 mb-6">
      Para quem está começando do zero e quer criar imagens profissionais com IA.
    </p>

    <!-- Lista de tópicos -->
    <ul class="space-y-2 mb-6">
      <li class="flex items-start">
        <span class="text-emerald-500 mr-2 text-xl">✓</span>
        <span class="text-gray-700">Mentalidade do criador</span>
      </li>
      <li class="flex items-start">
        <span class="text-emerald-500 mr-2 text-xl">✓</span>
        <span class="text-gray-700">Fundamentos visuais</span>
      </li>
      <li class="flex items-start">
        <span class="text-emerald-500 mr-2 text-xl">✓</span>
        <span class="text-gray-700">Primeiros prompts</span>
      </li>
      <li class="flex items-start">
        <span class="text-emerald-500 mr-2 text-xl">✓</span>
        <span class="text-gray-700">Ferramentas gratuitas</span>
      </li>
    </ul>

    <!-- Botão -->
    <a href="./trilhas/iniciante.html" class="block w-full bg-emerald-500 text-white py-3 rounded-lg font-semibold text-center hover:bg-emerald-600 transition-colors">
      Começar Agora
    </a>
  </div>

  <!-- Repita para Técnico, Masterclass e Empreendedor com cores correspondentes -->

</div>
```

---

### 4. Botões

```html
<!-- Primário -->
<button class="bg-indigo-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-indigo-700 active:scale-98 transition-all">
  Começar Grátis
</button>

<!-- Secundário -->
<button class="bg-transparent border-2 border-indigo-600 text-indigo-600 px-6 py-3 rounded-lg font-semibold hover:bg-indigo-50 transition-all">
  Saiba Mais
</button>

<!-- Outline White (para fundos escuros) -->
<button class="bg-transparent border-2 border-white text-white px-6 py-3 rounded-lg font-semibold hover:bg-white/10 transition-all">
  Ver Comunidade
</button>
```

---

### 5. Badges

```html
<!-- Verde (Iniciante) -->
<span class="inline-block px-3 py-1 bg-emerald-500 text-white text-sm font-semibold rounded-full">
  30 horas
</span>

<!-- Azul (Técnico) -->
<span class="inline-block px-3 py-1 bg-blue-500 text-white text-sm font-semibold rounded-full">
  50 horas
</span>

<!-- Roxo (Masterclass) -->
<span class="inline-block px-3 py-1 bg-purple-500 text-white text-sm font-semibold rounded-full">
  70 horas
</span>

<!-- Âmbar (Empreendedor) -->
<span class="inline-block px-3 py-1 bg-amber-500 text-white text-sm font-semibold rounded-full">
  40 horas
</span>
```

---

### 6. Footer

```html
<footer class="bg-gray-900 text-white py-16">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid grid-cols-1 md:grid-cols-4 gap-8">

      <!-- Coluna 1 - Sobre -->
      <div>
        <h3 class="text-xl font-bold mb-4">Designer do Futuro</h3>
        <p class="text-gray-400 text-sm mb-4">
          Criatividade Amplificada com IA
        </p>
        <p class="text-gray-400 text-sm">
          Educação gratuita para todos.
        </p>
      </div>

      <!-- Coluna 2 - Trilhas -->
      <div>
        <h4 class="font-semibold mb-4">Trilhas</h4>
        <ul class="space-y-2 text-sm">
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Iniciante</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Técnico</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Masterclass</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Empreendedores</a></li>
        </ul>
      </div>

      <!-- Coluna 3 - Comunidade -->
      <div>
        <h4 class="font-semibold mb-4">Comunidade</h4>
        <ul class="space-y-2 text-sm">
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">INEMA.CLUB</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">INEMA.VIP</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Discord</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">GitHub</a></li>
        </ul>
      </div>

      <!-- Coluna 4 - Recursos -->
      <div>
        <h4 class="font-semibold mb-4">Recursos</h4>
        <ul class="space-y-2 text-sm">
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Biblioteca de Prompts</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Galeria</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">Checklists</a></li>
          <li><a href="#" class="text-gray-400 hover:text-white transition-colors">FAQ</a></li>
        </ul>
      </div>

    </div>

    <div class="border-t border-gray-800 mt-12 pt-8 text-center text-sm text-gray-400">
      <p>&copy; 2025 Designer do Futuro - INEMA. Todos os direitos reservados.</p>
      <p class="mt-2">Projeto open-source licenciado sob MIT</p>
    </div>
  </div>
</footer>
```

---

## ✨ Animações

### Princípios

1. Usar apenas `transform` e `opacity` (performance)
2. Duração: 0.2s-0.8s
3. Easing: `ease-out` ou `cubic-bezier(0.4, 0, 0.2, 1)`
4. Respeitar `prefers-reduced-motion`

### Animações Definidas

```css
/* Fade In */
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Card Hover */
.card {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.card:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 25px -5px rgba(0,0,0,0.1), 0 10px 10px -5px rgba(0,0,0,0.04);
}

/* Button Active */
button:active {
  transform: scale(0.98);
}

/* Reduced Motion */
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}
```

---

## 📱 Responsividade

### Estratégia: Mobile-First

```
Base (Mobile):     < 640px
Tablet (sm):       >= 640px
Desktop (md):      >= 768px
Large Desktop (lg): >= 1024px
XL Desktop (xl):   >= 1280px
```

### Padrões Comuns

```html
<!-- Texto responsivo -->
<h1 class="text-4xl lg:text-7xl">Título</h1>
<p class="text-base lg:text-xl">Texto</p>

<!-- Grid responsivo -->
<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">

<!-- Padding responsivo -->
<section class="py-12 lg:py-20">

<!-- Visibilidade -->
<div class="hidden md:block">Só desktop</div>
<div class="md:hidden">Só mobile</div>

<!-- Flex direction -->
<div class="flex flex-col sm:flex-row gap-4">
```

---

## ✅ Checklist de Implementação

- [ ] Incluir Tailwind CSS CDN
- [ ] Incluir Google Fonts (Inter)
- [ ] Usar cores corretas por trilha
- [ ] Aplicar espaçamento consistente
- [ ] Testar responsividade (mobile, tablet, desktop)
- [ ] Adicionar animações suaves
- [ ] Implementar acessibilidade (ARIA, focus)
- [ ] Testar com prefers-reduced-motion
- [ ] Validar contraste de cores (WCAG AA)

---

**Última atualização:** 2025-11-24
**Versão:** 1.0
**Autor:** INEMA Team
