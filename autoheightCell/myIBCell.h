//
//  myIBCell.h
//  autoheightCell
//
//  Created by jiang on 2017/4/21.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myModel.h"//
@interface myIBCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *contentImage;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imagewidth;
@property(nonatomic,strong)myModel*model;
@end
