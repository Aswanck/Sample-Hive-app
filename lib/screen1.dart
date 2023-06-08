import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);
  final _myBox = Hive.box('MyBox');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sample Hive App'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _myBox.put(1, 'XMAN'),
                child: const Text('Write'),
              ),

              ElevatedButton(
                onPressed: () {
                  _myBox.get(1);
                  print(
                    _myBox.get(1),
                  );
                },
                child: const Text('Read'),
              ),
              ElevatedButton(
                onPressed: () => _myBox.delete(1),
                child: const Text('Delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
