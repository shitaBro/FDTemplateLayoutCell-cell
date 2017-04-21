//
//  myModel.m
//  autoheightCell
//
//  Created by jiang on 2017/4/21.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import "myModel.h"

@implementation myModel
-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (self=[super init]) {
        //kvc
        
        [self setValuesForKeysWithDictionary:dictionary];
//        NSLog(@"dicc----%@",dictionary);
        
    }
    return self;
    
}

@end
