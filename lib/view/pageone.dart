import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/pagethree.dart';

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page one"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text("Page two"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/Pageone");
                },
              ),
              MaterialButton(
                child: const Text("Page three"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(Pagethree());
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
                  Get.offAll(Pageone());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
