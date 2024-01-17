import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:trinity_lecture_app/core/commons/theme.dart';
import 'package:trinity_lecture_app/core/injection/injection.dart';
import 'package:trinity_lecture_app/core/routes/app_router.dart';
import 'package:trinity_lecture_app/core/utils/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );
  Bloc.observer = SimpleBlocObserver();
  configureInjection();
  runApp(const TrinityLectureApp());
}

class TrinityLectureApp extends StatelessWidget {
  const TrinityLectureApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          currentFocus.focusedChild!.unfocus();
        }
      },
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (_, child) {
          return MaterialApp.router(
            theme: AppTheme.theme,
            darkTheme: AppTheme.theme,
            routerDelegate: AutoRouterDelegate(router),
            routeInformationParser: router.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
