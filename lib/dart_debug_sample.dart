class YukymController {
  final DateTime dateTime;

  YukymController({required this.dateTime});

  String getTyA() {
    final month = dateTime.month;
    var result = '경오7국';

    switch (month) {
      case 1 || 2:
        result = '경오1국';
      case 3 || 4:
        result = '경오2국';
      case 5 || 6:
        result = '경오3국';
      case 7 || 8:
        result = '경오4국';
      case 9 || 10:
        result = '경오5국';
      case 11 || 12:
        result = '경오6국';
    }

    return result;
  }

  String getTyB() {
    final hour = dateTime.hour;
    var result = '갑자1국';

    switch (hour) {
      case >= 0 && < 2:
        result = '갑자1국';
      case >= 2 && < 4:
        result = '갑자2국';
      case >= 4 && < 6:
        result = '갑자3국';
      case >= 6 && < 8:
        result = '갑자4국';
      case >= 8 && < 10:
        result = '갑자5국';
      case >= 10 && < 12:
        result = '갑자6국';
      case >= 12 && < 14:
        result = '갑자7국';
      case >= 14 && < 16:
        result = '갑자8국';
      case >= 16 && < 18:
        result = '갑자9국';
      case >= 18 && < 20:
        result = '갑자10국';
      case >= 20 && < 22:
        result = '갑자11국';
      case >= 22 && < 24:
        result = '갑자12국';
    }

    return result;
  }
}
