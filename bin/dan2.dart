import 'dart:io';

void main(){
  var fp = File('inputs/input2.txt');
  var lines = fp.readAsLinesSync();

  var st_varnih = 0;
  for (var line in lines) {
    var nivoji = line.split(" ").map((s) => int.parse(s)).toList();
    var ali_je_en_varen = false;
    for (int i = 0; i < nivoji.length; i++) {
      var sub_nivoji = nivoji.sublist(0, i);
      sub_nivoji.addAll(nivoji.sublist(i+1));
      if (je_varno(sub_nivoji)) {
        ali_je_en_varen = true;
        break;
      }
    }
    if (ali_je_en_varen) {
      st_varnih++;
    }
  }

  print(st_varnih);
}

bool je_varno(List<int> nivoji) {
  var shrani= <int>[];
  for (int i=0; i < nivoji.length-1; i++) {
    var razlika = nivoji[i+1]-  nivoji[i];
    var razlika_abs = razlika.abs();
    if(razlika_abs < 1 || razlika_abs > 3) {
      return false;
    }
    shrani.add(razlika);
  }
  var se_zmanjsuje = true;
  for (var shrani_raz in shrani){
    if (shrani_raz > 0) {
      se_zmanjsuje = false;
    }
  }

  var se_povecuje = true;
  for (var shrani_raz in shrani){
    if (shrani_raz < 0) {
      se_povecuje = false;
    }
  }

  if (!se_zmanjsuje && !se_povecuje) {
    return false;
  }
  return true;
}