import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Android());
}

class Android extends StatelessWidget {
  const Android({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Android Version'),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          backgroundColor: const Color.fromARGB(88, 0, 20, 132),
          actions: <Widget>[
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(88, 0, 20, 132),
              child: const Icon(
                Icons.android,
                color: Color.fromARGB(255, 0, 228, 27),
              ),
              onPressed: () {
                AudioPlayer play = AudioPlayer();
                play.play(AssetSource('sounds/computer.mp3'));
              },
            ),
          ],
        ),
        backgroundColor: const Color(0xff060e26),
        body: Column(
          children: [
            const CircleAvatar(
              radius: 165,
              backgroundColor: Color(0xff444e7b),
              child: CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/android-bats.png'),
              ),
            ),
            const Text(
              'Android',
              style: TextStyle(
                  color: Color(0xffc2caff),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            const Text(
              'android Version 14.0',
              style: TextStyle(
                  color: Color.fromARGB(255, 101, 106, 133),
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'Pacifico'),
            ),
            GestureDetector(
              onTap: () {
                AudioPlayer play = AudioPlayer();
                play.play(AssetSource('sounds/computer.mp3'));
                play.setVolume(1);
              },
              child: Card(
                color: const Color(0xff060e26),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: const ListTile(
                  leading: SizedBox(
                    height: 50,
                    child: Image(
                      image: AssetImage(
                        'assets/images/ui-guidelines.png',
                      ),
                    ),
                  ),
                  title: Text(
                    'Welcome to the Android 14 Preview, a program that gives you everything you need to make your apps compatible with and build for the next version of Android. You can get started right away by downloading the Preview SDK and tools.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 76, 80, 101),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 101, 106, 133),
              thickness: 1,
              indent: 50,
              endIndent: 50,
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 197, 208, 255),
                    borderRadius: BorderRadius.circular(35)),
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.android,
                      size: 50,
                      color: Color(0xff00041c),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      'Android 14',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(
                      flex: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              height: 65,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 197, 208, 255),
                  borderRadius: BorderRadius.circular(35)),
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Image(
                            image:
                                AssetImage('assets/images/Android_14.PNG.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Upside Down Cake',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   child: Padding(
            //     padding: const EdgeInsets.all(0),
            //     child: FloatingActionButton(
            //       backgroundColor: const Color.fromARGB(105, 0, 20, 132),
            //       child: const Icon(
            //         Icons.android,
            //         color: Color.fromARGB(255, 0, 228, 27),
            //       ),
            //       onPressed: () {
            //         AudioPlayer play = AudioPlayer();
            //         play.play(AssetSource('sounds/computer.mp3'));
            //         play.setVolume(1);
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
