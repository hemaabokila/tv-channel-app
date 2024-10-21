import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/widgets/detels/SignIn.dart';
import 'package:project/widgets/detels/button.dart';
import 'package:project/widgets/detels/app_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RegistrationPage extends StatefulWidget {
  static const Registration = "RegistrRegistration";
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  File? _image;
  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _takePhoto() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double size2 = size.width / 2.6;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: Image.asset("images/lm.png"),
            ),
            const SizedBox(height: 50),
            SignIn(
              title: AppLocalizations.of(context).translate("Name"),
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            SignIn(
              title: AppLocalizations.of(context).translate("Email"),
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            SignIn(
              title: AppLocalizations.of(context).translate("Phone"),
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            SignIn(
              title: AppLocalizations.of(context).translate("Password"),
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            SignIn(
              title: AppLocalizations.of(context).translate("Password"),
              color: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _image == null
                    ? Text(
                        'No image selected.',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      )
                    : Image.file(_image!),
                SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: size2),
                  leading: PopupMenuButton<String>(
                    onSelected: (String result) {
                      if (result == 'Gallery') {
                        _pickImage();
                      } else if (result == 'Camera') {
                        _takePhoto();
                      }
                    },
                    color: Theme.of(context).scaffoldBackgroundColor,
                    icon: Icon(Icons.image, size: 40, color: Colors.white),
                    offset: const Offset(0, 53),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Gallery',
                        child: ListTile(
                          leading: Icon(
                            Icons.storage,
                            color: Colors.white,
                          ),
                          title: Text(
                            AppLocalizations.of(context).translate("Gallery"),
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Camera',
                        child: ListTile(
                          leading: Icon(
                            Icons.camera,
                            color: Colors.white,
                          ),
                          title: Text(
                            AppLocalizations.of(context).translate("Camera"),
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            MyButton(
              color: Colors.red[800]!,
              title: AppLocalizations.of(context).translate("Sign up"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
