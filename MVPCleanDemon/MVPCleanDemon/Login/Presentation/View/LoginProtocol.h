//
//  LoginProtocol.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/28.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol LoginProtocol <NSObject>
-(void)loginSuccess:(id)model;
-(void)loginFail:(NSInteger) errorCode errorMessage:(NSString *)errorMessage;
@end
