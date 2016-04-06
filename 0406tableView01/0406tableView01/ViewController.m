//
//  ViewController.m
//  0406tableView01
//
//  Created by Lancelot on 16/4/6.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *table = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    
    table.dataSource = self;
    table.rowHeight = 90;
    
    
    [self.view addSubview:table];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//     UITableViewCell   *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    MyTableViewCell *cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    cell.nameLabel.text = @"周华健";
    cell.dataLabel.text = @"20160406";
    cell.content.text = @"广州大型演唱会";
    cell.imageV.image = [UIImage imageNamed:@"shuiguo3.png"];

//    cell.textLabel.text = @"1234";
    
    return cell;
}










@end
