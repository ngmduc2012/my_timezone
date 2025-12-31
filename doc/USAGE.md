# MyTimezone Usage (Short)

## 1) Add dependency

```yaml
dependencies:
  my_timezone: ^0.0.1+4
```

## 2) Get local timezone

```dart
import 'package:my_timezone/my_timezone.dart';

final String localTimezone = await MyTimezone.getLocalTimezone();
```

## 3) Get available timezones

```dart
final List<String> availableTimezones =
    await MyTimezone.getAvailableTimezones();
```

## 4) Example in a widget

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
