import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Carrega o arquivo .env
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat AI'),
          backgroundColor: Colors.blue,
        ),
        body: const Padding(padding: EdgeInsets.all(8.0), child: ChatScreen()),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';

    return LlmChatView(
      provider: GeminiProvider(
        model: GenerativeModel(
          model: 'models/gemini-2.5-flash',
          apiKey: apiKey,
        ),
      ),
      enableVoiceNotes: true,
      enableAttachments: true,
    );
  }
}
