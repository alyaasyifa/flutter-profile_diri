import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background3.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(height: 10),
                const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/al.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Alya Nursyifa",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Card(
                  color: Color.fromARGB(200, 206, 226, 245),
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "About",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "I am a student of SMK Wikrama Bogor majoring in Software and Game Development, I am in grade 12.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "History",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "I graduated from SMPN 1 Cicurug and graduated from SDN 3 Nyangkowek.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 10,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          color: const Color.fromARGB(200, 206, 226, 245),
                          padding: const EdgeInsets.all(
                              15.0), // Menambahkan padding di sekitar teks
                          child: const Text(
                            "Skill",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Column(
                            // Gunakan Column untuk menampung beberapa widget secara vertikal
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "PHP",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                  height: 2), // Menambahkan jarak antar teks
                              Text(
                                "Javascript",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Laravel",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "React Native",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
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
