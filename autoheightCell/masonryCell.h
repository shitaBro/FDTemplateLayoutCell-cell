//
//  masonryCell.h
//  autoheightCell
//
//  Created by jiang on 2017/4/21.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myModel.h"
@interface masonryCell : UITableViewCell
@property(nonatomic,strong)UILabel*name;
@property(nonatomic,strong)UIImageView*contentImage;
@property(nonatomic,strong)myModel*model;
@end
