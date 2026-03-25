import 'package:flutter/material.dart';

String confMac = "YA EH CONFIRMADO TIO";

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
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar Confirma'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text("EL FOCKIN CHELO"),
            SizedBox(height: 30,),
            if(confMac=="win")
            Text("Confirmado desde macOS y windOWS"),
            if(confMac!="win")
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text(
                    confMac + "😎",
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
                "CONFIRMO MAC??",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
