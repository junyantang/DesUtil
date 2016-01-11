//
//  DesUtil.h
//  DesUtil
//
//  Created by User on 11/1/2016.
//  Copyright © 2016年 tjy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DesUtil : NSObject

+ (NSString *)encrypt:(NSString *)text withKey:(NSString *) key;
+ (NSString *)decrypt:(NSString *)text withKey:(NSString *) key;

@end
