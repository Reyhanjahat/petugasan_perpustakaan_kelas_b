import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dd_book_controller.dart';

class DdBookView extends GetView<DdBookController> {
  const DdBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DdBookView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DdBookView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
