// task_18.dart
class BankAccount {
  String accountNumber;
  String accountHolder;
  double _balance; // private property

  BankAccount(this.accountNumber, this.accountHolder, this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$$amount. New balance: \$$_balance');
    } else {
      print('Invalid deposit amount.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid withdrawal amount.');
    } else if (_balance >= amount) {
      _balance -= amount;
      print('Withdrew \$$amount. New balance: \$$_balance');
    } else {
      print('Insufficient funds. Withdrawal denied.');
    }
  }

  // Method to check balance
  void checkBalance() {
    print('Current balance for $accountHolder: \$$_balance');
  }
}

void main() {
  BankAccount myAccount = BankAccount('123456789', 'John Doe', 500.0);
  
  myAccount.checkBalance();
  myAccount.deposit(200.0);
  myAccount.withdraw(150.0);
  myAccount.withdraw(600.0); // This should fail
  myAccount.checkBalance();
}