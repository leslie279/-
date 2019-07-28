//
//  CPWTableViewCell.m
//  UIButton基础
//
//  Created by 陈培旺 on 2019/7/26.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "CPWTableViewCell.h"

@implementation CPWTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.btn1 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn1];
        
        self.btn2 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn2];
        
        self.btn3 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn3];
        
        self.btn4 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn4];
        
        self.btn5 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn5];
        
        self.btn6 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn6];
        
        self.btn7 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn7];
        
        self.btn8 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn8];
        
//        self.btn9 = [UIButton buttonWithType:(UIButtonTypeInfoLight)];
//        [self.contentView addSubview:_btn9];
        
        self.btn10 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn10];
        
        self.btn11 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn11];
        
        self.btn12 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn12];
    }
    return self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.btn1.frame = CGRectMake(10, 110, 100, 50);
    [_btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.btn1.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn1.backgroundColor = [UIColor whiteColor];
    [_btn1 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn1 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn1 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn1.bounds.size.width-_btn1.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn1 setTitleEdgeInsets: UIEdgeInsetsMake(_btn1.imageView.bounds.size.height, (_btn1.bounds.size.width-_btn1.titleLabel.bounds.size.width)*0.5-_btn1.imageView.bounds.size.width, 0, 0)];
    
    self.btn2.frame = CGRectMake(110, 110, 100, 50);
    [_btn2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.btn2.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn2.backgroundColor = [UIColor whiteColor];
    
    [_btn2 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn2 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn2 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn2.bounds.size.width-_btn2.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn2 setTitleEdgeInsets: UIEdgeInsetsMake(_btn2.imageView.bounds.size.height, (_btn2.bounds.size.width-_btn2.titleLabel.bounds.size.width)*0.5-_btn2.imageView.bounds.size.width, 0, 0)];
    
    self.btn3.frame = CGRectMake(210, 110, 100, 50);
    [_btn3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.btn3.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn3.backgroundColor = [UIColor whiteColor];
    [_btn3 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn3 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn3 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn3.bounds.size.width-_btn3.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn3 setTitleEdgeInsets: UIEdgeInsetsMake(_btn3.imageView.bounds.size.height, (_btn3.bounds.size.width-_btn3.titleLabel.bounds.size.width)*0.5-_btn3.imageView.bounds.size.width, 0, 0)];
    
    self.btn4.frame = CGRectMake(310, 110, 100, 50);
    [_btn4 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    _btn4.titleLabel.textColor = [UIColor blackColor];
    self.btn4.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn4.backgroundColor = [UIColor whiteColor];
    [_btn4 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn4 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn4 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn4.bounds.size.width-_btn4.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn4 setTitleEdgeInsets: UIEdgeInsetsMake(_btn4.imageView.bounds.size.height, (_btn4.bounds.size.width-_btn4.titleLabel.bounds.size.width)*0.5-_btn4.imageView.bounds.size.width, 0, 0)];
    
    self.btn5.frame = CGRectMake(10, 180, 100, 50);
    [_btn5 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_btn5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn5.titleLabel.textColor = [UIColor blackColor];
    self.btn5.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn5.backgroundColor = [UIColor whiteColor];
    [_btn5 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn5 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn5 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn5.bounds.size.width-_btn5.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn5 setTitleEdgeInsets: UIEdgeInsetsMake(_btn5.imageView.bounds.size.height, (_btn5.bounds.size.width-_btn5.titleLabel.bounds.size.width)*0.5-_btn5.imageView.bounds.size.width, 0, 0)];
    
    self.btn6.frame = CGRectMake(110, 180, 100, 50);
    [_btn6 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_btn6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.btn6.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn6.titleLabel.textColor = [UIColor blackColor];
    _btn6.backgroundColor = [UIColor whiteColor];
    
    [_btn6 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn6 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn6 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn6.bounds.size.width-_btn6.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn6 setTitleEdgeInsets: UIEdgeInsetsMake(_btn6.imageView.bounds.size.height, (_btn6.bounds.size.width-_btn6.titleLabel.bounds.size.width)*0.5-_btn6.imageView.bounds.size.width, 0, 0)];
    
    self.btn7.frame = CGRectMake(210, 180, 100, 50);
    [_btn7 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_btn7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn7.titleLabel.textColor = [UIColor blackColor];
    self.btn7.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn7.backgroundColor = [UIColor whiteColor];
    [_btn7 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn7 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn7 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn7.bounds.size.width-_btn7.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn7 setTitleEdgeInsets: UIEdgeInsetsMake(_btn7.imageView.bounds.size.height, (_btn7.bounds.size.width-_btn7.titleLabel.bounds.size.width)*0.5-_btn7.imageView.bounds.size.width, 0, 0)];
    
    self.btn8.frame = CGRectMake(310, 180, 100, 50);
    [_btn8 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_btn8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.btn8.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn8.backgroundColor = [UIColor whiteColor];
    [_btn8 setContentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft];
    [_btn8 setContentVerticalAlignment: UIControlContentVerticalAlignmentTop];
    
    [_btn8 setImageEdgeInsets: UIEdgeInsetsMake(-7, (_btn8.bounds.size.width-_btn8.imageView.bounds.size.width)*0.5, 0, 0)];
    [_btn8 setTitleEdgeInsets: UIEdgeInsetsMake(_btn8.imageView.bounds.size.height, (_btn8.bounds.size.width-_btn8.titleLabel.bounds.size.width)*0.5-_btn8.imageView.bounds.size.width, 0, 0)];
    
//    self.btn9.frame = CGRectMake(310, 30, 70, 30);
//    [_btn9 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    self.btn9.titleLabel.font = [UIFont systemFontOfSize:15];
//    _btn9.backgroundColor = [UIColor redColor];
    
    self.btn10.frame = CGRectMake(80, 15, 100, 30);
    [_btn10 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.btn10.titleLabel.font = [UIFont systemFontOfSize:15];
    
    self.btn11.frame = CGRectMake(100, 45, 40, 20);
    [_btn11 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn11.titleLabel.font = [UIFont systemFontOfSize:12];
    _btn11.backgroundColor = [UIColor grayColor];
    
    self.btn12.frame = CGRectMake(25, 15, 60, 60);
    //变按钮为圆角
    _btn12.layer.cornerRadius = 30;
    _btn12.layer.masksToBounds = YES;
    [_btn12 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
