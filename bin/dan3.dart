import 'dart:io';

void main(){
  var fp = File('inputs/input3.txt');
  var s = fp.readAsStringSync();
  var re = RegExp(r"mul\(\d+,\d+\)|do\(\)|don't\(\)");
  var ujemanja = re.allMatches(s);

  var sum = 0;
  var jane = true;

  for (var ujemanje in ujemanja) {
    var mul = s.substring(ujemanje.start, ujemanje.end);
    switch (mul) {
      case "do()":
        jane= true;
      case "don't()":
        jane = false;
      default:
        if(jane == true){
          var prva_stevilka = int.parse(mul.substring(4,mul.indexOf(",")));
          var druga_stevilka = int.parse(mul.substring(mul.indexOf(",")+1, mul.length-1));
          sum += prva_stevilka * druga_stevilka;
        }
    }
  }
  print(sum);
}
