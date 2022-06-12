import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => const HomePage())),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/pic.jpg', width: double.infinity, height: 200),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  child: const Center(
                    child: Text('sdfasdf', style: TextStyle(color: Colors.white)),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.blue : Colors.red,
                ),
                onPressed: () {
                  debugPrint('elevated Btn');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined Btn');
                },
                child: const Text('Outlined Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Text Btn');
                },
                child: const Text('Text Button'),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is the Row');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_atm,
                      color: Colors.amber,
                    ),
                    Text('Row Widget'),
                    Icon(
                      Icons.local_atm,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool value) {
                  debugPrint('Switch value: $value');
                  setState(() {
                    isSwitch = value;
                  });
                },
              ),
              Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBoolean) {
                  debugPrint('Checkbox value: $newBoolean');
                  setState(() {
                    isCheckBox = newBoolean;
                  });
                },
              ),
              Image.network('https://picsum.photos/250?image=9'),          ],
          ),
        ));
  }
}
