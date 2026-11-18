// Student: Nyirambarushimana Claudine
// Reg no:  26626
const String regNo = '26626';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

String formatRwf(int amount) {
  // by NC
  if (amount == 0) {
    return '0RWF';
  }

  String digits = amount.abs().toString();
  String result = '';
  int i = 0;

  while (i < digits.length) {
    result += digits[i];
    int remaining = digits.length - i - 1;

    if (remaining > 0 && remaining % 3 == 0) {
      result += ',';
    }
    i++;
  }

  if (amount < 0) {
    result = '-$result';
  }

  return '$result RWF';
}

bool isValidPin(String pin) {
  // by NC
  if (pin.length != 5 || pin == '12345') {
    return false;
  }

  int i = 0;

  while (i < pin.length) {
    int digit = pin.codeUnitAt(i);

    if (digit < 48 || digit > 57) {
      return false;
    }
    i++;
  }

  if (pin[0] == pin[1] &&
      pin[1] == pin[2] &&
      pin[2] == pin[3] &&
      pin[3] == pin[4]) {
    return false;
  }

  return true;
}

int momoFee(int amount) {
  // by NC
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

int sendMoney(int balance, int amount) {
  // by NC
  int fee = momoFee(amount);

  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }

  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  int newBalance = balance - amount - fee;

  print(
    'Sent ${formatRwf(amount)} '
    '(fee ${formatRwf(fee)}). '
    'New balance: ${formatRwf(newBalance)}',
  );

  return newBalance;
}

int buyAirtime(int balance, int amount) {
  // by NC
  if (amount < 100 || amount > 50000) {
    print('Failed: invalid airtime amount');
    return balance;
  }

  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  int newBalance = balance - amount;

  print(
    'Airtime bought: ${formatRwf(amount)}. '
    'New balance: ${formatRwf(newBalance)}',
  );

  return newBalance;
}

void main() {
  // by NC
  print('Reg no: $regNo | D = $d | T = $t');

  // F1: Test PIN validation
  print(isValidPin('12345')); // Expected: false
  print(isValidPin('48216')); // Expected: true
  print(isValidPin('77777')); // Expected: false
  print(isValidPin('4821'));  // Expected: false
  print(isValidPin('48a21')); // Expected: false

  // F2: Starting balance
  int balance = 20000 + t * 500;
  print('Starting balance: ${formatRwf(balance)}');

  // F3: Send money three times
  int amount = (d + 1) * 3000;

  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);

  // Buy airtime
  balance = buyAirtime(balance, 1000);

  // Try sending 200000
  balance = sendMoney(balance, 200000);

  // F4: Final balance
  print('Final balance: ${formatRwf(balance)}');

  // F5: Additional test calls
  sendMoney(balance, 0); // Expected: Failed: invalid amount
  print(formatRwf(0)); // Expected: 0RWF
  print(formatRwf(-5000)); // Expected: -5,000 RWF
  print(isValidPin('48216')); // Expected: true
  print(isValidPin('77777')); // Expected: false
  buyAirtime(balance, 50); // Expected: Failed: invalid airtime amount
}