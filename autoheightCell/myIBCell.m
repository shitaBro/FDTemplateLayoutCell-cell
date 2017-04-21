//
//  myIBCell.m
//  autoheightCell
//
//  Created by jiang on 2017/4/21.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import "myIBCell.h"
#import "UIImageView+WebCache.h"
@implementation myIBCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)setModel:(myModel *)model
{
    _title.text=model.title;
    [_contentImage sd_setImageWithURL:[NSURL URLWithString:model.imageUrl]];
    _nickName.text=model.name;
    float width=[UIScreen mainScreen].bounds.size.width;
//    float height=[UIScreen mainScreen].bounds.size.height;
    float tempWidth=[model.width floatValue]/[model.height floatValue]*width;
    tempWidth=tempWidth>350?350:tempWidth;
    _imagewidth.constant=tempWidth;
    _imageHeight.constant=[model.height floatValue]/[model.width floatValue]*tempWidth;
    NSLog(@"height----%f----width---%f",_imageHeight.constant,_imagewidth.constant);
    _time.text=model.time;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
