
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());

  // runApp(MaterialApp(
  //   theme: ThemeData(
  //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  //     fontFamily: 'Tomato',
  //     useMaterial3: true,
  //   ),
  //   home:  const SafeArea(
  //       child: Scaffold(
  //         body: MyWidget(),
  //
  //       )
  //   ),
  // debugShowCheckedModeBanner: false,
  // ));
}

// class MyWidget extends StatelessWidget {
//   final bool loading;
//   const MyWidget(this.loading, {super.key});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build\
//     return loading ? const CircularProgressIndicator() : const Text('State');
//   }
// }

// class MyWidget2 extends StatefulWidget {
//   final bool loading;
//   const MyWidget2(this.loading, {super.key});
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyWidget2State();
//   }
// }
//
// class MyWidget2State extends State<MyWidget2> {
//   late bool _localLoading;
//   @override
//   void initState() {
//     _localLoading = widget.loading;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return _localLoading ? const CircularProgressIndicator() : FloatingActionButton(onPressed: onPressed);
//   }
//
//   void onPressed() {
//     setState(() {
//       _localLoading = true;
//     });
//   }
// }


// Text Widget
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build\
//     return const Text(
//       'Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu.'
//           ' Hãy xem xét đoạn mã sau.Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu. '
//           'Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu.'
//           ' Hãy xem xét đoạn mã sau.Hãy xem xét đoạn mã sau.Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu. Hãy xem xét đoạn mã sau.'
//           'Hãy xem xét đoạn mã sau.Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu. '
//     'Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu.'
//     ' Hãy xem xét đoạn mã sau.Hãy xem xét đoạn mã sau.Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu. Hãy xem xét đoạn mã sau.',
//       textDirection: TextDirection.ltr,
//       textAlign: TextAlign.justify,
//       maxLines: 100,
//       overflow: TextOverflow.ellipsis,
//       style: TextStyle(
//         color: Colors.green,
//         fontSize: 20,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.italic,
//         fontFamily: 'Times New Roman',
//         wordSpacing: 2,
//         letterSpacing: 0.5,
//         decoration: TextDecoration.underline,
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: RichText(
//         text: TextSpan(
//           style: DefaultTextStyle.of(context).style,
//           children: const <TextSpan>[
//             TextSpan(text: 'Hello '),
//             TextSpan(text: 'bold ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
//             TextSpan(text: 'world!!')
//           ]
//         ),
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return const Card (
//       color: Colors.pink,
//       margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
//
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
//         child: Text(
//           'data',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Danh sách Tin Nhắn'),
        ),
        body: MessageList(),
      ),
    );
  }
}

class MessageList extends StatelessWidget {
  final List<String> messages = [
    'Tin nhắn 1',
    'Tin nhắn 2',
    'Tin nhắn 3',
    'Tin nhắn 4',
    'Tin nhắn 5',
    'Tin nhắn 6',
    'Tin nhắn 7',
    'Tin nhắn 8',
    'Tin nhắn 9',
    'Tin nhắn 10',
  ];

  MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.message),
          title: Text(messages[index]),
          subtitle: const Text('Nội dung tin nhắn...'),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Xử lý khi người dùng nhấn vào một tin nhắn
            _showMessageDialog(context, messages[index]);
            if (kDebugMode) {
              print('Tin nhắn số $index được nhấn');
            }
          },
        );
      },
    );
  }

  // Hàm để hiển thị Dialog với nội dung tin nhắn
  void _showMessageDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tin Nhắn'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Đóng Dialog
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }

}


class MessageContent extends StatelessWidget {
  const MessageContent({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build\
    return const Text(
      'Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu.'
          ' Hãy xem xét đoạn mã sau.Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu. '
          'Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu.'
          ' Hãy xem xét đoạn mã sau.Hãy xem xét đoạn mã sau.Khai báo biến được xử lý trước khi thực thi mã. Phạm vi của một biến JavaScript được khai báo với var là ngữ cảnh thực thi hiện tại của nó . Phạm vi của một biến JavaScript được khai báo bên ngoài hàm là phạm vi toàn cầu. Hãy xem xét đoạn mã sau.',

      textDirection: TextDirection.ltr,
      textAlign: TextAlign.justify,
      maxLines: 100,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.green,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontFamily: 'Times New Roman',
        wordSpacing: 2,
        letterSpacing: 0.5,
        decoration: TextDecoration.underline,
      ),
    );
  }
}