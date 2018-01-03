//
//  LoginViewController.m
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/28.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "LoginPresenter.h"
#import "LoginProtocol.h"
@interface LoginViewController ()<LoginProtocol>{
    UIButton * loginBtn;
    UIButton *registerBtn;
    UITextField *userNameTF;
    UITextField *pwdTF;
    LoginPresenter *_loginPresenter;
}

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
    [self setupData];
}
-(void)setupData{
    _loginPresenter = [[LoginPresenter alloc]initWithView:self];
}
-(void)setupUI{
    UILabel* userNameLb = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, 80, 36)];
    userNameLb.text = @"用户名：";
    userNameLb.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:userNameLb];
    userNameTF = [[UITextField alloc]initWithFrame:CGRectMake(130, 200, 160, 36)];
    userNameTF.placeholder = @"请输入用户名";
    [self.view addSubview:userNameTF];
    UILabel *pwdLb = [[UILabel alloc]initWithFrame:CGRectMake(50, 255, 80, 36)];
    pwdLb.text = @"密码：";
    pwdLb.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:pwdLb];
    pwdTF = [[UITextField alloc]initWithFrame:CGRectMake(130, 255, 160, 36)];
    pwdTF.placeholder = @"请输入密码";
    pwdTF.secureTextEntry = YES;
    [self.view addSubview:pwdTF];

    loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.backgroundColor = [UIColor blueColor];
    loginBtn.frame = CGRectMake(110, 300, 50, 36);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];

    [loginBtn addTarget:self action:@selector(loginClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];

    registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    registerBtn.frame = CGRectMake(210, 300, 50, 36);
    registerBtn.backgroundColor = [UIColor blueColor];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [self.view addSubview:registerBtn];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ClickAction
-(void)loginClick:(id)sender{
    if (!userNameTF.text) {
        //
        NSLog(@"用户名不能为空！");
        return;
    }
    if (!pwdTF.text) {
        NSLog(@"密码不能为空！");
        return;
    }
    [_loginPresenter loginWithUserName:userNameTF.text password:pwdTF.text];
}
-(void)registerClick:(id)sender{
    //跳转至注册页
}
#pragma mark LoginProtocol
-(void)loginSuccess:(id)model{
    //登录成功，进入Home页
    NSLog(@"登录成功！");
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)loginFail:(NSInteger)errorCode errorMessage:(NSString *)errorMessage{
    //登录失败，提示失败原因
    NSLog(@"登录失败！");

}
@end
