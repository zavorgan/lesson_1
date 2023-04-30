//Урок 21 30:48

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  //создаем значения для переменных MenuRowData (иконка, текст)
  final List<MenuRowData> menuRow = [
    MenuRowData(Icons.turned_in, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        width: double.infinity,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _UserInfo(),
              const SizedBox(
                height: 16,
              ),
              _MenuWidget(
                menuRow: menuRow,
              ),
            ]),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          ...menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
          // _MenuWidgetRow(
          //   icon: Icons.turned_in,
          //   text: 'Избранное',
          // ),
          // _MenuWidgetRow(
          //   icon: Icons.call,
          //   text: 'Звонки',
          // ),
          // _MenuWidgetRow(
          //   icon: Icons.computer,
          //   text: 'Устройства',
          // ),
          // _MenuWidgetRow(
          //   icon: Icons.folder,
          //   text: 'Папка с чатами',
          // ),
        ],
      ),
    );
  }
}

//делаем Дата класс для переменных (иконка, текст)
class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  // final IconData icon;
  // final String text;
  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Row(
        children: [
          Icon(data.icon),
          const SizedBox(
            width: 16,
          ),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          _AvatarWidget(),
          SizedBox(
            height: 24,
          ),
          _UserNameWidget(),
          SizedBox(
            height: 8,
          ),
          _PhoneWidget(),
          SizedBox(
            height: 8,
          ),
          _NickNameWidget(),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

class _NickNameWidget extends StatelessWidget {
  const _NickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@NickName',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}

class _PhoneWidget extends StatelessWidget {
  const _PhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('+7 914 785 21 47',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400));
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Full Name',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500));
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Placeholder(),
    );
  }
}
