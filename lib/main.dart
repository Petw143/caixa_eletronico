import 'caixaEletronico.dart';
import 'conta.dart';
import 'dispenserDinheiro.dart';
import 'impressora.dart';
import 'sistemaBancario.dart';
import 'transacaoBancaria.dart';

main() {
  // Instanciando classes essenciais
  SistemaBancario sistemaBancario = SistemaBancario(nomeInstituicao: "Itau", contas: []);
  CaixaEletronico caixaEletronico = CaixaEletronico(sistemaBancario: sistemaBancario);
  DispenserDinheiro dispenserDinheiro = DispenserDinheiro(caixa: caixaEletronico);
  Impressora impressora = Impressora(caixaEletronico);

  // Criando as contas com saldo inicial
  List<Conta> contas = [
    Conta(senhaConta: "abcde12345", saldo: 1500.0),
    Conta(senhaConta: "abc123", saldo: 2500.0),
    Conta(senhaConta: "golDoNeymar", saldo: 3500.0),
    Conta(senhaConta: "salsicha321", saldo: 4500.0),
  ];

  // Adicionando transações e contas ao sistema bancário
  for (Conta conta in contas) {
    for (double i = 0; i < 400; i = i + 100) {
      conta.addTransacoes(TransacaoBancaria(descricao: "Depósito", valor: 1000 + i, conta: conta));
    }
    sistemaBancario.addConta(conta);
  }

  // Alterando as senhas de algumas contas
  contas[0].alteraSenha(contas[0].numeroConta, "abcde12345", "novaSenha123");
  contas[2].alteraSenha(contas[2].numeroConta, "golDoNeymar", "neymar10");

  // Exibindo informações das contas e transações
  for (Conta conta in sistemaBancario.contas) {
    print("=========================================");
    print("Número da Conta: ${conta.numeroConta}");
    print("Senha da Conta: ${conta.senhaConta}");
    print("Data de Abertura: ${conta.dataAbertura}");
    print("Saldo Atual: R\$${conta.saldo.toStringAsFixed(2)}");
    print("-----------------------------------------");
    print("Histórico de Transações:");

    int indice = 0;
    for (TransacaoBancaria transacao in conta.transacoes) {
      print("\nTransação $indice:");
      print("  Descrição: ${transacao.descricao}");
      print("  Valor: R\$${transacao.valor.toStringAsFixed(2)}");
      print("  Data: ${transacao.data}");
      indice += 1;
    }
    print("=========================================\n");
  }
}