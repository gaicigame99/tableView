//
//  MyTableViewCell.m
//  0406tableView01
//
//  Created by Lancelot on 16/4/6.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect rect = [UIScreen mainScreen].bounds;
        
        _nameLabel = [[UILabel alloc]initWithFrame:
        CGRectMake(0, 0, 80, 30)];
        [self.contentView addSubview:_nameLabel];
        
        _dataLabel =[[UILabel alloc]initWithFrame:
                     CGRectMake(80, 0, 150, 30)];
        [self.contentView addSubview:_dataLabel];
        
        _content = [[UILabel alloc]initWithFrame:
                    CGRectMake(0, 40, 230, 50)];
        [self.contentView addSubview:_content];
        
        _imageV = [[UIImageView alloc]initWithFrame:CGRectMake(230, 0, 150, 90)];
        [self.contentView addSubview:_imageV];
    }
    return self;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
