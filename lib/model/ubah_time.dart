import 'fungsi.dart';

class UbahTime{ // mengubah ke total hari /= total minggu + sisa hari

  static List<int> totalHari(int hTgl, int hBln, int hThn, int bln, int thn) {
    var result = <int>[0, 0, 0, 0];
    var jbln = hBln + 12 * hThn; // mengubah tahun dan bulan, ke jml bulan
    var jhri = ubahMaju(bln, jbln, thn); // mengubah jml bulan ke hari maju (hanya dari selisih)
    var hrTotal = (hTgl + jhri); // jumlah hari total (selisih + tgl)
    var mngu = ((hTgl + jhri) / 7).floor();
    var sisa = (hTgl + jhri) % 7;
    result[0] = hrTotal; // jml hari dari konversi bln & thn
    result[1] = mngu; // jml konversi minggu
    result[2] = sisa; // sisa pembagian dgn 7
    result[3] = jhri; // konversi hari seluruhnya
    return result;
  }

  static int ubahMaju(int blns, int j, int thns) {
    // mengubah bulan ke hari (maju)
    var hr = 0;
    while (j > 0) {
      hr = hr + Fungsi.fun(blns, thns);
      blns++;
      j--;
      while (blns > 12) {
        blns = blns - 12;
        thns++;
      }
    }
    return hr;
  }

  static int ubahMundur(int blns, int j, int thns) {
    // mengubah bulan ke hari mundur
    var hr = 0;
    while (j > 0) {
      hr = hr + Fungsi.fun(blns - 1, thns);
      blns--;
      j--;
      while (blns <= 0) {
        blns = blns + 12;
        thns--;
      }
    }
    return hr;
  }
}