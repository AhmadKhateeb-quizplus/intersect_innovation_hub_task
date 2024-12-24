import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:intersect_innovation_hub_task/app/router.dart';
import 'package:intersect_innovation_hub_task/generated/l10n.dart';
import 'package:intersect_innovation_hub_task/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import '../repo/app/app_repo.dart';

final EventBus eventBus = EventBus();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        Provider<AppRepo>(create: (context) => GetIt.instance<AppRepo>()),

      ],
      builder: (context, child) {
        final themeProvider = context.watch<ThemeProvider>();
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Movie Watcher',
          routeInformationProvider: appRouter.routeInformationProvider,
          routeInformationParser: appRouter.routeInformationParser,
          routerDelegate: appRouter.routerDelegate,
          locale: const Locale('ar'),
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate,
          ],
          theme: themeProvider.lightTheme(context),
          builder: (context, Widget? child) {
            return child!;
          },
        );
      },
    );
  }
}
