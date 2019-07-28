//
//  VCAccount.m
//  网易云音乐
//
//  Created by 陈培旺 on 2019/7/23.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "VCAccount.h"
#import "CPWTableViewCell.h"

@interface VCAccount () <
UITableViewDelegate,
UITableViewDataSource>

@property UITableView *tableView;
@property NSArray *arrayData;
@property UISwitch* swithch;
@property UIButton* btn;

@end

@implementation VCAccount
int count = 1;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"帐号" image:[UIImage imageNamed:@"account.png"] selectedImage:[UIImage imageNamed:@"account2.png"]];
    self.tabBarItem = tabBarItem;
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"rightbtnmusic.png"] style:(UIBarButtonItemStyleDone) target:self action:@selector(pressRightBtn)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon.png"] style:(UIBarButtonItemStyleDone) target:self action:@selector(pressLeftBtn)];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(310, 30, 70, 30)];
    [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _btn.titleLabel.font = [UIFont systemFontOfSize:15];
    _btn.backgroundColor = [UIColor redColor];
    [_btn setTitle:@"签到" forState:(UIControlStateNormal)];
    [_btn setImage:[UIImage imageNamed:@"jinbi.png"] forState:(UIControlStateNormal)];
    [_btn addTarget:self action:@selector(pressBtn) forControlEvents:(UIControlEventTouchUpInside)];
    
    //设置按钮为圆角
    _btn.layer.cornerRadius = 15;
    _btn.layer.masksToBounds = YES;
    
    _swithch = [[UISwitch alloc] init];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _tableView.backgroundColor = [UIColor whiteColor];
    
    //隐藏导航栏的分割线
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"blank.png"] forBarPosition:(UIBarPositionAny) barMetrics:(UIBarMetricsDefault)];
     [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    [self.tableView registerClass:[CPWTableViewCell class] forCellReuseIdentifier:@"cell2"];

    [self.view addSubview:_tableView];
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.y > 0) {
        self.navigationItem.title = @"我的帐号";
        NSString *str = @"yellow.png";
        UIImage *image = [UIImage imageNamed:str];
        [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
        [self.navigationController.navigationBar setShadowImage:[UIImage new]];

    } else {
        self.navigationItem.title = @"";
        NSString *str = @"blank.png";
        UIImage *image = [UIImage imageNamed:str];
        [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
        [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    }
}


- (void)pressBtn {
    if (count == 1) {
        count = 0;
    } else {
        count = 1;
    }
    if (count == 0) {
        [_btn setTitle:@"已签到" forState:(UIControlStateNormal)];
    } else {
        [_btn setTitle:@"签到" forState:(UIControlStateNormal)];
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"123");
}
- (void)pressLeftBtn {
    NSLog(@"左侧按钮被按下");
}
- (void)pressRightBtn {
    NSLog(@"右侧按钮被按下");
}

//- (void)viewWillAppear:(BOOL)animated {
//    NSString *str = @"blank.png";
//    UIImage *image = [UIImage imageNamed:str];
//    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
//    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* ID1 = @"cell1";
    static NSString* ID2 = @"cell2";
    static NSString* ID3 = @"cell3";
    UITableViewCell* cell1 = [_tableView dequeueReusableCellWithIdentifier:ID1];
    CPWTableViewCell* cell2 = [_tableView dequeueReusableCellWithIdentifier:ID2];
    UITableViewCell* cell3 = [_tableView dequeueReusableCellWithIdentifier:ID3];
    if (indexPath.section == 0) {
        if (cell2 == nil) {
            cell2 = [[CPWTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID2];
        }
        [cell2.btn1 setTitle:@"动态" forState:(UIControlStateNormal)];
        [cell2.btn1 setImage:[UIImage imageNamed:@"edit1.png"] forState:(UIControlStateNormal)];
        
        
        [cell2.btn2 setTitle:@"关注" forState:(UIControlStateNormal)];
        [cell2.btn2 setImage:[UIImage imageNamed:@"edit2.png"] forState:(UIControlStateNormal)];
        
        [cell2.btn3 setTitle:@"粉丝" forState:(UIControlStateNormal)];
        [cell2.btn3 setImage:[UIImage imageNamed:@"edit3.png"] forState:(UIControlStateNormal)];
        
        [cell2.btn4 setTitle:@"编辑资料" forState:(UIControlStateNormal)];
        [cell2.btn4 setImage:[UIImage imageNamed:@"edit4.png"] forState:(UIControlStateNormal)];
        
        [cell2.btn5 setTitle:@"消息" forState:(UIControlStateNormal)];
        [cell2.btn5 setImage:[UIImage imageNamed:@"edit5.png"] forState:(UIControlStateNormal)];
        
        
        [cell2.btn6 setTitle:@"商场" forState:(UIControlStateNormal)];
        [cell2.btn6 setImage:[UIImage imageNamed:@"edit6.png"] forState:(UIControlStateNormal)];
        
        [cell2.btn7 setTitle:@"演出" forState:(UIControlStateNormal)];
        [cell2.btn7 setImage:[UIImage imageNamed:@"edit7.png"] forState:(UIControlStateNormal)];
        
        [cell2.btn8 setTitle:@"个性换肤" forState:(UIControlStateNormal)];
        [cell2.btn8 setImage:[UIImage imageNamed:@"edit8.png"] forState:(UIControlStateNormal)];
        
//        [cell2.btn9 setTitle:@"签到" forState:(UIControlStateNormal)];
//        [cell2.btn9 setImage:[UIImage imageNamed:@"jinbi.png"] forState:(UIControlStateNormal)];
//        [cell2.btn9 addTarget:self action:@selector(pressBtn) forControlEvents:(UIControlEventTouchUpInside)];
        
        [cell2.contentView addSubview:_btn];
        
        [cell2.btn10 setTitle:@"星星leslie" forState:(UIControlStateNormal)];
        
        [cell2.btn11 setTitle:@"Lv.6" forState:(UIControlStateNormal)];
        
        [cell2.btn12 setImage:[UIImage imageNamed:@"leslie.jpg"] forState:(UIControlStateNormal)];
        cell2.selectionStyle = UITableViewCellEditingStyleNone;
        return cell2;
    } else if (indexPath.section == 5) {
        if (cell3 == nil) {
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID3];
            UIButton* btn = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
            [btn setTitle:@"退出登录" forState:(UIControlStateNormal)];
            [btn setTitle:@"正在退出" forState:(UIControlStateHighlighted)];
            btn.tintColor = [UIColor redColor];
            btn.titleLabel.font = [UIFont systemFontOfSize:20];
            btn.frame = CGRectMake(130, 10, 150, 50);
            [cell3.contentView addSubview:btn];
        }
        cell3.selectionStyle = UITableViewCellEditingStyleNone;
        return cell3;
    } else {
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier: ID1];
        }
        NSArray* array1 = @[@[@"口袋铃声", @"我的铃声"],
                            @[@"设置", @"夜间模式", @"定时关闭", @"音乐闹钟"],
                            @[@"在线听歌免流量", @"优惠券"],
                            @[@"加入网易音乐人", @"我要直播", @"分享网易云音乐", @"关于"]];
        NSArray* array2 = @[@[@"acc1.png", @"acc2.png"],
                            @[@"acc3.png", @"acc4.png", @"acc5.png", @"acc6.png"],
                            @[@"acc7.png", @"acc8.png"],
                            @[@"acc9.png", @"acc10.png", @"acc11.png", @"acc12.png"]];
        
        cell1.textLabel.text = array1[indexPath.section - 1] [indexPath.row];
        cell1.imageView.image = [UIImage imageNamed:array2[indexPath.section - 1][indexPath.row]];
        if (indexPath.section == 2 && indexPath.row == 1) {
            cell1.accessoryView = _swithch;
        } else {
            cell1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        cell1.selectionStyle = UITableViewCellEditingStyleNone;
        return cell1;
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray* array1 = [NSArray arrayWithObjects:@1, @2, @4, @2, @4, @1, nil];
    return [array1[section] integerValue];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 220;
    } else if (indexPath.section == 5){
        return 70;
    } else {
        return 50;
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if (section == 5) {
        return nil;
    } else {
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
        [imageView setImage:[UIImage imageNamed:@"gray.jpg"]];
        return imageView;
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return nil;
    } else {
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
        [imageView setImage:[UIImage imageNamed:@"gray.jpg"]];
        return imageView;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0;
    } else {
        return 5;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 5) {
        return 0;
    } else {
        return 5;
    }
}
@end
