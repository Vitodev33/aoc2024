import 'dart:io';

void main() {
  var fp = File('inputs/input1.txt');
  var lines = fp.readAsLinesSync();
  var levi = <int>[];
  var desni = <int>[];
  for (var line in lines) {
    var raz = line.split("   ");
    levi.add(int.parse(raz[0]));
    desni.add(int.parse(raz[1]));
  }
  levi.sort((n1, n2) => n1.compareTo(n2));
  desni.sort((n1, n2) => n1.compareTo(n2));
  var sum = 0;
  for (int i = 0; i < levi.length; i++) {
    sum += (desni[i] - levi[i]).abs();
  }
  print("odgovor prvi del: $sum");
  //
  var sum2 = 0;
  for (var s in levi){
    var rez = 0;
    for(var k in desni){
      if (s == k){
        rez = rez +1;
      }
    }
    sum2+= rez*s;
  }
  print("odgovor drugi del: $sum2");
}