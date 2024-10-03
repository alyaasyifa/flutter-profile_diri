import 'package:flutter/material.dart';
import 'package:profile_diri/page2.dart';

void main() => runApp(
  const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({super.key});
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


        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                color: const Color.fromARGB(200, 206, 226, 245),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      const CircleAvatar(
                        radius: 100.0,
                        backgroundImage: 
                        AssetImage('assets/pan.jpg'),
                      ),
                      const Text("Alya Nursyifa",
                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)
                      ),

                      const Text("Vocational High School Student at SMK Wikrama Bogor",
                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 87, 117, 148))
                      ),

                      TextButton(onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const page2()),
                          );
                      }, child:const Text('See More')
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
