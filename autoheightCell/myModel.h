//
//  myModel.h
//  autoheightCell
//
//  Created by jiang on 2017/4/21.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myModel : NSObject
@property(nonatomic,copy)NSString*title;
@property(nonatomic,copy)NSString*imageUrl;
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*time;
@property(nonatomic,copy)NSString*width;
@property(nonatomic,copy)NSString*height;
-(instancetype)initWithDictionary:(NSDictionary* )dictionary;
@end
