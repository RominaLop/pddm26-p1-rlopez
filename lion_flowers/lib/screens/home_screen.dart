import 'package:flutter/material.dart';
import 'package:lion_flowers/models/arreglo.dart';
import 'package:lion_flowers/widgets/header_bienvenida.dart';
import 'package:lion_flowers/widgets/arreglo_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 
  static final List<Arreglo> _arreglos = [
    Arreglo(nombre: "Rosas Rojas", precio: 350, icono: Icons.local_florist, color: Colors.red),
    Arreglo(nombre: "Tulipanes", precio: 280, icono: Icons.local_florist, color: Colors.pink),
    Arreglo(nombre: "Girasoles", precio: 240, icono: Icons.local_florist, color: Colors.orange),
    Arreglo(nombre: "Orquídeas", precio: 420, icono: Icons.local_florist, color: Colors.purple),
    Arreglo(nombre: "Lirios", precio: 300, icono: Icons.local_florist, color: Colors.deepPurple),
    Arreglo(nombre: "Margaritas", precio: 190, icono: Icons.local_florist, color: Colors.amber),
    Arreglo(nombre: "Claveles", precio: 210, icono: Icons.local_florist, color: Colors.redAccent),
    Arreglo(nombre: "Peonías", precio: 380, icono: Icons.local_florist, color: Colors.pinkAccent),
    Arreglo(nombre: "Hortensias", precio: 330, icono: Icons.local_florist, color: Colors.blue),
    Arreglo(nombre: "Ramo Mixto", precio: 450, icono: Icons.local_florist, color: Colors.teal),
    Arreglo(nombre: "Bouquet Boda", precio: 600, icono: Icons.local_florist, color: Colors.green),
    Arreglo(nombre: "Ramo XV´s", precio: 260, icono: Icons.local_florist, color: Colors.indigo),
  ];

 
  void _mostrarFeedback(BuildContext context, String nombre) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Agregaste \"$nombre\" a tu selección")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lion Flowers"),
        backgroundColor:Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // R3: encabezado con texto + elemento visual
            const HeaderBienvenida(),
            const SizedBox(height: 20),
            const Text(
              "Catálogo",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Expanded(
              child: GridView.builder(
                itemCount: _arreglos.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (context, index) {
                  final arreglo = _arreglos[index];
                  return ArregloCard(
                    arreglo: arreglo,
                    onTap: () => _mostrarFeedback(context, arreglo.nombre),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
