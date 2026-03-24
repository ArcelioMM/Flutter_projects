import 'package:flutter/material.dart';

class MiApp extends StatefulWidget {
  const MiApp({super.key});

  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Mi primera fkn app en windows bro!!'),
      ),
    );
  }
}