import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [],
          )
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
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _PhoneNumbeWidget(),
          SizedBox(height: 10),
          _NickNameWidget(),
        ],
      ),
    );
  }
}

class _NickNameWidget extends StatelessWidget {
  const _NickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nickname',
      style: TextStyle(fontSize: 15, color: Colors.grey),
    );
  }
}

class _PhoneNumbeWidget extends StatelessWidget {
  const _PhoneNumbeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+7 911 222 33 33',
      style: TextStyle(
        fontSize: 15,
        color: Colors.grey,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Вася Пупкин',
      style: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
