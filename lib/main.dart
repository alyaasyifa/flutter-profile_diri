import 'package:flutter/material.dart';
import 'package:profile_diri/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50), // Padding untuk keseluruhan form
          child: Container(
            width: 800, // Lebar card agar lebih persegi panjang
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), // Padding di dalam container
              child: Column(
                mainAxisSize: MainAxisSize.min, // Mengatur ukuran column agar sesuai dengan kontennya
                children: <Widget>[
                  const Align(
                    alignment: Alignment.centerLeft, // Menyusun teks di sebelah kiri
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue, // Mengatur warna teks menjadi biru
                        fontWeight: FontWeight.bold, // Mengatur gaya teks menjadi tebal
                        fontSize: 24, // Mengatur ukuran font (opsional)
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12), // Jarak antara field
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    obscureText: true, // Menyembunyikan teks password
                  ),
                  const SizedBox(height: 16), // Jarak antara field dan tombol
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Mengatur warna latar belakang tombol menjadi biru
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(), // Pastikan nama kelas sesuai
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white, // Mengatur warna teks menjadi putih
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
