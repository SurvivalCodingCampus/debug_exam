class YukymFixedController {
  static String getTyA() => '경오${((DateTime.now().month - 1) ~/ 2) + 1}국';
  static String getTyB() => '갑자${DateTime.now().hour ~/ 2 + 1}국';
}
