import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Flutter3d extends StatefulWidget {
  const Flutter3d({super.key});

  @override
  State<Flutter3d> createState() => _Flutter3dState();
}

class _Flutter3dState extends State<Flutter3d> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ModelViewer(
          backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
          src: 'assets/models/sofa_free_version.glb',
          alt: 'A 3D model of an astronaut',
          ar: true,
          autoRotate: true,
          iosSrc: 'assets/models/sofa_free_version.glb',
          disableZoom: true,
        ),
    );
  }
}