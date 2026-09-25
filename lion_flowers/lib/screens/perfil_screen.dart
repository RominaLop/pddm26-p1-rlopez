import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Perfil"),
        backgroundColor:Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Aquí se mostrarán tus datos de perfil"),
      ),
    );
  }
}
