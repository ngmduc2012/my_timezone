[![GitHub](https://img.shields.io/badge/Nguyen_Duc-GitHub-black?logo=github)](https://github.com/ngmduc2012)
_[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy_Me_A_Coffee-blue?logo=buymeacoffee)](https://www.buymeacoffee.com/ducmng12g)_
_[![PayPal](https://img.shields.io/badge/Donate-PayPal-blue?logo=paypal)](https://paypal.me/ngmduc)_
_[![Sponsor](https://img.shields.io/badge/Sponsor-Become_A_Sponsor-blue?logo=githubsponsors)](https://github.com/sponsors/ngmduc2012)_
_[![Support Me on Ko-fi](https://img.shields.io/badge/Donate-Ko_fi-red?logo=ko-fi)](https://ko-fi.com/I2I81AEJG8)_

# My Timezone

A flutter plugin for getting the local timezone of the Ios, Macos and Android.

## Installation

Add following dependency in pubspec.yaml file:

```yaml
my_timezone: ^last_version
```
Then, run

```bash
$ flutter pub get 
```

## Features

- [X] iOS Support
- [X] Android Support

## Usage

#### Get the timezone
```dart
import 'package:my_timezone/my_timezone.dart';


final String currentTimeZone = await MyTimezone.getLocalTimezone();

final List<String> availableTimezones = await MyTimezone.getAvailableTimezones();
```

## Developer Team:
Any comments please contact us [ThaoDoan](https://github.com/mia140602) and [DucNguyen](https://github.com/ngmduc2012)



