# Pergunta 3 — Implementação no Postman (1)
### Endpoint: `POST http://localhost:3333/api/links/request`
**Configuração padrão da requisição:**
* **Headers:** `Content-Type: application/json` e `Authorization` preenchido.

### Caso de Teste CT01 — Enviar convite de vínculo
#### Body (Request)
```json
{
  "respondentId": "cmq2d94n10000ac23r6e3zhto"
}
```
#### Testes (Postman — aba Scripts > Post-response)
```javascript
pm.test("Status code deve ser 201", function () {
    pm.response.to.have.status(201);
});
pm.test("Status inicial do vinculo deve ser PENDING", function () {
    var json = pm.response.json();
    pm.expect(json.status).to.eql("PENDING");
});
```

#### Evidência de configuração
> <img width="1907" height="957" alt="Captura de tela 2026-06-06 100716" src="https://github.com/user-attachments/assets/e248a5d3-1ffd-4c14-a5e1-82521c42a0f2" />
