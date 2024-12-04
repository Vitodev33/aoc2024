import 'dart:io';

void main() {
  var fp = File('inputs/input4.txt');
  var arr = fp.readAsLinesSync();
  var stevec = 0;
  // j =horizontalno
  // i =vertikalno

  for (int i = 1; i < arr.length -1; i++) {
    for (int j = 1; j < arr[i].length-1; j++) {
     if((arr[i-1][j-1] == "M")) {
       var zg_m = false;
       if (arr[i - 1][j - 1] == "M") {
         zg_m = true;
       }
       // zgorni S če je
       var zg_s = false;
       if (arr[i - 1][j + 1] == "S") {
         zg_s = true;
       }
       // serdeina A ČE JE
       var sredina = false;
       if (arr[i][j] == "A") {
         sredina = true;
       }
       //spodni m če je
       var spdnim = false;
       if (arr[i + 1][j - 1] == "M") {
         spdnim = true;
       }

       //spodni desni s če je
       var spdesni = false;
       if (arr[i + 1][j + 1] == "S") {
         spdesni = true;
       }

       if (zg_m && zg_s && sredina && spdnim && spdesni) {
         stevec++;
       }
     }
       if((arr[i-1][j-1] == "S")) {
       var zg_m = false;
       if (arr[i - 1][j - 1] == "S") {
         zg_m = true;
       }
       // zgorni S če je
       var zg_s = false;
       if (arr[i - 1][j + 1] == "S") {
         zg_s = true;
       }
       // serdeina A ČE JE
       var sredina = false;
       if (arr[i][j] == "A") {
         sredina = true;
       }
       //spodni m če je
       var spdnim = false;
       if (arr[i + 1][j - 1] == "M") {
         spdnim = true;
       }

       //spodni desni s če je
       var spdesni = false;
       if (arr[i + 1][j + 1] == "M") {
         spdesni = true;
       }

       if (zg_m && zg_s && sredina && spdnim && spdesni) {
         stevec++;
       }
     }
      if((arr[i-1][j-1] == "S")) {
       var zg_m = false;
       if (arr[i - 1][j - 1] == "S") {
         zg_m = true;
       }
       // zgorni S če je
       var zg_s = false;
       if (arr[i - 1][j + 1] == "M") {
         zg_s = true;
       }
       // serdeina A ČE JE
       var sredina = false;
       if (arr[i][j] == "A") {
         sredina = true;
       }
       //spodni m če je
       var spdnim = false;
       if (arr[i + 1][j - 1] == "S") {
         spdnim = true;
       }

       //spodni desni s če je
       var spdesni = false;
       if (arr[i + 1][j + 1] == "M") {
         spdesni = true;
       }

       if (zg_m && zg_s && sredina && spdnim && spdesni) {
         stevec++;
       }
     }
     if((arr[i-1][j-1] == "M")) {
       var zg_m = false;
       if (arr[i - 1][j - 1] == "M") {
         zg_m = true;
       }
       // zgorni S če je
       var zg_s = false;
       if (arr[i - 1][j + 1] == "M") {
         zg_s = true;
       }
       // serdeina A ČE JE
       var sredina = false;
       if (arr[i][j] == "A") {
         sredina = true;
       }
       //spodni m če je
       var spdnim = false;
       if (arr[i + 1][j - 1] == "S") {
         spdnim = true;
       }

       //spodni desni s če je
       var spdesni = false;
       if (arr[i + 1][j + 1] == "S") {
         spdesni = true;
       }

       if (zg_m && zg_s && sredina && spdnim && spdesni) {
         stevec++;
       }
     }
    }
  }
print("število x je " + stevec.toString());
}
