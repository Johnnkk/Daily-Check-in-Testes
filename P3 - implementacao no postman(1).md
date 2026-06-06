# Pergunta 3 — Implementação no Postman (1)

### Endpoint: `POST http://localhost:3333/api/link`

**Configuração padrão da requisição:**
* **Headers:** `Content-Type: application/json` e `Authorization` preenchido.

### Caso de Teste CT01 — Enviar convite de vínculo

#### Body (Request)

```json
{
  "respondentId": "cmpx7_idoso_123"
}
```

#### Testes (Postman — aba Tests)

```javascript
pm.test("Status code deve ser 201", function () {
    pm.response.to.have.status(201);
});

pm.test("Status inicial do vinculo deve ser PENDING", function () {
    var json = pm.response.json();
    pm.expect(json.status).to.eql("PENDING");
});
```
