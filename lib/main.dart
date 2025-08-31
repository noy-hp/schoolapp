// lib/main.dart
import 'package:flutter/material.dart';

// Screens
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/grad_screen.dart';       // News & Announcements (PDF viewer for News)
import 'screens/library_screen.dart';
import 'screens/ai_agent_screen.dart';   // Learn with AI
import 'screens/pdf_view_screen.dart';   // Dedicated Library PDF viewer

void main() {
  runApp(const SchoolWebApp());
}

class SchoolWebApp extends StatelessWidget {
  const SchoolWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Web App',
      debugShowCheckedModeBanner: false,
      // Start on Home
      initialRoute: '/',

      // Static routes
      routes: {
        '/':            (_) => const HomeScreen(),
        '/about':       (_) => const AboutScreen(),
        '/library':     (_) => const LibraryScreen(),

        // News page (GradScreen) — keep both names to avoid confusion
        '/grad':        (_) => const GradScreen(),
        '/news':        (_) => const GradScreen(),

        // AI Chat — both names supported
        '/ai-agent':    (_) => const AIAgentScreen(),
        '/learn-ai':    (_) => const AIAgentScreen(),

        // Dedicated Library PDF viewer page
        '/pdf-view':    (_) => const PdfViewScreen(),
      },

      // (Optional) Basic theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0B5ED7)),
        useMaterial3: true,
      ),
    );
  }
}
