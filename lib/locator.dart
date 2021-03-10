import 'package:get_it/get_it.dart';
import 'package:playground/services/navigationService.dart';

GetIt locator = GetIt.instance;

void setUpLocator(){
  locator.registerLazySingleton(() => NavigationService());

}