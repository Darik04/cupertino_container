
# Cupertino Container

Cupertino container package lets you add a container with cupertino rounded corners to your Flutter app.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  cupertino_container: ^1.0.0
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:cupertino_container/cupertino_container.dart';
```

## Example
There are a number of properties that you can modify:

 - radius 
 - child 
 - decoration 
 - margin 
 - padding 
 - onPressed 
 - height
 - width               

<hr>

<table>
<tr>
<td>

```dart
class DemoScreen extends StatelessWidget {  
  const DemoScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: CupertinoContainer(
            radius: BorderRadius.circular(30),/// BORDER RADIUS CUPERTINO
            width: 200,
            height: 100,
            child: const Center(
                child: Text(
                '30 rounded', 
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                )
            ),
        ),
      ),  
    );  
  }  
}
```

</td>
<td>
<img  src="https://github.com/darik04/cupertino_container/blob/main/screenshots/screenshot1.png" alt="Demo">
</td>
</tr>
</table>

## Next Goals

 - [x] Add onPressed for functions.
 Now, you can specify the onPressed and specify a function.
 
 - [x] Change other attributes of CupertinoContainer.
 Change `margin`, `padding` and other properties.
 
 - [ ] Add more containers to the package.