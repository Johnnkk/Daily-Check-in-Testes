# Pergunta 9 — Modelagem do Teste de Interface (1)

### Tela: Página de Login (Daily Check-in Sênior)
**Técnica Utilizada:** Tabela de Decisão  
**Cenário:** Verificar título da página de login

### Tabela de Decisão

| Condição / Regra | CT01 |
| :--- | :---: |
| **R1 — Acessar a URL da página de login** | S |
| **Resultado Esperado** | O título exibido na aba do navegador deve corresponder exatamente ao esperado |

### Caso de Teste Derivado (CT01)

* **Ação:** Abrir a rota `/login`.
* **Resultado Esperado:** O elemento `Title` da aba do navegador deve ser "Daily Check-in Sênior - Login".
