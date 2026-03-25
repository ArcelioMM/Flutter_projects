
import 'package:flutter/material.dart';

String confMac = "?";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Confirma'),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          children: [
          Text("EL FOCKIN CHELO"),
          Text("Ahora si estamos activo, \nconfirmao desde Windows10!\nconfirmao desde MacOS"+confMac+""),
          if (confMac == "?")
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                confMac="!\n      Izzzzzzz Brrrr Brrrrr";
                final snackBar = SnackBar(
                  content: const Text(
                    '¡Hola! Este es un SnackBar estilizado 😎',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  backgroundColor: Colors.indigo.shade400,
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(
                    label: 'Cerrar',
                    textColor: Colors.yellowAccent,
                    onPressed: () {
                      // Acción al presionar "Cerrar"
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text(
                "CONFIRMA MAC!!",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
