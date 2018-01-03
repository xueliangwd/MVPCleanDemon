//
//  LoginUserCase.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/29.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginTaskProtocol.h"
@interface LoginTask : NSObject{
}
-(instancetype)initWithParams:(id)params delegate:(id<LoginTaskProtocol>)delegate;
@end
