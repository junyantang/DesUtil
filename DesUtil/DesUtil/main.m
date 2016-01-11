//
//  main.m
//  DesUtil
//
//  Created by User on 11/1/2016.
//  Copyright © 2016年 tjy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesUtil.h"

#define KEY @"testkey"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 0; i<1000; i++) {
            
            NSLog(@"=================start Encrypt %i",i);
            
            NSString *result1 = [DesUtil encrypt:@"hello" withKey:KEY];
            NSLog(@"des result1 %@",result1);
            
            NSString *result2 = [DesUtil encrypt:@"1234567890" withKey:KEY];
            NSLog(@"des result2 %@",result2);
            
            NSString *result3 = [DesUtil encrypt:@"world" withKey:KEY];
            NSLog(@"des result3 %@",result3);
            
            NSLog(@"=================end Encrypt %i",i);
            
            NSLog(@"=================start Decrypt %i",i);
            
            NSString *source1 = [DesUtil decrypt:result1 withKey:KEY];
            NSLog(@"des source1 %@",source1);
            
            NSString *source2 = [DesUtil decrypt:result2 withKey:KEY];
            NSLog(@"des source2 %@",source2);
            
            NSString *source3 = [DesUtil decrypt:result3 withKey:KEY];
            NSLog(@"des source3 %@",source3);
            
            NSLog(@"=================end Decrypt %i",i);
        }
    }
    return 0;
}
