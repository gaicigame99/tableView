//
//  ViewController.m
//  0406tableView
//
//  Created by Lancelot on 16/4/6.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
{
    
    __weak IBOutlet UITableView *tableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //关心表数据
    tableView.dataSource = self;
}
//一个表里有多少组数据,不写这个方法，默认，就是一组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//一个表里有多少行数据
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
//行里面显示什么内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    cell.textLabel.text = @"1234";
    
    return cell;
}


@end
