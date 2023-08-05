Algoritmo AgenciaDeViagens

Tipo Cliente
    Nome: Caractere[100]
    CPF: Caractere[11]
    Telefone: Caractere[20]

Tipo Destino
    Nome: Caractere[100]
    Descricao: Caractere[200]
    Preco: Real

Variáveis
    Clientes: Vetor[1..100] de Cliente
    Destinos: Vetor[1..50] de Destino
    TotalClientes: Inteiro
    TotalDestinos: Inteiro

Função CadastrarCliente()
    Se TotalClientes < 100 Então
        TotalClientes <- TotalClientes + 1
        Escrever("Digite o nome do cliente: ")
        Ler(Clientes[TotalClientes].Nome)
        Escrever("Digite o CPF do cliente: ")
        Ler(Clientes[TotalClientes].CPF)
        Escrever("Digite o telefone do cliente: ")
        Ler(Clientes[TotalClientes].Telefone)
    Senão
        Escrever("Limite de clientes cadastrados atingido.")
    FimSe

Função CadastrarDestino()
    Se TotalDestinos < 50 Então
        TotalDestinos <- TotalDestinos + 1
        Escrever("Digite o nome do destino: ")
        Ler(Destinos[TotalDestinos].Nome)
        Escrever("Digite a descrição do destino: ")
        Ler(Destinos[TotalDestinos].Descricao)
        Escrever("Digite o preço do destino: ")
        Ler(Destinos[TotalDestinos].Preco)
    Senão
        Escrever("Limite de destinos cadastrados atingido.")
    FimSe

Função ConsultarClientes()
    Se TotalClientes > 0 Então
        Para i <- 1 Até TotalClientes Faça
            Escrever("Nome: ", Clientes[i].Nome)
            Escrever("CPF: ", Clientes[i].CPF)
            Escrever("Telefone: ", Clientes[i].Telefone)
        FimPara
    Senão
        Escrever("Nenhum cliente cadastrado.")
    FimSe


Função ConsultarDestinos()
    Se TotalDestinos > 0 Então
        Para i <- 1 Até TotalDestinos Faça
            Escrever("Nome: ", Destinos[i].Nome)
            Escrever("Descrição: ", Destinos[i].Descricao)
            Escrever("Preço: ", Destinos[i].Preco)
        FimPara
    Senão
        Escrever("Nenhum destino cadastrado.")
    FimSe

Função MenuPrincipal()
    Escrever("------- Agência de Viagens -------")
    Escrever("1. Cadastrar Cliente")
    Escrever("2. Cadastrar Destino")
    Escrever("3. Consultar Clientes")
    Escrever("4. Consultar Destinos")
    Escrever("5. Sair")
    Escrever("-----------------------------------")

Inicio
    TotalClientes <- 0
    TotalDestinos <- 0
    Repetir
        MenuPrincipal()
        Escrever("Escolha uma opção: ")
        Ler(opcao)
        Escolha opcao
            Caso 1:
                CadastrarCliente()
            Caso 2:
                CadastrarDestino()
            Caso 3:
                ConsultarClientes()
            Caso 4:
                ConsultarDestinos()
            Caso 5:
                Escrever("Saindo do programa.")
            Caso Contrario:
                Escrever("Opção inválida. Digite novamente.")
        FimEscolha
    Enquanto opcao <> 5
Fim


