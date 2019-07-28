//
//  VCMy.m
//  网易云音乐
//
//  Created by 陈培旺 on 2019/7/23.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "VCMy.h"
#import "VCSecond.h"

@interface VCMy () {
    UITableView* _tableView;
    NSMutableArray* _array;
    NSMutableArray* _array2;
}

@end

@implementation VCMy

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"music.png"] selectedImage:[UIImage imageNamed:@"music2.png"]];
    self.tabBarItem = tabBarItem;
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"cloud.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressLeftBtn)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"rightbtnmusic.png"] style:(UIBarButtonItemStyleDone) target:self action:@selector(pressRightBtn)];
    
//    [self.navigationController.navigationBar setShadowImage:[UIImage imageNamed:@"blank.jpg.gif"]];
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"blank.jpg.gif"] forBarMetrics:UIBarMetricsDefault];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
//    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"blank.jpg.gif"] forBarMetrics:UIBarMetricsDefault];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //UIView* View = [[UIView alloc] init];
    UIScrollView* sv = [[UIScrollView alloc] init];
    //设置滚动视图的位置
    sv.frame = CGRectMake(0, 0, 30 * 12, 100);
    //是否按整页来滚动视图
    sv.pagingEnabled = NO;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于Frame的大小
    sv.contentSize = CGSizeMake(100 * 11, 100);
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向滑动
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = NO;
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = NO;
    //是否显示纵向滚动条
    sv.showsVerticalScrollIndicator = NO;
    //设置背景颜色
    sv.backgroundColor = [UIColor whiteColor];
    NSArray* array = [[NSArray alloc] initWithObjects:@"私人FM", @"最新电音", @"Sati空间", @"私藏推荐", @"亲子频道", @"古典专区", @"跑步FM", @"小冰电台", @"爵士电台", @"驾驶模式", @"因乐交友", nil];
    //使用循环创建11张滚动视图
    for (int i = 0; i <= 10; i++) {
        NSString* strName = [NSString stringWithFormat:@"sv%d.png",i + 1];
        UIImage *image = [UIImage imageNamed:strName];
        UIImageView *iView = [[UIImageView alloc] initWithImage:image];
        iView.frame = CGRectMake(20 + 95 * i, 30, 30, 30);
        UILabel* label = [[UILabel alloc] init];
        label.text = [array objectAtIndex:i];
        label.textColor = [UIColor grayColor];
        label.font = [UIFont systemFontOfSize:12];
        label.frame = CGRectMake(13 + 95 * i, 55, 50, 50);
        [sv addSubview:label];
        [sv addSubview:iView];
    }
    _tableView.tableHeaderView = sv;
    _tableView.backgroundColor = [UIColor whiteColor];
   
    
    [self.view addSubview:_tableView];
}

- (void)viewWillAppear:(BOOL)animated {
    self.tabBarController.tabBar.hidden = NO;
    NSString *str = @"blank.png";
    UIImage *image = [UIImage imageNamed:str];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
}
- (void)pressRightBtn {
    NSLog(@"右侧按钮被按下");
    //创建新的视图控制器
    VCSecond* vcSecond = [[VCSecond alloc] init];
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:vcSecond animated:NO];
}
- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section {
    if (section == 0) {
        view.tintColor = [UIColor grayColor];
    } else {
        view.tintColor = [UIColor whiteColor];
    }
}
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    if (section == 1) {
        view.tintColor = [UIColor grayColor];
    } else {
        view.tintColor = [UIColor whiteColor];
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* ID = @"cell";
    static NSString* ID2 = @"cell2";
    static NSString* ID3 = @"cell3";
    static NSString* ID4 = @"cell4";
    static NSString* ID5 = @"cell5";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:ID];
    UITableViewCell* cell2 = [_tableView dequeueReusableCellWithIdentifier:ID2];
    UITableViewCell* cell3 = [_tableView dequeueReusableCellWithIdentifier:ID3];
    UITableViewCell* cell4 = [_tableView dequeueReusableCellWithIdentifier:ID4];
    UITableViewCell* cell5 = [_tableView dequeueReusableCellWithIdentifier:ID5];
     if (indexPath.section == 0) {
        if (cell3 == nil) {
            cell3 = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:ID3];
        }
        NSMutableArray* array = [[NSMutableArray alloc] initWithObjects:@"本地音乐", @"最近播放", @"我的电台", @"我的收藏", nil];
        cell3.textLabel.text = [array objectAtIndex:indexPath.row];
        NSString* str = [NSString stringWithFormat:@"%lds.png", indexPath.row];
        cell3.imageView.image = [UIImage imageNamed:str];
        
        cell3.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
         
        cell3.selectionStyle = UITableViewCellEditingStyleNone;
        return cell3;
        
    } else if (indexPath.section == 1 && (indexPath.row > 3 || indexPath.row == 1 || indexPath.row == 2)) {
        if (cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:ID2];
        }
        _array = [[NSMutableArray alloc] initWithObjects: @"攒了一大堆好听的歌想和你一起听", @"永远听不腻的英文歌", @"2018年度最热新歌TOP100", @"【记忆加强音乐】罗扎诺夫原理学哈哈哈", @"万次评论只为这个旋律", @"我喜欢的音乐", @"翻唱", nil];
        cell2.separatorInset = UIEdgeInsetsMake(0, 0, 0, tableView.bounds.size.width);
        _array2 = [[NSMutableArray alloc] initWithObjects: @"160首，by 鹿白川", @"180首，by westlifer", @"100首，by 网易云音乐", @"49首，by JayRoxis", @"179首, by HenryCao", @"29首", @"48首", nil];
        if (indexPath.row == 1 || indexPath.row == 2) {
            cell2.textLabel.text = [_array objectAtIndex:indexPath.row + 4];
            cell2.detailTextLabel.text = [_array2 objectAtIndex:indexPath.row + 4];
            NSString* str = [NSString stringWithFormat:@"like%ld.png", indexPath.row + 4];
            cell2.imageView.image = [UIImage imageNamed:str];
            if (indexPath.row == 1) {
                //UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"xindong.png"]];
                //imageView.frame = CGRectMake(330, 20, 20, 20);
                UILabel* label = [[UILabel alloc] init];
                label.text = @"💓心动模式";
                label.frame = CGRectMake(310, 20, 100, 20);
                label.font = [UIFont systemFontOfSize:15];
                [cell2.contentView addSubview:label];
            }
        } else {
            cell2.textLabel.text = [_array objectAtIndex:indexPath.row - 4];
            cell2.detailTextLabel.text = [_array2 objectAtIndex:indexPath.row - 4];
            NSString* str = [NSString stringWithFormat:@"%ld.png",indexPath.row - 3];
            cell2.imageView.image = [UIImage imageNamed:str];
        }
        cell2.separatorInset = UIEdgeInsetsMake(0, 0, 0, tableView.bounds.size.width);
        
        //去除点击的灰色效果
        cell2.selectionStyle = UITableViewCellEditingStyleNone;
        return cell2;
    } else if (indexPath.section == 1 && indexPath.row == 3) {
        if (cell4 == nil) {
            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID4];
        }
        cell4.imageView.image = [UIImage imageNamed:@"jiantou.png"];
        cell4.textLabel.text = @"我收藏的歌单";
        UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"andsoon.png"]];
        cell4.accessoryView = imageView;
        cell4.separatorInset = UIEdgeInsetsMake(0, 0, 0, tableView.bounds.size.width);
        cell4.selectionStyle = UITableViewCellEditingStyleNone;
        return cell4;
    } else if (indexPath.section == 1 && indexPath.row == 0) {
        if (cell5 == nil) {
            cell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID4];
        }
        cell5.imageView.image = [UIImage imageNamed:@"jiantou.png"];
        cell5.textLabel.text = @"我创建的歌单";
        UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"andsoon.png"]];
        UIImageView* imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"加号.png"]];
        imageView2.frame = CGRectMake(335, 20, 20, 20);
        [cell5.contentView addSubview:imageView2];
        cell5.accessoryView = imageView;
        cell5.separatorInset = UIEdgeInsetsMake(0, 0, 0, tableView.bounds.size.width);
        cell5.selectionStyle = UITableViewCellEditingStyleNone;
        return cell5;
    } else {
        if (cell == nil) {
                   cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
                }
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, tableView.bounds.size.width);
        cell.selectionStyle = UITableViewCellEditingStyleNone;
        return cell;
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 4;
    } else {
        return 9;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0){
        return 60;
    } else {
        return 60;
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

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if (section == 1) {
        return nil;
    } else {
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
        [imageView setImage:[UIImage imageNamed:@"gray.jpg"]];
        return imageView;
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.01;
    } else {
        return 5;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 0) {
        return 5;
    } else {
        return 0.01;
    }
}

- (void)pressLeftBtn {
    NSLog(@"左侧按钮被按下");
}


//- (void)viewWillAppear:(BOOL)animated {
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
//    NSString *str = @"blank.jpg.gif";
//    UIImage *image = [UIImage imageNamed:str];
//    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
//
//    [self.navigationController.navigationBar setShadowImage:[UIImage imageNamed:str]];
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
