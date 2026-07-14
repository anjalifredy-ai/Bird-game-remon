import 'package:flutter/material.dart';

// ─────────────────────────────────────────────────────────────
// Bird Game — Stage 1: Skeleton
// This is a placeholder entry point just to prove the GitHub
// Actions build pipeline works end-to-end (green APK).
//
// In Stage 2 this gets replaced with the real Flame game engine,
// main menu, mode select, gameplay, and game over screens.
// ─────────────────────────────────────────────────────────────

void main() {
  runApp(const BirdGameApp());
}

class BirdGameApp extends StatelessWidget {
  const BirdGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bird Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF4FC3F7),
      ),
      home: const _SkeletonHome(),
    );
  }
}

class _SkeletonHome extends StatelessWidget {
  const _SkeletonHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF87CEEB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.flutter_dash, size: 96, color: Colors.white),
            SizedBox(height: 16),
            Text(
              'Bird Game',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Build pipeline check — Stage 1 OK ✅',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
