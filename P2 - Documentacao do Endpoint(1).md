# Pergunta 2 — Documentação do Endpoint (1)

### Endpoint: `POST /api/link`

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
  "respondentId": "cmpx7_idoso_123"
}
```

---

### Respostas

#### 201 — Convite de vínculo enviado com sucesso

```json
{
  "id": "link_id_998877",
  "caregiverId": "id-cuidador-logado",
  "respondentId": "cmpx7_idoso_123",
  "status": "PENDING",
  "createdAt": "2026-06-03T20:00:00.000Z"
}
```
