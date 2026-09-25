import 'package:flutter/material.dart';
import 'package:lion_flowers/models/arreglo.dart';

/// Tarjeta individual del catálogo. Al presionarla dispara [onTap],
/// que en HomeScreen se usa para mostrar el SnackBar (R6).
class ArregloCard extends StatelessWidget {
  final Arreglo arreglo;
  final VoidCallback onTap;

  const ArregloCard({
    super.key,
    required this.arreglo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: arreglo.color,
                child: Icon(arreglo.icono, color: Colors.white, size: 30),
              ),
              const SizedBox(height: 10),
              Text(
                arreglo.nombre,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Text(
                '\$${arreglo.precio.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: arreglo.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
