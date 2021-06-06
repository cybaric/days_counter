import 'fungsi.dart';

class ListTime extends Fungsi {
  // mencari selisih waktu (dlm thn, bln, dan hari)

  static List<int> lengkap(
      int tgls, int blns, int thns, int tgl, int bln, int thn) {
    var hasil = <int>[0, 0, 0];
    var hTgl = 0;
    var hBln = 0;
    var hThn = 0;
    if (tgls < tgl) {
      var J = Fungsi.fun(blns - 1, thns);

      hTgl = tgls + J - tgl;
      blns = blns - 1;
      if (blns < bln) {
        thns = thns - 1;
        hBln = 12 + blns - bln;
        hThn = thns - thn;
        hasil[0] = hTgl;
        hasil[1] = hBln;
        hasil[2] = hThn;
        return hasil;
      }
      hBln = blns - bln;
      hThn = thns - thn;
      hasil[0] = hTgl;
      hasil[1] = hBln;
      hasil[2] = hThn;
      return hasil;
    }
    hTgl = tgls - tgl;
    if (blns < bln) {
      thns = thns - 1;
      hBln = 12 + blns - bln;
      hThn = thns - thn;
      hasil[0] = hTgl;
      hasil[1] = hBln;
      hasil[2] = hThn;
      return hasil;
    }
    hBln = blns - bln;
    hThn = thns - thn;
    hasil[0] = hTgl;
    hasil[1] = hBln;
    hasil[2] = hThn;
    return hasil;
  }
}
