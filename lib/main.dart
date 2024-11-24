import 'package:flutter/material.dart';
import 'notification_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => onSuccess(context),
              child: const Text('Mensaje de éxito'),
            ),
            ElevatedButton(
              onPressed: () => onError(context),
              child: const Text('Mensaje de error'),
            ),
            ElevatedButton(
              onPressed: () => onWarning(context),
              child: const Text('Mensaje de advertencia'),
            ),
            ElevatedButton(
              onPressed: () => onInfo(context),
              child: const Text('Mensaje informativo'),
            ),
          ],
        ),
      ),
    );
  }

  void onSuccess(BuildContext context) {
    NotificationService().showNotification(
      context: context,
      message: 'Operación completada con éxito! 👌😉',
      title: '¡Éxito!',
      type: FlushbarType.success,
    );
  }

  void onError(BuildContext context) {
    NotificationService().showNotification(
      context: context,
      message: 'Ups!, ha ocurrido un error 😢',
      title: 'Error',
      type: FlushbarType.error,
    );
  }

  void onWarning(BuildContext context) {
    NotificationService().showNotification(
      context: context,
      message: 'Revisa los datos ingresados',
      title: 'Advertencia',
      type: FlushbarType.warning,
    );
  }

  void onInfo(BuildContext context) {
    NotificationService().showNotification(
      context: context,
      message: 'Nueva actualización disponible',
      type: FlushbarType.info,
    );
  }
}
