import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/home.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagethree.dart';
import 'package:getx/view/pagetwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      getPages: [
        GetPage(name: "/pageone", page: () => Pageone()),
        GetPage(name: "/pagetwo", page: () => Pagetwo()),
        GetPage(name: "/pagethree", page: () => Pagethree()),
      ],
    );
  }
}

/************************Sammary of lesson****************************/

/*
  Get.to(pageclass()),                                 screen over screen
  Get.off(pageclass()),                                delete current screen add new screen
  Get.offAll(pageclass()),                             delete all screens in back add new screen lonly
  Get.back(),                                          go to back screen if it is possible
  Get.toNamed("/pageNameInGetPagesMain"),              screen over screen named in GetPages
  Get.offNamed("/pageNameInGetPagesMain"),             delete current screen add new screen named in GetPages

  /****************Routing*********************/
  getPages: [
        GetPage(name: "/pageone", page: () => Pageone()),
        GetPage(name: "/pagetwo", page: () => Pagetwo()),
        GetPage(name: "/pagethree", page: () => Pagethree()),
      ],
*/