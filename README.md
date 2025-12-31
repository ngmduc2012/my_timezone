
[![codecov](https://codecov.io/gh/ngmduc2012/my_timezone/branch/main/graph/badge.svg)](https://codecov.io/gh/ngmduc2012/my_timezone)
[![GitHub](https://img.shields.io/badge/Nguyen_Duc-GitHub-black?logo=github)](https://github.com/ngmduc2012)
_[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy_Me_A_Coffee-blue?logo=buymeacoffee)](https://www.buymeacoffee.com/ducmng12g)_
_[![PayPal](https://img.shields.io/badge/Donate-PayPal-blue?logo=paypal)](https://paypal.me/ngmduc)_
_[![Sponsor](https://img.shields.io/badge/Sponsor-Become_A_Sponsor-blue?logo=githubsponsors)](https://github.com/sponsors/ngmduc2012)_
_[![Support Me on Ko-fi](https://img.shields.io/badge/Donate-Ko_fi-red?logo=ko-fi)](https://ko-fi.com/I2I81AEJG8)_  

`my_timezone` is a Flutter plugin that returns the local timezone and available timezones on Android, iOS, macOS, and web.

## Features

- Get the local timezone from the native layer.
- Get the list of available timezones.
- Works across Android, iOS, macOS, and web.

## Installation

Add the following to your `pubspec.yaml`:

```yaml
my_timezone: ^0.0.1+4
```

Then run:

```sh
flutter pub get
```

## Basic usage

```dart
import 'package:my_timezone/my_timezone.dart';

final String localTimezone = await MyTimezone.getLocalTimezone();
final List<String> availableTimezones =
    await MyTimezone.getAvailableTimezones();
```

## Example in a widget

```dart
class _MyAppState extends State<MyApp> {
  String? _timezone;

  @override
  void initState() {
    super.initState();
    _loadTimezone();
  }

  Future<void> _loadTimezone() async {
    final timezone = await MyTimezone.getLocalTimezone();
    if (!mounted) return;
    setState(() => _timezone = timezone);
  }
}
```

## Contribution

If you have any suggestions or find any issues, feel free to open an issue or submit a pull request on [GitHub](https://github.com/ngmduc2012/my_timezone).

## Developer Team:

Any comments please contact us [ThaoDoan](https://github.com/mia140602) and [DucNguyen](https://github.com/ngmduc2012).
