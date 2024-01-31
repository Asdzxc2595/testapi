import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'homepage.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'อะไรวะะะ',
    debugShowCheckedModeBanner: false,
    home:Homepage());
  }
}