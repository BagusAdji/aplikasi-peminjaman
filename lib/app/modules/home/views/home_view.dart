import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageSliderWidget(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.BOOK),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.book, size: 50),
                      SizedBox(height: 10),
                      Text("List Buku", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.PEMINJAMAN),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.people, size: 50),
                      SizedBox(height: 10),
                      Text("List Peminjam", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20), // Atur padding di sini
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25), // Atur radius sudut di sini
        color: Colors.grey[200], // Atur warna latar belakang jika diperlukan
      ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10), // Atur radius sudut di sini juga
      child: ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        children: [
          Image.network(
            'https://d1pddsf91ofvl9.cloudfront.net/wp-content/uploads/2023/05/26222054/judul-novel-2-1-1024x768.jpg',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://img.id.my-best.com/product_images/8a72fce9c8e95e7a33b9c351f994b7b8.png?ixlib=rails-4.3.1&q=70&lossless=0&w=800&h=800&fit=clip&s=1338b132d02a4673e1ae016774278eee',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://awsimages.detik.net.id/community/media/visual/2021/12/08/peluncuran-novel-buya-hamka-karya-a-fuadi_43.jpeg?w=1200',
            fit: BoxFit.cover,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
      ),
    ),
    );
  }
}