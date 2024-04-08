import 'package:dicoding_academy_setstate/done_module_list.dart';
import 'package:dicoding_academy_setstate/module_list.dart';
import 'package:flutter/material.dart';

class ModulPage extends StatefulWidget {
  const ModulPage({super.key});

  @override
  State<ModulPage> createState() => _ModulPageState();
}

class _ModulPageState extends State<ModulPage> {
   final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemprograman dengan Dart'),
        actions: [
           IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneModuleList(
                    doneModuleList: doneModuleList,
                  ),
                ),
              );
            },
          )
        ],
      ),
      body: ModuleList(doneModuleList: doneModuleList),
    );
  }
}
