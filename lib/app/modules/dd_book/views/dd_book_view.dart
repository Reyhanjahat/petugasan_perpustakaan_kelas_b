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
      body: Center(
    child: Form(
    key: controller.formKey,
      child: Column(
          children: [
            TextFormField(
              controller: controller.judulController,
              decoration: InputDecoration(hintText: "Masukan Judul"),
              validator: (value){
                if (value!.length <5){
                  return "Username tidak boleh kosong";
                }
                return null;
              },
            ),
            TextFormField(
              controller: controller.penulisController,
              decoration: InputDecoration(hintText: "Masukan Penulis"),
              validator: (value){
                if (value!.length <5){
                  return "Password tidak boleh kosong";
                }
                return null;
              },
            ),
            TextFormField(
              controller: controller.penerbitController,
              decoration: InputDecoration(hintText: "Masukan Penerbit"),
              validator: (value){
                if (value!.length <5){
                  return "Username tidak boleh kosong";
                }
                return null;
              },
            ),
            TextFormField(
              controller: controller.tahunTerbitController,
              decoration: InputDecoration(hintText: "Masukan Tahun Terbit"),
              validator: (value){
                if (value!.length <5){
                  return "Username tidak boleh kosong";
                }
                return null;
              },
            ),
            Obx(() => controller.loading.value?
            CircularProgressIndicator():
            ElevatedButton(onPressed:(){
              controller.post();
            }, child: Text("Tambah"))
            )
          ]),
    ),
    ));
  }
}
