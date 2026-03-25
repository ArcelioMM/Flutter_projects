
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String confMac = "";

  @override
  void initState() {
    super.initState();
    confMac = "win";
    // Aquí puedes inicializar valores o cargar datos
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar Confirma'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            const Text("EL FOCKIN CHELO"),
            const SizedBox(height: 30),
            if (confMac != "win")
              const Text("Confirmado desde macOS y windOWS"),
            if (confMac != "mac")
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    confMac = "mac"; // actualiza estado y redibuja
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Tamos volandooo brrrrrr😎")),
                  );
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
