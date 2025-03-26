class YukymController {
  // 12월을 두 달 단위로 나눈 경오 필드
  static const gzs = ['경오1국', '경오2국', '경오3국', '경오4국', '경오5국', '경오6국'];

  // 24시간을 두 시간 단위로 나눈 갑자 필드
  static const tys = [
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

  final _nowTime = DateTime.now();

  String getTyA() {
    final nowMonth = _nowTime.month;
    final index = nowMonth ~/ 2;
    return gzs[index];
  }

  String getTyB() {
    final nowHour = _nowTime.hour;
    final index = nowHour ~/ 2;
    return tys[index];
  }
}
