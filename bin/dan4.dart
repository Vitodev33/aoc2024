import 'dart:io';

void main() {
  var fp = File('inputs/input4.txt');
  var arr = fp.readAsLinesSync();

  var countLevo = 0;
  var countDesno = 0;
  var countGor = 0;
  var countDol = 0;

  var countDesnoDol = 0;
  var countDesnoGor = 0;

  var countLevoDol = 0;
  var countLevoGor = 0;

  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr[i].length; j++) {
      // check desno
      if (j <= arr[i].length - 4) {
        var s = arr[i].substring(j, j + 4);
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (desno)");
          countDesno++;
        }
      }
      // check levo
      if (j >= 3) {
        var s = arr[i].substring(j - 3, j+1);
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (levo)");
          countLevo++;
        }
      }
      // check dol
      if (i <= arr.length - 4) {
        var s = "";
        for (int k = i; k < i + 4; k++) {
          s += arr[k][j];
        }
        // print("$i $j: $s (dol)");
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (dol)");
          countDol++;
        }
      }

      // check gor
      if (i >= 3) {
        var s = "";
        for (int k = i; k >= i - 3; k--) {
          s += arr[k][j];
        }
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (gor)");
          countGor++;
        }
      }

      // check desno + dol (diagonala)
      if (j <= arr[i].length - 4 && i <= arr.length - 4) {
        var s = "";
        for (int k = j, l = i; k < j + 4; k++, l++) {
          s += arr[l][k];
        }
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (desno + dol)");
          countDesnoDol++;
        }
      }

      // check desno + gor (diagonala)
      if (j <= arr[i].length - 4 && i >= 3) {
        var s = "";
        for (int k = j, l = i; k < j + 4; k++, l--) {
          s += arr[l][k];
        }
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (desno + gor)");
          countDesnoGor++;
        }
      }

      // check levo + dol (diagonal)
      if (j >= 3 && i <= arr.length - 4) {
        var s = "";
        for (int k = j, l = i; k >= j - 3; k--, l++) {
          s += arr[k][l];
        }
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (levo + dol)");
          countLevoDol++;
        }
      }

      // check levo + gor (diagonala)
      if (j >= 3 && i >= 3) {
        var s = "";
        for (int k = j, l = i; k >= j - 3; k--, l--) {
          s += arr[k][l];
        }
        if (s == "XMAS" || s == "SAMX") {
          print("$i $j: $s (levo + gor)");
          countLevoGor++;
        }
      }
    }
  }
  print("desno $countDesno");
  print("levo $countLevo");
  print("doL $countDol");
  print("gor $countGor");

  print("desno dol $countDesnoDol");
  print("desno gor $countDesnoGor");

  print("levo dol $countLevoDol");
  print("levo gor $countLevoGor");

  int count = ((countDesno + countLevo) / 2 + (countGor + countDol) / 2).toInt();
  count += (countDesnoDol + countDesnoGor) ~/ 2;
  count += (countLevoDol + countLevoGor) ~/ 2;

  print(count);
}