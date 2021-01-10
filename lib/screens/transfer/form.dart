import 'package:bytebank/components/field.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  final _accountNumberController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Field(
              "Número da Conta",
              "0000",
              _accountNumberController,
            ),
            Field(
              "Valor",
              "00.00",
              _amountController,
              inputIcon: Icons.monetization_on,
            ),
            RaisedButton(
              onPressed: () {
                createTransfer(context);
              },
              child: Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }

  void createTransfer(BuildContext context) {
    debugPrint('clicou no botão');
    final amount = double.tryParse(_amountController.text);
    final accountNumber = int.tryParse(_accountNumberController.text);

    if (amount != null && accountNumber != null) {
      final transfer = Transfer(accountNumber: accountNumber, amount: amount);
      Navigator.pop(context, transfer);
    }
  }
}
