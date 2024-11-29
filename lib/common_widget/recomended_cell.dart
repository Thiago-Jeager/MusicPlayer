import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class RecomendedCell extends StatelessWidget {
  final Map mObj;

  const RecomendedCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          // Imagen de fondo
          ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Image.asset(
              mObj["image"],
              width: double.maxFinite,
              height: 200, // Ajusta el tamaño según sea necesario
              fit: BoxFit.cover,
            ),
          ),
          // Contenedor para el texto sobre la imagen
          Container(
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Colors.black.withOpacity(0.5), // Fondo negro con opacidad
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Texto en la parte inferior
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mObj["name"],
                  style: TextStyle(
                    color: TColor.primaryText60,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  mObj["artists"],
                  style: TextStyle(
                    color: TColor.primaryText60, // Texto con opacidad
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
