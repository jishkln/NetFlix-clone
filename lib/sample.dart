import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sudentdatabase/provaider/textdat.dart';

class TextDataForm extends StatelessWidget {
  TextDataForm({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    log('Build');
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Center(
                  child: Consumer<TextProvider>(
                    builder: (BuildContext context, value, Widget? child) {
                      log('name Provaider');
                      return Text('hi ${value.getName}');
                    },
                  ),
                ),
              ),
              TextField(
                controller: nameController,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<TextProvider>(context, listen: false)
                        .changeName(nameController.text);
                  },
                  child: const Text('enter'))
            ],
          ),
        ),
      ),
    );
  }
}
