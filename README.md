[![Buy Me A Coffee](https://cdn.buymeacoffee.com/buttons/v2/default-orange.png)](https://buymeacoffee.com/ducmng12g)


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



