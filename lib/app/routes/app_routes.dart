part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const LOADING = _Paths.LOADING;
}

abstract class _Paths {
  static const LOADING = '/loading';
  static const SPLASH = '/splash';
}
