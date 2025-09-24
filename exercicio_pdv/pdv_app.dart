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
        }
    }