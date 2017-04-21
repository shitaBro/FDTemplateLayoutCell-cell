//
//  ViewController.m
//  autoheightCell
//
//  Created by jiang on 2017/4/20.
//  Copyright © 2017年 jiang. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "myModel.h"
#import "myIBCell.h"
#import "masonryCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTable;
@property(nonatomic,strong)NSArray*datas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _datas=@[@{@"title":@"今天是个好日子啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 啊啊啊啊啊啊啊啊",@"imageUrl":@"http://7xs9oh.com2.z0.glb.qiniucdn.com/1492654525.png-thumb",@"name":@"小明",@"time":@"2017-04-21",@"width":@"548",@"height":@"968"},@{@"title":@"sheishitianfisahflsahfsalkfksalfskalfaklsjfaklfsjafakfja啊",@"imageUrl":@"http://7xs9oh.com2.z0.glb.qiniucdn.com/149265418000025.png-thumb",@"name":@"iamyourfather",@"time":@"2017-04-24",@"width":@"300",@"height":@"191"},@{@"title":@"我真中的宣布一个消息",@"imageUrl":@"http://7xs9oh.com2.z0.glb.qiniucdn.com/FmJf0_ziRJOJfd4uC6OQqFGNH3kv-thumb",@"name":@"常凯申大神再次",@"time":@"2017-04-fsafa",@"width":@"1242",@"height":@"2208"},@{@"title":@"今天周五了啊，哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",@"imageUrl":@"http://7xs9oh.com2.z0.glb.qiniucdn.com/149265391500020.jpg-thumb",@"name":@"小崽子",@"time":@"2017-04-21",@"width":@"640",@"height":@"393"},@{@"title":@"计算出的高度会自动进行缓存，所以滑动时每个 cell 真正的高度计算只会发生一次，后面的高度询问都会命中缓存，减少了非常可观的多余计算。计算出的高度会自动进行缓存，所以滑动时每个 cell 真正的高度计算只会发生一次，后面的高度询问都会命中缓存，减少了非常可观的多余计算。计算出的高度会自动进行缓存，所以滑动时每个 cell 真正的高度计算只会发生一次，后面的高度询问都会命中缓存，减少了非常可观的多余计算。计算出的高度会自动进行缓存，所以滑动时每个 cell 真正的高度计算只会发生一次，后面的高度询问都会命中缓存，减少了非常可观的多余计算。",@"imageUrl":@"http://7xs9oh.com2.z0.glb.qiniucdn.com/149250007300023.jpg-thumb",@"name":@"不点",@"time":@"2017-04-21",@"width":@"828",@"height":@"1600"}];
    [_myTable registerNib:[UINib nibWithNibName:@"myIBCell" bundle:nil] forCellReuseIdentifier:@"ibcell"];
    [_myTable registerClass:[masonryCell class] forCellReuseIdentifier:@"mcell"];
    [_myTable reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}



#pragma mark----------UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _datas.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row<3) {
        myIBCell*cell=[tableView dequeueReusableCellWithIdentifier:@"ibcell" forIndexPath:indexPath];
        [self configCell:cell atindex:indexPath];
        return cell;

    }else{
        masonryCell*cell=[tableView dequeueReusableCellWithIdentifier:@"mcell" forIndexPath:indexPath];
        [self configMcell:cell index:indexPath];
        return cell;
    }
}
#pragma mark ----------UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row<3) {
        return [tableView fd_heightForCellWithIdentifier:@"ibcell" configuration:^(id cell) {
            [self configCell:cell atindex:indexPath];
        }];
 
    }else{
        return [tableView fd_heightForCellWithIdentifier:@"mcell" configuration:^(id cell) {
            [self configCell:cell atindex:indexPath];
        }];
    }
}
-(void)configCell:(myIBCell*)cell atindex:(NSIndexPath*)indexPath{
//    cell.fd_enforceFrameLayout=NO;
    NSDictionary*dic=_datas[indexPath.row];
    myModel*model=[[myModel alloc]initWithDictionary:dic];
    cell.model=model;
}
-(void)configMcell:(masonryCell*)cell index:(NSIndexPath*)indexPath
{
    NSDictionary*dic=_datas[indexPath.row];
    myModel*model=[[myModel alloc]initWithDictionary:dic];
    cell.model=model;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
