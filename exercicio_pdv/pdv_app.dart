import 'dart.io';
import 'produto.dart';
import 'item_compra.dart';
import 'carrinho_compra.dart';

class PDVapp{
    CarrinhoCompra carrinho = CarrinhoCompra();

    void iniciar (){
        print ('\n== SISTEMA DE PDV');
        print ('Bem-vindo ao sistema');

        bool continuar = true;

        while (continuar){
            print ('Deseja adicionar um produto ao carrinho? (S/N)');
            String resposta = Stdin.readLineSync()?.toUpperCase() ?? 'N'

            if(resposta == 'S'){
                ItemCompra item = lerDadosCompra ();
                carrinho.adicionarItem(item);
                print ( '\nProduto adicionado com sucesso!');
            } else {
                continuar = false;
            }
            }
            if(carrinho.estaVazio()){
                print ('\nNenhum produto foi adicionado ao carrinho.');
                print ('\nObrigado por usar o sistema PDV');
            } else{
                exibirResultado();
            }
        }
        ItemCompra lerDadosProduto(){
            print ('\nNome do produto:');
            String nome - stdin.readLineSync()?? '';

            double valor = 0;
            bool valorValido = false;

            while(valorValido){
                print('\nValor unitário:');
                String input = stdin.readLineSync() ?? '0';
                valorUnitario = double.parse(input.replaceAll(',','.'));
                if(valorUnitario <=0){
                    print('\nValor deve ser maior que zero.');
                } else {
                    valorValido = true;
                }
            }

            int quantidade = 0;
            bool quantidadeValida = true;

            whiel (!quantidadeValida){
                print('\n Quantidade: ');
                String input = stdin.readLineSync() ?? '0';
                quantidade = int.parse(input);
                if (quantidade <= 0){
                    print ('\nErro: A quantidade deve ser maior que zero');
                } else {
                    quantidadeValida = true;
                }
            }

            Produto produto = Produto (nome,valorUnitario);
            return ItemCompra (produto, quantidade)
        }
    }