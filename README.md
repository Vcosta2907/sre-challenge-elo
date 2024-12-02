
## Bem-vindo

Estamos muito felizes por você estar pensando em se juntar a nós! Esse é um teste feito para conhecer um pouco mais de cada candidato. Não se trata de um teste objetivo, capaz de gerar uma nota ou uma taxa de acerto, mas sim de um estudo de caso com o propósito de conhecer os conhecimentos, experiências e modo de trabalhar de um candidato. Não experamos que tudo seja feito perfeitamente, pois valorizamos o seu tempo. Sinta-se livre para desenvolver sua solução para o problema proposto.

Este desafio está dividido em 4 partes:

1. Implementação: feito
2. Depuração : feito
3. Melhorias : feito
4. Perguntas

## Requisitos para o desafio

- Github Account

Se você encontrar possíveis melhorias a serem feitas neste desafio, fique a vontade para descreve-lás.

## Sobre o Desafio:

A ELO executa a maior parte de sua infraestrutura em Kubernetes. É um monte de microserviços conversando entre si e realizando diversas tarefas.

Nesse repositório, fornecemos a você:

- 'sre-challenge-app/': Uma aplicação com CRUD que armazena dados de funcionários em um Banco de dados MySQL 8.

### Configure o ambiente do desafio

Claro! Aqui está o texto completo e aprimorado, começando pela Parte 1:

---

### Parte 4 - Perguntas

**1. O que você faria para melhorar essa configuração e torná-la “pronta para produção”?**

Resposta: Eu implementaria práticas de segurança como o armazenamento das credenciais do MySQL (usuário e senha) em Secrets do Kubernetes. Além disso, configuraria alertas para monitoramento contínuo, otimizaria o uso de recursos e implementaria backups automáticos e estratégias de recuperação para garantir a disponibilidade e integridade dos dados.

**2. Existem 2 microsserviços mantidos por 2 equipes diferentes. Cada equipe deve ter acesso apenas ao seu serviço dentro do cluster. Como você abordaria isso?**

Resposta: Criaria namespaces separados para cada microserviço, garantindo que cada equipe tenha acesso apenas ao seu serviço. Utilizaria RBAC (Role-Based Access Control) para controlar permissões de acesso a cada namespace e recursos associados, garantindo que as equipes não tenham acesso ao serviço de outra.

**3. Como você evitaria que outros serviços em execução no cluster se comunicassem com o sre-challenge-app?**

Resposta: Utilizaria namespaces para isolar o **sre-challenge-app**, juntamente com políticas de rede (Network Policies) para restringir a comunicação entre os pods. Dessa forma, garantiria que apenas serviços autorizados dentro do mesmo namespace ou com permissões específicas pudessem interagir com a aplicação.

**4. Quais práticas você aplicaria para garantir a alta disponibilidade da aplicação no Kubernetes?**

Resposta: Implementaria múltiplas réplicas de pods para garantir a redundância, utilizando o Horizontal Pod Autoscaler (HPA) para ajustar automaticamente a quantidade de réplicas com base na carga. Configuraria liveness e readiness probes para monitorar a saúde dos pods e garantir que apenas os pods saudáveis atendam ao tráfego de requisições.

**5. Como você garantiria a segurança na comunicação entre os microserviços dentro do Kubernetes?**

Resposta: Para garantir a segurança da comunicação entre microserviços, implementaria políticas de rede (Network Policies) para limitar a comunicação entre os pods e utilizaria TLS (Transport Layer Security) para criptografar todas as conexões entre os microserviços. Além disso, usaria RBAC para controlar o acesso a recursos críticos e Secrets para armazenar credenciais de forma segura.

--- 

Agora o texto está completo, claro e conciso, com todas as perguntas e respostas estruturadas de maneira formal.

## O que é importante para nós?

É claro que esperamos que a solução funcione, mas também queremos saber como você trabalha e o que é importante para você como engenheiro. Portanto, fique à vontade para criar novos arquivos, refatorar, renomear, ...

Idealmente, gostaríamos de ver sua progressão através de commits, verbosidade em suas respostas e todos os requisitos atendidos. Não se esqueça de atualizar o README.md para explicar seu processo de pensamento.

## Entrega do desafio:

Ao terminar o desafio, convide o 'ELO-SRE' para contribuir com o seu repositório de desafios para que possamos fazer a avaliação. Boa Sorte

<p align="center">
  <img src="ca.jpg" alt="Challange accepted" />
</p>
