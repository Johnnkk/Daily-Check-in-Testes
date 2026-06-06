# Pergunta 2 — Documentação do Endpoint (1)
### Endpoint: `POST /api/links/request`
**Descrição:** Cria e envia uma solicitação de vínculo de um perfil Cuidador para um perfil Idoso Respondente.
---
### Requisição
#### Headers
| Key           | Value              |
| :------------ | :----------------- |
| Content-Type  | application/json   |
| Authorization | Bearer <token_jwt> |
#### Body
```json
{
  "respondentId": "cmq2d94n10000ac23r6e3zhto"
}
```
---
### Respostas
#### 201 — Convite de vínculo enviado com sucesso
```json
{
  "id": "cmq2da2i90004ac23gk171cr1",
  "senderId": "cmq2c4iq10000rgmm20zz8git",
  "receiverId": "cmq2d94n10000ac23r6e3zhto",
  "status": "PENDING",
  "createdAt": "2026-06-06T13:06:28.017Z",
  "updatedAt": "2026-06-06T13:06:28.017Z"
}
```
