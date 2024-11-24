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
          _showCardModal(context, "Titulo de card", "Descripcion de card basico");
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

                const SizedBox(
                  height: 50,
                  child: const Icon(Icons.info, size: 50, color: Colors.blue),
                ),

                Text(
                  title,
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),

                Text(descripcion, textAlign: TextAlign.center),
              ],
            ),
          ),
        );
      },
    );
  }
}
