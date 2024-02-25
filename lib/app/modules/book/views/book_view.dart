import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

import '../controllers/book_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0), // Menambahkan padding kiri dan kanan
        child: controller.obx((state) => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Mengatur jumlah kolom
            mainAxisSpacing: 10.0, // Spasi vertikal antara item
            crossAxisSpacing: 10.0, // Spasi horizontal antara item
            childAspectRatio: 0.8, // Rasio lebar-ke-tinggi setiap item, membuat item berbentuk persegi
          ),
          itemCount: state!.length,
          itemBuilder: (ctx, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.ADD_PEMINJAMAN,
                    parameters: {'id': (state[index].id ?? 0).toString(), 'judul': state[index].judul ?? ""},
                  );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${state[index].judul} (${state[index].tanggalPublikasi})",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "${state[index].penulis}, ${state[index].penerbit}",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {}, // Kosongkan onPressed di sini
                          child: const Text("Pinjam"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}



