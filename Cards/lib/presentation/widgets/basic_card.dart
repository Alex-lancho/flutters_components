import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {
  const BasicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          _showCardModal(context, "Título de la tarjeta", "Descripción de la tarjeta básica.");
        },
        child: Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Tarjeta Básica'),
          ),
        ),
      ),
    );
  }

  // Función para mostrar el modal
  void _showCardModal(BuildContext context, String title, String descripcion) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Botón para cerrar
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(); // Cerrar el modal
                      },
                      child: const Icon(Icons.close, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Ícono informativo
                  const Icon(Icons.info, size: 50, color: Colors.blue),
                  const SizedBox(height: 16.0),
                  // Título
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Descripción
                  Text(
                    descripcion,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14.0, color: Colors.black54),
                  ),
                  const SizedBox(height: 16.0),
                  // Botón de acción
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Cerrar el modal
                    },
                    child: const Text('Cerrar'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
