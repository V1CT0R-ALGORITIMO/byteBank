void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transfêrecia'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 15.0, 8.0),
            child: TextField(
              style: TextStyle(
                  fontSize: 20.0
              ),
              decoration: InputDecoration(
                labelText: 'Numero da Conta',
                hintText: '123456',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              style: TextStyle(
                  fontSize: 20.0
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '100,00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          RaisedButton(
            child: Text('Confimar'),
          ),
        ],
      ),
    );
  }
}

class ListaTransferecias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfêrencias'),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(3265.65, 8965)),
          ItemTransferencia(Transferencia(5698.56, 5236)),
          ItemTransferencia(Transferencia(5214.32, 9874)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.Valor.toString()),
        subtitle: Text(_transferencia.NumeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double Valor;
  final int NumeroConta;

  Transferencia(this.Valor, this.NumeroConta);
}
