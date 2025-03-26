class Calculator {
  static String kyeongOh(DateTime date) {
    int month = date.month;

    List<String> names = [
      '경오1국',
      '경오1국',
      '경오2국',
      '경오2국',
      '경오3국',
      '경오3국',
      '경오4국',
      '경오4국',
      '경오5국',
      '경오5국',
      '경오6국',
      '경오6국',
    ];

    return names[month - 1];
  }

  static String gabJa(DateTime date) {
    int index = date.hour ~/ 2;
    List<String> names = [
      '갑자1국',
      '갑자2국',
      '갑자3국',
      '갑자4국',
      '갑자5국',
      '갑자6국',
      '갑자7국',
      '갑자8국',
      '갑자9국',
      '갑자10국',
      '갑자11국',
      '갑자12국',
    ];

    return names[index];
  }
}

class YukymController {
  final DateTime now = DateTime.now();

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    return Calculator.kyeongOh(now);
  }

  String getTyB() {
    return Calculator.gabJa(now);
  }
}
