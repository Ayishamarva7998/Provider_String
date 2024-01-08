import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider.dart';
import 'package:provider/provider.dart';

class homme extends StatelessWidget {
  const homme({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController text1 = TextEditingController();
    TextEditingController text2 = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextFormField(controller: text1),
            TextFormField(
              controller: text2,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<name>(context, listen: false).change1(text1.text);
                  Provider.of<name>(context, listen: false).change2(text2.text);
                },
                child: Text('click here')),
            Consumer<name>(
                builder: (context, value, child) => Text(
                      value.textSum,
                    ))
          ],
        ),
      ),
    );
  }
}
