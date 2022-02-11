import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestor/app/shared/constants.dart';

@Injectable()
class CustomDio extends DioForNative {
  CustomDio() {
    options.baseUrl = BASE_URL;
  }
}
