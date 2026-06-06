# Pergunta 7 — Implementação no Postman (2)

### Endpoint: `POST http://localhost:3333/api/link`

**Configuração padrão da requisição:**
* **Headers:** `Content-Type: application/json` e Token ativo.

### Caso de Teste CT02 — ID de usuário inexistente

#### Body (Request)

```json
{
  "respondentId": "id_falso_nao_existe"
}
```

#### Testes (Postman — aba Tests)

```javascript
pm.test("Status code deve ser 404", function () {
    pm.response.to.have.status(404);
});

pm.test("Deve conter mensagem de erro apropriada", function () {
    var json = pm.response.json();
    pm.expect(json.error).to.eql("User not found");
});
```
