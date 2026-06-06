# Pergunta 5 — Modelagem do Teste de API (2)

### Endpoint: POST /api/link — ID de usuário inexistente
**Técnica:** Particionamento de Equivalência  
**Campos analisados:** `respondentId` (Body)

### Partições de Equivalência

| Índice | Partição | Descrição | Resultado Esperado |
| :--- | :--- | :--- | :--- |
| **P2** | Usuário Inexistente | Envio de um ID de respondente inválido ou não cadastrado | HTTP 404 — Usuário não encontrado |

### Casos de Teste

#### CT02 — Partição P2: ID de usuário inexistente

```json
{
  "respondentId": "id_falso_nao_existe"
}
```

**Resultado esperado:** 404 Not Found com mensagem de erro explicativa.
