import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
/*
CREATED BY BISWARUP BHATTACHARJEE
EMAIL    : bbiswa471@gmail.com
PHONE NO : 6290272740
*/
class EndpointData{
  EndpointData({@required this.value,this.date}):assert(value!=null);
  final int value;
  final DateTime date;
  @override
  String toString()=>'date: $date , value:$value';
  
}
