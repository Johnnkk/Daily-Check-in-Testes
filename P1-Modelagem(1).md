# Pergunta 1 — Modelagem do Teste de API (1)

### Endpoint: POST /api/link — Enviar convite de vínculo
**Técnica:** Particionamento de Equivalência  
**Campos analisados:** `respondentId` (Body) e `Authorization` (Header)

### Partições de Equivalência

| Índice | Partição | Descrição | Resultado Esperado |
| :--- | :--- | :--- | :--- |
| **P1** | Vínculo Válido | Envio de ID de usuário idoso existente e ativo no sistema | HTTP 201 — Convite criado com sucesso |

### Casos de Teste

#### CT01 — Partição P1: Vínculo Válido

* Payload enviado contendo um ID de idoso cadastrado e token de cuidador ativo.
* **Resultado esperado:** 201 Created.
