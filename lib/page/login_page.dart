import 'package:flutter/material.dart';
class login_page extends StatefulWidget {
  @override
  _SelfState createState() => new _SelfState();
}

class _SelfState extends State<login_page> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("登录"),
      ),
      body: Padding(
        
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          onChanged: ()=>{},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  autofocus: true,
                  onSaved: (s)=>{print(s)},
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "您的用户名",
                      icon: Icon(Icons.person)
                  ),
                  // 校验用户名
                  validator: (v) {
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  }

              ),
              TextFormField(
                  onSaved: (s)=>{print(s)},
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)
                  ),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  }
              ),
              Builder(builder: (context){
                    // 登录按钮
                  return Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            padding: EdgeInsets.all(15.0),
                            child: Text("登录"),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              //在这里不能通过此方式获取FormState，context不对 
                              // 正确的做法是通过Builder来构建登录按钮，Builder会将widget节点的context作为回调参数：

                              // reset
                              // Form.of(context).reset();
                              // (_formKey.currentState as FormState).reset();
  
                              // Form.of(context).save();
                              // print(Form.of(context).validate());

                              // 通过_formKey.currentState 获取FormState后，
                              // 调用validate()方法校验用户名密码是否合法，校验
                              // 通过后再提交数据。 
                              // if((_formKey.currentState as FormState).validate()){
                                //验证通过提交数据
                              // }

                              // Controller
                              // _unameController.text = "222222222";
                              // print(_unameController.text);
                              Navigator.pushNamed(context, '/sample');

                            },
                          ),
                        ),
                      ],
                    ),
                  );
              })
              
            ],
          ),
        ),
      ),
    );
  }
}