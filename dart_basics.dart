// Student: Nyirambarushimana Claudine
// Reg no: 26626
const String regNo = '26626';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
// by NC
void main() {
  print('Reg no: $regNo | D = $d | T = $t');
int a = 17;
  int b = 5;
 print(a / b);
  print(a ~/ b);
  print(a % b);
  print(-a % b);
  print(-a ~/ b);
  print(-17.abs());
  print(0.1 + 0.2 == 0.3);
  print(10 == 10.0);

  // A2: Personal numbers
  int x = d;
  int y = t;

  var z = x * 2 + y ~/ 4;

  z += x;

  print(z);
  print(z.isEven);
  print('$z' + '$x');
}