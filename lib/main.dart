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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45), // Padding untuk keseluruhan form
          child: SingleChildScrollView( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/login.png', // Ganti dengan path gambar Anda
                  height: 120, // Sesuaikan tinggi gambar
                ),
                const SizedBox(height: 0),
                Container(
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
                            "Form Profile",
                            style: TextStyle(
                              color: Colors.blue, // Mengatur warna teks menjadi biru
                              fontWeight: FontWeight.bold, // Mengatur gaya teks menjadi tebal
                              fontSize: 24, // Mengatur ukuran font (opsional)
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Nama",
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
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _roleController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Role",
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
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _schoolController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Sekolah",
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
                        const SizedBox(height: 16), // Jarak antara field
                        TextFormField(
                          controller: _deskripsiController,
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: "Masukkan Deskripsi",
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
                        const SizedBox(height: 16), // Jarak antara field dan tombol
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Mengatur warna latar belakang tombol menjadi biru
                          ),
                          onPressed: () {
                            if (_nameController.text.isEmpty ||
                                _roleController.text.isEmpty ||
                                _schoolController.text.isEmpty ||
                                _deskripsiController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'Isi form login dengan lengkap!',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(
                                    name: _nameController.text,
                                    role: _roleController.text,
                                    school: _schoolController.text,
                                    deskripsi: _deskripsiController.text,
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "Submit Data",
                            style: TextStyle(
                              color: Colors.white, // Mengatur warna teks menjadi putih
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
