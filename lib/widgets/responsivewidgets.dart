import 'package:flutter/material.dart';
class ResponsiveWidget{
  static bool isLarge(BuildContext context){
    return MediaQuery.of(context).size.width>1200;
  }
static bool isMedium(BuildContext context){
    return MediaQuery.of(context).size.width>800 && MediaQuery.of(context).size.width<1200;
  }
  static bool isSmall(BuildContext context){
    return MediaQuery.of(context).size.width<800;
  }
}