import 'package:bodax_wallet/constants/constants.dart';
import 'package:bodax_wallet/widget/password_field.dart';
import 'package:bodax_wallet/widget/text_button.dart';
import 'package:bodax_wallet/widget/text_field.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          // icon: Image(
          //   width: 24,
          //   color: Colors.white,
          //   image: Svg('assets/images/back_arrow.svg'),
          // ),
          icon: const ImageIcon(
            AssetImage('assets/images/back_arrow.svg'),
            color: Colors.white,
            size: 24,
          )
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                           const Text(
                            'Register',
                            style: kHeadline,
                          ),
                          const Text(
                            'Create new account to get started.',
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const MyTextField(
                            hintText: 'Name', 
                            inputType: TextInputType.name,
                          ),

                          const MyTextField(
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          const MyTextField(
                            hintText: 'Phone',
                            inputType: TextInputType.phone,
                          ),
                          MyPasswordField(
                            isPasswordVisible: passwordVisibility,
                            onTap: (){
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                          )
 
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: kBodyText,
                        ),
                        Text(
                          'Sign In',
                          style: kBodyText.copyWith( color: Colors.white,)
                         
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextButton(
                      buttonName: 'Register', 
                      bgColor: Colors.white, 
                      textColor: Colors.black87,
                      onTap: () {},
                    )
 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}