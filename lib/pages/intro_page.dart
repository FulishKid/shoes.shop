import 'package:flutter/material.dart';
import 'package:flutter_app_3/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            // logo at the top
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // title
            const Text(
              'Just DO IT!',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 25,
            ),
            // title
            const Text(
              'Brand new nike shoes with premium quality',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey[850],
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                textColor: Colors.white,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: const Text('Start shopping now!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
