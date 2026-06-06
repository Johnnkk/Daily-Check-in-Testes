# Pergunta 12 — Modelagem do Teste de Interface (2)

### Tela: Página de Login (Daily Check-in Sênior)
**Técnica Utilizada:** Tabela de Decisão  
**Cenário:** Verificar se botão "Entrar" está presente na tela

### Tabela de Decisão

| Condição / Regra | CT02 |
| :--- | :---: |
| **R1 — Carregar a tela de login** | S |
| **Resultado Esperado** | O elemento do botão "Entrar" deve estar visível e disponível para interação |

### Caso de Teste Derivado (CT02)

* **Ação:** Renderizar a tela de login.
* **Resultado Esperado:** O seletor do botão de login deve ser localizado com sucesso na interface.
