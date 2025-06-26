import 'package:intl/intl.dart';

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

class YukymController {
  final DateTime dateTime;
  YukymController({required this.dateTime});

  String getTyA() {
    final month = dateTime.month;

    if (month <= 2) {
      return '경오1국';
    } else if (month <= 4) {
      return '경오2국';
    } else if (month <= 6) {
      return '경오3국';
    } else if (month <= 8) {
      return '경오4국';
    } else if (month <= 10) {
      return '경오5국';
    } else {
      return '경오6국';
    }
  }

  String getTyB() {
    final timeModel = YukymTimeModel();

    final hour = dateTime.hour;

    if (hour < 2) {
      return timeModel.ty1;
    } else if (hour < 4) {
      return timeModel.ty2;
    } else if (hour < 6) {
      return timeModel.ty3;
    } else if (hour < 8) {
      return timeModel.ty4;
    } else if (hour < 10) {
      return timeModel.ty5;
    } else if (hour < 12) {
      return timeModel.ty6;
    } else if (hour < 14) {
      return timeModel.ty7;
    } else if (hour < 16) {
      return timeModel.ty8;
    } else if (hour < 18) {
      return timeModel.ty9;
    } else if (hour < 20) {
      return timeModel.ty10;
    } else if (hour < 22) {
      return timeModel.ty11;
    } else {
      return timeModel.ty12;
    }
  }
}