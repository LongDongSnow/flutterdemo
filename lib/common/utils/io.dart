import 'dart:io';
// import 'dart:async';
import 'package:path_provider/path_provider.dart';


void getPath() async {
  Directory tempDir = await getTemporaryDirectory();
  String tempPath = tempDir.path;
  print(tempPath);

  Directory appDocDir = await getApplicationDocumentsDirectory();
  String appDocPath = appDocDir.path;
  print(appDocPath);
}

// Future<File> _getLocalFile() async {
//     // get the path to the document directory.
//     String dir = (await getApplicationDocumentsDirectory()).path;
//     return new File('$dir/counter.txt');
// }

Future<String> getFilesDir() async {
    // get the path to the document directory.
    String dir = (await getApplicationDocumentsDirectory()).path;
    return dir;
}

Future<String> whiteFile(fileName,contents) async {
    String dir = await getFilesDir();
    File file = new File('$dir/$fileName');
    file.writeAsString(contents);
    return "写入成功:$dir/$fileName";
}

 Future<String> readFile(fileName) async {
    try {
      String dir = await getFilesDir();
      File file = new File('$dir/$fileName');
      // read the variable as a string from the file.
      String contents = await file.readAsString();
      return contents;
    } catch(error) {
      return error;
    }
  }
