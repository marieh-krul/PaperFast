# PaperFast
O PaperFast é um sistema desenvolvido para digitalizar e agilizar o processo de liberação de alunos nas escolas, eliminando a necessidade de bilhetes impressos.
Com ele, responsáveis podem agendar ou efetuar liberações, e funcionários podem visualizar e gerenciar rapidamente os alunos liberados no dia ou no mês.

# Grupo: 
Integrantes: Ana Laura, Isabela, Laura, Luiza Marini, Maria Eduarda Figueiredo e Mariêh.

# Situação Problema: 
Como reduzir o desperdício de papel e agilizar o processo de liberação de alunos na escola, considerando que hoje é preciso pegar autorização física na secretaria, enfrentar demora por falta de tempo dos funcionários e avisar com muita antecedência?

# Nosso objetivo:
Nosso objetivo é facilitar a saída dos alunos durante o horário de aula, reduzindo o número de mensagens e solicitações à secretaria. Isso diminui o estresse da secretária, melhora a organização da escola, evita conflitos com os responsáveis e também contribui para a redução do uso de papel, promovendo uma prática mais sustentável.

# Tipos de dados:
Inteiro: Utilizamos para contar registros de liberação por mês,o dia, mês e hora que o responsável vai liberar seu filho, os índices de vetores e matrizes, senhas dos logins, tokens (códigos de verificação) e controle do menu.

Cadeia: Guardamos nomes dos alunos, turmas e usuários, as escolas que tem ou está sendo aplicado o PaperFast e entradas nos logins.

Logico: Nos ajuda a ver se os usuários estão corretos, se aquela escola foi achada e se aquela pessoa é um funcionário os responsável.

Caracter: Entrada utilizada nas liberações.

# Matriz:
Todas as nossas matrizes são: 

 - senhas [25][2]: Guarda senhas de todos os alunos e o código de segurança.
 - usuarios [25][3]: Guarda os nomes completos dos alunos, turma e usuário.

# Vetorez: 
Todos os vetorez são:

- escolas [3]: Guarda as escolas que tem o PaperFast aplicado ou sendo aplicado.
- dia [10]: Dia das liberações.
- mes [10]: Mês das liberações.
- hora [10]: Hora das liberações.

# Funcionalidades:
Para responsáveis:

- Login seguro (entregue somente para os pais e feito pela direção) com usuários, senhas e token.
- Agendar liberação dos alunos (dia, mês e hora).
- Efetuar liberações imediatas.
- Vizualizar todas as liberações.

Para funcionários:

- Login seguro com escola em que trabalha, senhas e token.
- Visualizar alunos liberados no dia e hora da liberação.
- Vizualizar alunos liberados no mês.
- Receber aviso de liberação imediata.

# Nosso sistema de segurança:
Como funciona:

1 - Verifica se o usuário é válido.

2 - Verifica senha individual.

3 - Verifica token de segurança.

# Estruturas do código:
Separamos es funções:

- inicio(): Controla menus e logins.
- loginresp(): Sistema de login dos responsáveis.
- loginfunc(): Sistema de login dos funcionários da escola.
- agendarli(): Registro de liberações futuras (até 10 por mês).
- efetuarli(): Liberação imediata do aluno.
- vizualizarli(): Mostra para o responsável o histórico de liberações do aluno.
- alunosdia(): Lista liberações do dia para funcionários.
- alunosmes(): Lista liberações do mês para funcionários.

# Exemplo de entrada:

- Primeiro exemplo:
  
          escreva ("----------------------------------------------\n")
          escreva ("|           Bem Vindo ao PaperFast!          |\n")
          escreva ("|                                            |\n")
          escreva ("|                                            |\n")
          escreva ("| Quem é você?                               |\n")
          escreva ("|  1- Responsável                            |\n")
          escreva ("|  2- Funcionário                            |\n")
          escreva ("|                                            |\n")
          escreva ("|                                            |\n")
          escreva ("| Facilitando o dia a dia dos pais e escolas |\n")
          escreva ("|com um toque de praticidade.                |\n")
          escreva ("| Libere seus filhos com segurança, rapidez  |\n")
          escreva ("|e sem papelada!                             |\n")
          escreva ("|                                            |\n")
          escreva ("----------------------------------------------\n")
          leia (loginS)

  - Segundo exemplo:
 
    escreva ("--------------------Agendar-Liberação--------------------\n")
    
    se (cont < 10) {
    
     escreva ("Qual o dia que precisa da liberação?\n")
    
     escreva ("(ESCREVA SOMENTE NÚMEROS!)\n")
    
     leia (dia [cont])

     escreva ("Qual mês a liberação precisa ocorrer?\n")
    
     escreva ("(ESCREVA SOMENTE NÚMEROS!)\n")
    
     leia (mes [cont])

     escreva ("Em qual hora seu filho vai sair?\n")
    
     escreva ("(ESCREVA SOMENTE NÚMEROS!)\n")
    
     leia (hora [cont])

     escreva ("Qual o token de segurança? \n")
    
     leia (token)


# Exemplo de saída:

- Primeiro exemplo: 

Se digitado 1:
------------------------LOGIN------------------------

 Um prazer ver você aqui!

 * Qual o seu usuário?
(Primeiro_nome.último_nome --> TUDO MINÚSCULO)

Se digitado 2:
------------------------LOGIN------------------------

 Um prazer ver você aqui!

 De qual escola você faz parte?

 - Depois dos dois vai ter mais entradas!

 - Segundo exemplo:

   --------------------Agendar-Liberação--------------------

   Qual o dia que precisa de liberação?
   
   (ESCREVA SOMENTE NÚMEROS!)
   
   21
   
   QUAL O MÊS QUE A LIBERAÇÃO PRECISA OCORRER?
   
   (ESCREVA SOMENTE NÚMEROS!)
   
   3
   
   Em qual hora seu filho vai sair?
   
   (ESCREVA SOMENTE NÚMEROS!)
   
   14
   
   Qual o token de segurança?
   
   1234
   
   Liberação efetuada! DÊ ENTER PARA VOLTAR AO MENU!
   

# Tecnologias utilizadas:
Esse projeto foi em Portugol, utilizando:

- Estruturas condicionais
- Matrizes
- Vetorez
- Laços de repetição
- Funções separadas por responsabilidade
- Validação de segurança

# Como utilizar?
 1- Baixe esse arquivo: https://github.com/marieh-krul/PaperFast/commit/1aefa27c29c1176c38562e61e33ef07f797fa91c
 
 2- Abra ele nesse site: https://portugol.dev/
 
 3- Escolha se é responsável ou funcionário
 
 4- Sistema realiza o login com verificações:
 
  Login responsável (para utilizar se querer):
  
  * Mariêh:
  Usuário: marieh.krul
  senha: 2103
  token: 1234

  * Brayan:
  Usuário: brayan.santos
  senha: 3344
  token: 1234

  Login funcionário (para utilizar se querer):
  
  Escola: SESI
  senha: 8888
  Código de segurança: 6543
  
 5- Após logins:
 
    * Responsável acessa funções de agendamento, liberação ou visualização
    * Funcionário acessa opções de consultar liberações (mensais ou diárias)
    
 6- O sistema fica em loop até o usuário clicar que quer sair.

# Melhorias futuras/limitações:

- Não conseguimos colocar verificação de face id para os pais (portugol não deixa), mas seria necessário para aplicação.
- Não fizemos um app (a ideia inicial), por conta que o portugol não consegue.
- Salvar dados externamente seria necessário, mas ainda não conseguimos.
- O sistema teria agir conforme calendário local e hora, mas isso é uma melhoria futura, agora é só utilizado para testes.
- Adicionar diferentes turmas e múltiplas escolas reais, como melhorias futuras.

# Foi isso!

