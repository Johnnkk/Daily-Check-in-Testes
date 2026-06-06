# Pergunta 6 — Documentação do Endpoint (2)
### Endpoint: `POST /api/links/request`
**Descrição:** Validação do comportamento do sistema ao tentar vincular um usuário que não existe na base de dados.
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
  "respondentId": "id_falso_nao_existe"
}
```
---
### Respostas
#### 404 — Usuário idoso não encontrado
```json
{
  "error": "User not found",
  "message": "O ID do usuario respondente informado nao existe no sistema."
}
```
