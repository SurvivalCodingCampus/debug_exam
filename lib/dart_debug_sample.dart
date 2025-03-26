import 'package:intl/intl.dart';

class YukymController {

  // DateTime.parse(_userData.value!.selectDate)
  //Fix : mm -> MM으로 변경
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (timeDataOne.isNotEmpty) {
      nowTime = timeDataOne.first.ty1;

      final month = nowDate.substring(5, 7);

      if (month == '01' || month == '02') {
        return '경오1국';
      } else if (month == '03' || month == '04') {
        return '경오2국';
      } else if (month == '05' || month == '06') {
        return '경오3국';
      } else if (month == '07' || month == '08') {
        return '경오4국';
      } else if (month == '09' || month == '10') {
        return '경오5국';
      } else if (month == '11' || month == '12') {
        return '경오6국';
      }
      return nowTime;
    } else {
      // Handle the case when the list is empty
      return '경오7국';  // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne =
    _getTimeDataOne(nowDate);


    String result = timeDataOne.first.ty12;

    final nowTime = DateTime.now();


    if (nowTime.hour >= 23 && nowTime.hour < 1) {
      return timeDataOne.first.ty1;
    } else if (nowTime.hour >= 1 && nowTime.hour < 3) {
      return timeDataOne.first.ty2;
    } else if (nowTime.hour >= 3 && nowTime.hour < 5) {
      return timeDataOne.first.ty3;
    } else if (nowTime.hour >= 5 && nowTime.hour < 7) {
      return timeDataOne.first.ty4;
    } else if (nowTime.hour >= 7 && nowTime.hour < 9) {
      return timeDataOne.first.ty5;
    } else if (nowTime.hour >= 9 && nowTime.hour < 11) {
      return timeDataOne.first.ty6;
    } else if (nowTime.hour >= 11 && nowTime.hour < 13) {
      return timeDataOne.first.ty7;
    } else if (nowTime.hour >= 13 && nowTime.hour < 15) {
      return timeDataOne.first.ty8;
    } else if (nowTime.hour >= 15 && nowTime.hour < 17) {
      return timeDataOne.first.ty9;
    } else if (nowTime.hour >= 17 && nowTime.hour < 19) {
      return timeDataOne.first.ty10;
    }else if(nowTime.hour >= 19 && nowTime.hour < 19){}

    return result;
  }

  List<YukymTimeModel> _getTimeDataOne(String nowDate) {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국'; //23-01 (자)
  String ty2 = '갑자2국'; //01-03 (축)
  String ty3 = '갑자3국'; //03-05
  String ty4 = '갑자4국'; //05-07
  String ty5 = '갑자5국'; //07-09
  String ty6 = '갑자6국'; //09-11
  String ty7 = '갑자7국'; //11-13
  String ty8 = '갑자8국'; //13-15
  String ty9 = '갑자9국'; //15-17
  String ty10 = '갑자10국'; //17-19
  String ty11 = '갑자11국'; //19-21
  String ty12 = '갑자12국'; //21-23
}