// Student: Nyirambarushimana Claudine
// Reg no:  26626
const String regNo = '26626';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  // by NC
  print('Reg no: $regNo | D = $d | T = $t');

  // A1: Variables and operators
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

  print(z);String city = 'Kigali';

  print(city.length);
  print(city[city.length - 1]);
  print(city.substring(2, 4));
  print(city.toUpperCase().indexOf('A'));
  print(city.contains('k'));
  print('$city.length');
  print('${city.length}');
  print(city * 2);
  city.toUpperCase();
  print(city);
  print(city.replaceAll('i', '!'));
  print('5' + 5.toString());
  print(int.parse('5') + 5);
  print(z.isEven);
  print('$z' + '$x');

}