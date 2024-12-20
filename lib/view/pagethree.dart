import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagetwo.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page three"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text("Page one"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(Pageone());
                },
              ),
              MaterialButton(
                child: const Text("Page two"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(Pagetwo());
                },
              ),
              MaterialButton(
                child: const Text("Back"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.back();
                },
              ),
              MaterialButton(
                child: const Text("off all"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.offAll(Pagethree());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
