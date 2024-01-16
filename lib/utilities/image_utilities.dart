import 'package:badminton_line_judge_app/constants/api.dart';
import 'package:badminton_line_judge_app/constants/environment.dart';

class ImageUtilities {
  static String getUri({
    String? style,
    required String path,
    String? breakpointSuffix,
  }) {
    return Uri(
      host: environment.imgHost,
      path: path,
      scheme: ApiConstants.schemeHttps,
    ).toString();
  }

  static Map<String, String>? getHeaders() {
    return {
      'Authorization': environment.webAuthKey,
    };
  }
}
