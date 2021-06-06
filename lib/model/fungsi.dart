class Fungsi {

  String namaHariMundur(int h, int ttl) {
    // mencari nama hari dr ttl (mundur)
    var jml = (h) - (ttl % 7);
    while (jml >= 7) {
      jml = jml % 7;
    }
    if (jml == 0) {
      return 'minggu';
    }
    if ((jml == 1) || (jml == -6)) {
      return 'senin';
    }
    if ((jml == 2) || (jml == -5)) {
      return 'selasa';
    }
    if ((jml == 3) || (jml == -4)) {
      return 'rabu';
    }
    if ((jml == 4) || (jml == -3)) {
      return 'kamis';
    }
    if ((jml == 5) || (jml == -2)) {
      return 'jumat';
    }
    if ((jml == 6) || (jml == -1)) {
      return 'sabtu';
    }
    return 'error';
  }

  static String namahari(int a) {
    if (a == 1) {
      return 'minggu';
    }
    if (a == 2) {
      return 'senin';
    }
    if (a == 3) {
      return 'selasa';
    }
    if (a == 4) {
      return 'rabu';
    }
    if (a == 5) {
      return 'kamis';
    }
    if (a == 6) {
      return 'jumat';
    }
    if (a == 7) {
      return 'sabtu';
    }
    return 'error';
  }

  static int fun(int bulan, int tahun) {
    // mereturn hari dari bln di thn tsb
    // ---------------------
    if (bulan == 0) {
      return 31;
    }
    if (bulan == 1) {
      return 31;
    }
    if (bulan == 2) {
      if (tahun % 100 == 0) {
        if (tahun % 400 == 0) {
          return 29;
        }
        return 28;
      }
      if (tahun % 4 == 0) {
        return 29;
      }
      return 28;
    }
    if (bulan == 3) {
      return 31;
    }
    if (bulan == 4) {
      return 30;
    }
    if (bulan == 5) {
      return 31;
    }
    if (bulan == 6) {
      return 30;
    }
    if (bulan == 7) {
      return 31;
    }
    if (bulan == 8) {
      return 31;
    }
    if (bulan == 9) {
      return 30;
    }
    if (bulan == 10) {
      return 31;
    }
    if (bulan == 11) {
      return 30;
    }
    if (bulan == 12) {
      return 31;
    }
    return 0;
  }
}

