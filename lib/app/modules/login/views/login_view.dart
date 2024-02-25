import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';


class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool obscureText = true; // Deklarasi dan inisialisasi variabel obscureText

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Colors.white
                ])),
        child: Form(
          key: controller.formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 12,
                shape: RoundedRectangleBorder( // Menggunakan RoundedRectangleBorder untuk menentukan bentuk border
                  borderRadius: BorderRadius.circular(20), // Menentukan radius border yang diinginkan
                ),
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black54,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              Material(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                                  elevation: 2,
                                  child: AspectRatio(
                                      aspectRatio: 7 / 1,
                                      child: Center(
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                                hintText: 'Username',
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.all(8)
                                            ),
                                            controller: controller.usernameController,
                                            keyboardType: TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please enter your username';
                                              }
                                              return null;
                                            },
                                          )
                                      )
                                  )
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 16),
                                  child: Material(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                                      elevation: 2,
                                      child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: AspectRatio(
                                                    aspectRatio: 7 / 1,
                                                    child: Center(
                                                        child: TextFormField(
                                                          decoration: const InputDecoration(
                                                              hintText: 'Password',
                                                              border: InputBorder.none,
                                                              contentPadding: EdgeInsets.all(8)
                                                          ),
                                                          controller: controller.passwordController,
                                                          obscureText: obscureText,
                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter your password';
                                                            }
                                                            return null;
                                                          },
                                                        )
                                                    )
                                                )
                                            )
                                          ]
                                      )
                                  )
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: (){
                                    controller.login();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orangeAccent, // Warna latar belakang tombol
                                    onPrimary: Colors.white, // Warna teks pada tombol
                                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Padding tombol
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8), // Sudut tombol
                                    ),
                                  ),
                                  child: const Text("Login"),
                                ),
                              )

                            ],
                          )),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


