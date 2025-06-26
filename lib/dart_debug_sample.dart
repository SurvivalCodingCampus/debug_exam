
/// _getTimeDataOne() 는 현재 코드에서는 의미없는 코드 입니다.
/// _getTimeDataOne를 통해 YukymTimeModel를 24번 add 하지만 데이터도 같고
/// 사용은 첫번째 리스트만 사용하고 있습니다.
/// 이에 해당 로직을 제거 합니다.
/// 또한 달과 시간을 비교하고 있으므로 굳이 String으로 변환하여 substring을 사용할 필요가 없어 보입니다.
/// 현재 시간을 통해 바로 사용하도록 변경했습니다.

class YukymController {
  final YukymTimeModel _timeModel = YukymTimeModel();

  String getTyA() {
    final now = DateTime.now();

    switch (now.month) {
      case 1:
      case 2:
        return '경오1국';
      case 3:
      case 4:
        return '경오2국';
      case 5:
      case 6:
        return '경오3국';
      case 7:
      case 8:
        return '경오4국';
      case 9:
      case 10:
        return '경오5국';
      case 11:
      case 12:
        return '경오6국';
      default:
        return _timeModel.ty1;
    }
  }

  String getTyB() {
    final now = DateTime.now();

    if (now.hour < 2) return _timeModel.ty1;
    if (now.hour < 6) return _timeModel.ty2;
    if (now.hour < 8) return _timeModel.ty3;
    if (now.hour < 10) return _timeModel.ty4;
    if (now.hour < 12) return _timeModel.ty5;
    if (now.hour < 14) return _timeModel.ty6;
    if (now.hour < 18) return _timeModel.ty7;
    if (now.hour < 20) return _timeModel.ty8;
    if (now.hour < 22) return _timeModel.ty9;
    return _timeModel.ty10;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국';
  String ty2 = '갑자2국';
  String ty3 = '갑자3국';
  String ty4 = '갑자4국';
  String ty5 = '갑자5국';
  String ty6 = '갑자6국';
  String ty7 = '갑자7국';
  String ty8 = '갑자8국';
  String ty9 = '갑자9국';
  String ty10 = '갑자10국';
  String ty11 = '갑자11국';
  String ty12 = '갑자12국';
}
