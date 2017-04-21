//
//  masonryCell.m
//  autoheightCell
//
//  Created by jiang on 2017/4/21.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import "masonryCell.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"
@implementation masonryCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUIandMas];
    }
    return self;
}
-(void)initUIandMas
{
    __weak typeof(self)wself = self;
    _contentImage=[[UIImageView alloc]init];
    [self.contentView addSubview:_contentImage];
    _name=[[UILabel alloc]init];
    [self.contentView addSubview:_name];
    [_contentImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.equalTo(wself.contentView).with.offset(20);
        make.right.equalTo(wself.contentView).with.offset(-20);
//        make.bottom.equalTo(_name.mas_top).with.offset(10);
        make.height.mas_equalTo(100);
    }];
    [_name mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(_contentImage);
        make.top.equalTo(_contentImage.mas_bottom).with.offset(10);
        make.height.mas_equalTo(20);
        make.bottom.equalTo(wself.contentView.mas_bottom).with.offset(-10);
    }];
}
-(void)setModel:(myModel *)model
{
    _name.text=model.name;
    [_contentImage sd_setImageWithURL:[NSURL URLWithString:model.imageUrl]];
    [_contentImage mas_updateConstraints:^(MASConstraintMaker *make) {
        float height= [model.height floatValue]/[model.width floatValue]*370;
        make.height.mas_equalTo(height);
        NSLog(@"height----%f",height);
    }];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
