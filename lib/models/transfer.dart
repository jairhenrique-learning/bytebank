class Transfer {
  final double amount;
  final int accountNumber;

  Transfer({this.amount, this.accountNumber});

  String toString() =>
      "Transfer {amount:${amount.toString()} accountNumber:${accountNumber.toString()}}";
}