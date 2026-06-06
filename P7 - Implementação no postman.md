# Pergunta 7 — Implementação no Postman (2)
### Endpoint: `POST http://localhost:3333/api/links/request`
**Configuração padrão da requisição:**
* **Headers:** `Content-Type: application/json` e Token ativo.

### Caso de Teste CT02 — ID de usuário inexistente
#### Body (Request)
```json
{
  "respondentId": "id_falso_nao_existe"
}
```
#### Testes (Postman — aba Scripts > Post-response)
```javascript
pm.test("Status code deve ser 404", function () {
    pm.response.to.have.status(404);
});
pm.test("Deve conter mensagem de erro apropriada", function () {
    var json = pm.response.json();
    pm.expect(json.error).to.eql("User not found");
});
```

#### Evidência de configuração
> <img width="1857" height="942" alt="Captura de tela 2026-06-06 102320" src="https://github.com/user-attachments/assets/8f8f1b4b-4ab9-4458-a093-0ce867cf0d72" />
