//
//  ErrorMessage.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2018/1/3.
//  Copyright © 2018年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ErrorMessage : NSObject
@property(nonatomic,assign) NSInteger code;
@property(nonatomic,strong) NSString *errorMessage;
@end
