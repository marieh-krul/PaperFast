programa {
  inteiro senhas [25][2], senha, saida, loginS, linha, tokengeral = 1234, token, segurancaI = 6543, senhaadm = 8888, dia [10], mes [10], hora [10], cont = 0, not = 0, esco = 0
  cadeia pausa, usuarios [25][4], usuario, escolas [3]={"SESI","RIO BRANCO","CSJ"}, escola
  logico encontrado = falso, login = falso, senhaL = falso, func=falso, escolaenc=falso
  caracter libe

//MENU PRINCIPAL / LOGIN / CADASTROS
  funcao inicio() {
    
    // USUÁRIOS (usuário / nome completo / turma / escola)
    usuarios[0][0] = "ana.laura"
    usuarios[0][1] = "ANA LAURA MARIAN ASSMANN"
    usuarios[0][2] = "van gogh"
    usuarios[1][0] = "arthur.aguiar"
    usuarios[1][1] = "ARTHUR DUMBOCK DE AGUIAR"
    usuarios[1][2] = "van gogh"
    usuarios[2][0] = "arthur.muller"
    usuarios[2][1] = "ARTHUR HORÁCIO PEREIRA MÜLLER"
    usuarios[2][2] = "van gogh"
    usuarios[3][0] = "brayan.santos"
    usuarios[3][1] = "BRAYAN FERRARI DOS SANTOS"
    usuarios[3][2] = "van gogh"
    usuarios[4][0] = "daniel.machado"
    usuarios[4][1] = "DANIEL PIETRO DOS SANTOS MACHADO"
    usuarios[4][2] = "van gogh"
    usuarios[5][0] = "eduarda.fernandes"
    usuarios[5][1] = "EDUARDA DOS SANTOS FERNANDES"
    usuarios[5][2] = "van gogh"
    usuarios[6][0] = "gabriela.machidonski"
    usuarios[6][1] = "GABRIELA JAQUES MACHIDONSKI"
    usuarios[6][2] = "van gogh"
    usuarios[7][0] = "giovani.cupertino"
    usuarios[7][1] = "GIOVANI BUGALHO CUPERTINO"
    usuarios[7][2] = "van gogh"
    usuarios[8][0] = "isabela.couto"
    usuarios[8][1] = "ISABELA RECKTENVALD COUTO"
    usuarios[8][2] = "van gogh"
    usuarios[9][0] = "isadora.pedroso"
    usuarios[9][1] = "ISADORA CAROLINE VAZ PEDROSO"
    usuarios[9][2] = "van gogh"
    usuarios[10][0] = "isadora.castilho"
    usuarios[10][1] = "ISADORA OLIVEIRA CASTILHO"
    usuarios[10][2] = "van gogh"
    usuarios[11][0] = "kainat.toscani"
    usuarios[11][1] = "KAINAT FLECK TOSCANI"
    usuarios[11][2] = "van gogh"
    usuarios[12][0] = "laura.raupp"
    usuarios[12][1] = "LAURA GOMES RAUPP"
    usuarios[12][2] = "van gogh"
    usuarios[13][0] = "leonardo.anderson"
    usuarios[13][1] = "LEONARDO NONNENMACHER ANDERSON"
    usuarios[13][2] = "van gogh"
    usuarios[14][0] = "luiza.flausina"
    usuarios[14][1] = "LUIZA DRECHSLER FLAUSINA"
    usuarios[14][2] = "van gogh"
    usuarios[15][0] = "luiza.camara"
    usuarios[15][1] = "LUIZA MARINI MACIEL CÂMARA"
    usuarios[15][2] = "van gogh"
    usuarios[16][0] = "maria.marka"
    usuarios[16][1] = "MARIA EDUARDA DA SILVA MARKA"
    usuarios[16][2] = "van gogh"
    usuarios[17][0] = "maria.rodrigues"
    usuarios[17][1] = "MARIA EDUARDA DE FIGUEIREDO RODRIGUES"
    usuarios[17][2] = "van gogh"
    usuarios[18][0] = "maria.waschburger"
    usuarios[18][1] = "MARIA EDUARDA JERONIMO WASCHBURGER"
    usuarios[18][2] = "van gogh"
    usuarios[19][0] = "marieh.krul"
    usuarios[19][1] = "MARIÊH DA COSTA KRUL"
    usuarios[19][2] = "van gogh"
    usuarios[20][0] = "pietro.rodrigues"
    usuarios[20][1] = "PIETRO DA SILVA RODRIGUES"
    usuarios[20][2] = "van gogh"
    usuarios[21][0] = "pyetra.morais"
    usuarios[21][1] = "PYETRA MACHADO MORAIS"
    usuarios[21][2] = "van gogh"
    usuarios[22][0] = "rafael.reis"
    usuarios[22][1] = "RAFAEL FOGAÇA REIS"
    usuarios[22][2] = "van gogh"
    usuarios[23][0] = "rafael.rodrigues"
    usuarios[23][1] = "RAFAEL RODRIGUES"
    usuarios[23][2] = "van gogh"
    usuarios[24][0] = "yasmin.takeda"
    usuarios[24][1] = "YASMIN YUI TAKEDA"
    usuarios[24][2] = "van gogh"
    
    // ESCOLA
    para (inteiro i = 0; i < 25; i++) {
      usuarios[i][3] = "SESI"
    }

    // SENHAS (senha / token)
    senhas[0][0] = 4521
    senhas[1][0] = 1809
    senhas[2][0] = 9273
    senhas[3][0] = 3344
    senhas[4][0] = 6125
    senhas[5][0] = 5902
    senhas[6][0] = 1487
    senhas[7][0] = 2213
    senhas[8][0] = 7780
    senhas[9][0] = 6401
    senhas[10][0] = 8395
    senhas[11][0] = 2056
    senhas[12][0] = 9712
    senhas[13][0] = 4930
    senhas[14][0] = 8846
    senhas[15][0] = 5531
    senhas[16][0] = 3108
    senhas[17][0] = 4265
    senhas[18][0] = 7459
    senhas[19][0] = 2103
    senhas[20][0] = 6594
    senhas[21][0] = 8633
    senhas[22][0] = 1209
    senhas[23][0] = 9045
    senhas[24][0] = 7810

    // TOKEN GERAL
    para (inteiro i = 0; i < 25; i++) {
      senhas[i][1] = tokengeral
    }
      faca {
        limpa()

        se (login != verdadeiro) {
          limpa ()
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

          escolha (loginS){
            caso 1:
            limpa ()
            loginresp ()
            pare
            caso 2:
            limpa()
            loginfunc()
            pare
            caso contrario:
            limpa ()
            escreva ("Você digitou um número que não leva a nada! Tente novamente!")
            escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
            leia (pausa)
            pare
          }
        }

        se (login == verdadeiro e func == falso){
          limpa ()
          escreva ("----------------------------------------------\n")
          escreva ("|                  PaperFast                 |\n")
          escreva ("|                                            |\n")
          escreva ("|                                            |\n")
          escreva ("| O que você quer fazer?                     |\n")
          escreva ("|  1- Agendar Liberação                      |\n")
          escreva ("|  2- Efetuar Liberação                      |\n")
          escreva ("|  3- Visualizar liberações                  |\n")
          escreva ("|                                            |\n")
          escreva ("----------------------------------------------\n")
          leia (saida)

          escolha (saida) {
            caso 1:
            limpa ()
            agendarli ()
            pare
            caso 2:
            limpa()
            efetuarli ()
            pare
            caso 3:
            limpa ()
            vizualizarli ()
            pare
            caso contrario:
            escreva ("Você digitou um número que não leva a nada! Tente novamente!")
            escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
            leia (pausa)
            pare
          }
        }

        se (login == verdadeiro e func == verdadeiro){
          limpa ()
          se (not==1){
           escreva ("----------------------------------------------\n")
           escreva ("|               Aluno Liberado!              |\n")
           escreva ("|                                            |\n")
           escreva ("|                                            |\n")
           escreva ("| BRAYAN FERRARI DOS SANTOS acabou de ser    |\n")
           escreva ("| liberado!                                  |\n")
           escreva ("|                                            |\n")
           escreva ("|                                            |\n")
           escreva ("----------------------------------------------\n") 
          }
          escreva ("----------------------------------------------\n")
          escreva ("|                  PaperFast                 |\n")
          escreva ("|                                            |\n")
          escreva ("|                                            |\n")
          escreva ("| O que você quer fazer?                     |\n")
          escreva ("|  1- Ver alunos liberados no dia            |\n")
          escreva ("|  2- Ver alunos liberados no mês            |\n")
          escreva ("|                                            |\n")
          escreva ("----------------------------------------------\n")
          leia (saida)

          escolha (saida) {
            caso 1:
            limpa ()
            alunosdia ()
            pare
            caso 2:
            limpa()
            alunosmes ()
            pare
            caso contrario:
            escreva ("Você digitou um número que não leva a nada! Tente novamente!")
            escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
            leia (pausa)
            pare
          }
        }
      } enquanto (saida!=0)
    } 

//LOGIN RESPONSÁVEL
  funcao loginresp() {
    escreva ("------------------------LOGIN------------------------\n\n")
    escreva ("Um prazer ver você aqui!\n\n")
    escreva ("* Qual o seu usuário?\n")
    escreva ("(Primeiro_nome.último_nome --> TUDO MINÚSCULO)\n")
    leia (usuario)
    para (inteiro i=0; i<25; i++){
      se (usuario==usuarios[i][0]){
        linha=i
        encontrado=verdadeiro
      }
    }
    se (encontrado!=falso){
      escreva ("Usuário encontrado com sucesso!\n")
      escreva ("* Qual a sua senha?\n")
      leia (senha)
      para (inteiro i=0; i<25; i++){
        se (senha==senhas[i][0]){
          senhaL=verdadeiro
        }
      }
      se (senhaL!=falso) {
       escreva ("Senha correta!\n")
       escreva ("* Qual o TOKEN de segurança?\n")
       leia (token)
       para (inteiro i=0; i<25; i++){
        se (token==tokengeral){
          login=verdadeiro
        }
       }
       se (login!=falso) {
         escreva ("TOKEN de segurança correto! Login completo!\n")
         escreva ("DÊ ENTER PARA INICIAR O SISTEMA!")
         leia (pausa)
       } senao {
         escreva ("TOKEN de segurança incorreto! DÊ ENTER E TENTE NOVAMENTE!")
         leia (pausa)
       }
      } senao {
       escreva ("Senha incorreta! DÊ ENTER E TENTE NOVAMENTE!\n")
       leia (pausa)
      }
    } senao {
       escreva ("Usuário incorreto! DÊ ENTER E TENTE NOVAMENTE!")
       leia (pausa)
    }
  }
  
//LOGIN FUNCIONÁRIO
  funcao loginfunc() {
   escreva ("------------------------LOGIN------------------------\n\n")
   escreva ("Um prazer ver você aqui!\n\n")
   escreva ("De qual escola você faz parte?\n")
   leia (escola)
   para (inteiro i=0; i<3; i++){
     se (escola==escolas[i]){
       escolaenc = verdadeiro
       esco = i
      }
    }
    se (escolaenc!=falso){
      escreva ("Escola encontrada!\n")
      escreva ("Qual a senha geral?\n")
      leia (senha)
      se (senha==senhaadm){
        escreva("Senha geral correta!\n")
        escreva ("Qual o código de segurança?")
        leia (token)
        se (token==segurancaI){
          func=verdadeiro
          login=verdadeiro
          escreva ("Login efetuado com sucesso!\n")
          escreva ("DÊ ENTER PARA INICIAR O SISTEMA!")
          leia (pausa)
        } senao {
          escreva ("Código de segurança incorreto! DÊ ENTER E TENTE NOVAMENTE!")
          leia (pausa)
        }
      } senao {
        escreva ("Senha incorreta! DÊ ENTER E TENTE NOVAMENTE!")
        leia (pausa)
      }
    } senao {
      escreva ("Escola não encontrada! DÊ ENTER E TENTE NOVAMENTE!")
      leia (pausa)
    } 
  }
  
// AGENDAR LIBERAÇÃO
  funcao agendarli () {
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

     se (tokengeral == token) {
       escreva ("Liberação efetuada! DÊ ENTER PARA VOLTAR AO MENU!")
       leia (pausa)
       cont++

     } senao {
       escreva ("Liberação não efetuada! Tente novamente depois!\n")
       escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
       leia (pausa)
     }
    } senao {
      escreva ("Você atingiu o limite de liberações mensais! Desculpe!\n")
      escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
      leia (pausa)
    }
  }

// EFETUAR LIBERAÇÃO
 funcao efetuarli () {
   escreva ("--------------------Efetuar-Liberação--------------------\n")
   
   escreva ("Liberar seu filho agora? \n")
   escreva ("(SIM = s)\n")
   leia (libe)
  
   escreva ("Qual o token de segurança? \n")
   leia (token)

   se (tokengeral == token) {
     escreva ("Liberação efetuada! Professores avisados! DÊ ENTER PARA VOLTAR AO MENU!")
     leia (pausa)
   } senao {
     escreva ("Liberação não efetuada! Tente novamente depois!\n")
     escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
     leia (pausa)
    }
  }

 // VISUALIZAR LIBERAÇÃO
 funcao vizualizarli() {
   escreva ("--------------------Visualizar-Liberação--------------------\n")
   escreva ("Aluno: ", usuarios[linha][1],".\n")
   se (cont !=0) {
      para (inteiro i=0;i<cont;i++) {
       escreva ("Liberação ",i+1,": \n")
       escreva ("Dia: ", dia[i], "\n")
       escreva ("Mês: ", mes[i], "\n")
       escreva ("Hora: ", hora[i], "\n")
      }
     escreva ("São só essas liberações cadastradas! DÊ ENTER PARA VOLTAR AO MENU!")
     leia (pausa)
   } senao {
    escreva ("Esse aluno não tem nenhuma liberação ainda!\n")
    escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
     leia (pausa)
   }
 }

 // VER LIBERAÇÕES DIA
 funcao alunosdia () {
   se (escolas[esco]=="SESI") {
     escreva ("----------Liberações de Hoje!----------\n\n")
     escreva ("Turma Van Gogh: \n")

     escreva ("Aluno:LUIZA MARINI MACIEL CÂMARA\n")
     escreva("Liberado apartir das 15 horas.\n")

     escreva ("Aluno:ISADORA CAROLINE VAZ PEDROSO\n")
     escreva("Liberado apartir das 10 horas.\n")

     escreva ("Aluno:ANA LAURA MARIAN ASSMANN\n")
     escreva("Liberado apartir das 14 horas.\n")

     escreva ("Aluno:PIETRO DA SILVA RODRIGUES\n")
     escreva("Liberado apartir das 17 horas.\n")
     not++

     escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
     leia (pausa) 
    } senao {
      escreva ("Esse sistema ainda está sendo aplicado na sua escola! Aguarde um pouco, estamos terminando os ajustes!")
      escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
      leia (pausa)
    }
  }

 funcao alunosmes(){

   se (escolas[esco]=="SESI") {
      escreva ("----------Liberações por Mês!----------\n\n")
 
      escreva ("Turma Van Gogh: \n")
   
      escreva ("Mês 10:\n")
      escreva ("Aluno:LUIZA MARINI MACIEL CÂMARA\n")
      escreva ("Aluno:ISADORA CAROLINE VAZ PEDROSO\n")
      escreva ("Aluno:ANA LAURA MARIAN ASSMANN\n")
      escreva ("Aluno:PIETRO DA SILVA RODRIGUES\n")

      escreva ("Mês 11:\n")
      escreva ("Aluno:DANIEL PIETRO DOS SANTOS MACHADO\n")
      escreva ("Aluno:LAURA GOMES RAUPP\n")
      escreva ("Aluno:KAINAT FLECK TOSCANI\n")
      escreva ("Aluno:LEONARDO NONNENMACHER ANDERSON\n")

      escreva ("Mês 12:\n")
      escreva ("Sem nenhuma liberação ainda!\n")

      not++
   
      escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
      leia (pausa)
   } senao {
    escreva ("Esse sistema ainda está sendo aplicado na sua escola! Aguarde um pouco, estamos terminando os ajustes!")
    escreva ("DÊ ENTER PARA VOLTAR AO MENU!")
    leia (pausa)
   }
  }
}





