# FDTemplateLayoutCell-cell
两种cell，一种XIBcell，一种代码创建使用masonry布局的cell
>注册cell
 ```
 [_myTable registerNib:[UINib nibWithNibName:@"myIBCell" bundle:nil] forCellReuseIdentifier:@"ibcell"];
 [_myTable registerClass:[masonryCell class] forCellReuseIdentifier:@"mcell"];
 ``` 
>cell高度计算

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
