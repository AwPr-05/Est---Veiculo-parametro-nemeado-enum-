enum TipoVeiculo { AEREO, TERRESTRE, AQUATICO }
enum TipoCores { AMARELO, PRETO, VERMELHO, AZUL, MARROM }
enum TipoModelo { BOEING, ACROBATICO, JEEP, SEDAN, CRUZEIRO, LANCHA }
/*
AEREO - Sua cor nao pode ser AMARELLO
Terrestre - Sua cor nao pode ser MARROM
AQUATICO -  Sua cor nao pode ser AZUL
*/

class Veiculo {
  TipoVeiculo tipoVeiculo;
  String tipoTerreno;
  String tipoEmpecilho;

  TipoCores _cor;
  TipoModelo _modelo;
  int _qtdPassageiros;
  int _ano;
// tipoVeiculo == TipoVeiculo.TERRESTRE

  Veiculo.carro(
      {TipoCores cor, TipoModelo modelo, int qtdPassageiros, int ano}) {
    tipoVeiculo = TipoVeiculo.TERRESTRE;
    tipoEmpecilho = "mar e Ar";
    tipoTerreno = "chao";
    this.cor = cor;
    this.modelo = modelo;
    this.qtdPassageiros = qtdPassageiros;
    this.ano = ano;
  }
  Veiculo.helicoptero(
      {TipoCores cor, TipoModelo modelo, int qtdPassageiros, int ano}) {
    tipoVeiculo = TipoVeiculo.AEREO;
    tipoEmpecilho = "mar e chao";
    tipoTerreno = "Ar";
    this.cor = cor;
    this.modelo = modelo;
    this.qtdPassageiros = qtdPassageiros;
    this.ano = ano;
  }
  Veiculo.navio(
      {TipoCores cor, TipoModelo modelo, int qtdPassageiros, int ano}) {
    tipoVeiculo = TipoVeiculo.AQUATICO;
    tipoEmpecilho = "Ar e chao";
    tipoTerreno = "mar";
    this.cor = cor;
    this.modelo = modelo;
    this.qtdPassageiros = qtdPassageiros;
    this.ano = ano;
  }

  set cor(TipoCores valor) {
    if (tipoVeiculo == TipoVeiculo.AEREO) {
      if (valor != TipoCores.AMARELO) {
        _cor = valor;
      } else {
        _cor = TipoCores.VERMELHO;
      }
    } else if (tipoVeiculo == TipoVeiculo.TERRESTRE) {
      if (valor != TipoCores.MARROM) {
        _cor = valor;
      } else {
        _cor = TipoCores.VERMELHO;
      }
    } else if (tipoVeiculo == TipoVeiculo.AQUATICO) {
      if (valor != TipoCores.AZUL) {
        _cor = valor;
      } else {
        _cor = TipoCores.VERMELHO;
      }
    }
  }

  get cor => _cor;

  set modelo(TipoModelo modelo) {
    _modelo = modelo;
  }

  get modelo => _modelo;

  set qtdPassageiros(int qtdPassageiros) {
    if (tipoVeiculo == TipoVeiculo.TERRESTRE) {
      if (qtdPassageiros > 4 || qtdPassageiros < 1) {
        qtdPassageiros = 0;
      } else {
        _qtdPassageiros = qtdPassageiros;
      }
    } else if (tipoVeiculo == TipoVeiculo.AEREO) {
      if (qtdPassageiros >= 300 || qtdPassageiros < 1) {
        qtdPassageiros = 0;
      } else {
        _qtdPassageiros = qtdPassageiros;
      }
    } else if (tipoVeiculo == TipoVeiculo.AQUATICO) {
      if (qtdPassageiros >= 1500 || qtdPassageiros < 1) {
        qtdPassageiros = 0;
      } else {
        _qtdPassageiros = qtdPassageiros;
      }
    }
  }

  get qtdPassageiros => _qtdPassageiros;

  set ano(int ano) {
    _ano = ano;
  }

  get ano => _ano;

  String toString() =>
      "Tipo: $tipoVeiculo, Cor: $_cor, qtdPassageiros: $_qtdPassageiros";
}

void main() {
  // criando os veiculos
  Veiculo veiculo = Veiculo.carro(
      cor: TipoCores.AMARELO,
      modelo: TipoModelo.BOEING,
      qtdPassageiros: 4,
      ano: 2005);
  Veiculo veiculo2 = Veiculo.helicoptero(
      qtdPassageiros: 2,
      cor: TipoCores.MARROM,
      modelo: TipoModelo.ACROBATICO,
      ano: 2021);
  Veiculo veiculo3 = Veiculo.navio(
      qtdPassageiros: 180,
      cor: TipoCores.PRETO,
      modelo: TipoModelo.ACROBATICO,
      ano: 2021);
  // estou usando metodos do carro
  print(veiculo);
  veiculo.cor = TipoCores.MARROM;
  print(veiculo);
  // estou usando metodos do Helicoptero
  print(veiculo2);
  veiculo2.cor = TipoCores.AMARELO;
  print(veiculo2);
  // estou usando metodos do Navio
  print(veiculo3);
  veiculo3.cor = TipoCores.AMARELO;
  print(veiculo3);
}
