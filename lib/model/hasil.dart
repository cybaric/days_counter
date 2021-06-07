import 'package:days_counter/model/fungsi.dart';
import 'package:days_counter/model/ubah_time.dart';

import 'list_time.dart';

class Hasil {
  
  static int tgls = DateTime.now().day;
  static int blns = DateTime.now().month;
  static int thns = DateTime.now().year;
  static int numberday = DateTime.now().weekday;

  static int tgl = 0;
  static int bln = 0;
  static int thn = 0;


  // menghasilkan listTime jml thn, bln, dan hari
  static var listime = ListTime.lengkap(tgls, blns, thns, tgl, bln, thn);
  // mengubah listTime jadi total dlm hari
  static var thasil = UbahTime.totalHari(listime[0], listime[1], listime[2], bln, thn);
  static String namaHariMundur = Fungsi.namaHariMundur(numberday, thasil[0]).toString();

}
