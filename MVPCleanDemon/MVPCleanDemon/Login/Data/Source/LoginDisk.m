//
//  LoginDisk.m
//  MVPCleanDemon
//
//  Created by 于学良 on 2018/1/3.
//  Copyright © 2018年 yxlGitHub. All rights reserved.
//

#import "LoginDisk.h"

@implementation LoginDisk
+(void)getLoginDataWithParams:(id)params success:(void(^)(UserInfoModel * responseData))success fail:(void(^)(ErrorMessage * errorData))fail{
    //在此，登录验证，登录成功后,解析数据，本地存储登录信息
    
    //测试数据，
    int arcCode = arc4random()%2;
    switch (arcCode) {
        case 0:{
            UserInfoModel *testModel = [[UserInfoModel alloc]init];
            testModel.userId = @"testId";
            testModel.userName = @"testName";
            testModel.userToken = @"TestToken";
            //数据处理完，都有主线程返回
            dispatch_async(dispatch_get_main_queue(), ^{ // 2
                success(testModel);
            });

        }break;
        case 1:{
            ErrorMessage * testError = [[ErrorMessage alloc]init];
            testError.code = -1;
            testError.errorMessage = @"测试登录失败";
            //数据处理完，都有主线程返回
            dispatch_async(dispatch_get_main_queue(), ^{ // 2
                fail(testError);
            });

        }break;
        default:
            break;
    }
}
@end
