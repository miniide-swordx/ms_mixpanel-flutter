import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelManager {
  static Mixpanel? _instance;

  static Future<Mixpanel> init() async {
    if (_instance == null) {
      _instance = await Mixpanel.init("YOUR_PROJECT_TOKEN",
          optOutTrackingDefault: false, trackAutomaticEvents: true);
      _instance?.setServerURL('https://log-sit.wownow.net/static/images/1.gif');
      _instance?.setUseIpAddressForGeolocation(false);
    }
    return _instance!;
  }
}
