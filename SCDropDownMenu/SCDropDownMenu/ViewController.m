//
//  ViewController.m
//  SCDropDownMenu
//
//  Created by 宁小陌 on 2018/7/9.
//  Copyright © 2018年 宁小陌. All rights reserved.
//

#import "ViewController.h"
#import "SCDropDownMenuView.h"

@interface ViewController ()<SCDropDownMenuViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initView];
}

- (void) initView{
    self.title = @"测试demo";
    self.view.backgroundColor = kRandomColor;
    NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"面积最大", @"面积最小", @"价格最高", @"价格最低", nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@"热门推荐", @"美食", @"影院", @"自助餐", @"景区", @"汽车", @"网吧", @"游戏", nil];
    NSMutableArray *array3 = [NSMutableArray arrayWithObjects:@"从大到小", @"从小到大", @"从高到低", @"从低到高", @"从右到左", @"从左到右", @"从前到后", @"从后到前", nil];
    NSArray *array21 = @[
                         @[@"好玩的", @"好吃的", @"好景的", @"好喝的", @"好唱的"],
                         @[@"美食城1",@"美食城2", @"美食城3", @"美食城5", @"美食城10"],
                         @[@"金逸影院", @"万达影院", @"兄弟影院", @"新影联影院", @"保利影院", @"大地影院"],
                         @[@"韩式烤肉", @"日式自助", @"海底捞", @"湘十二楼", @"金百万"],
                         @[@"长城", @"故宫", @"天安门", @"明十三陵", @"颐和园", @"圆明园"],
                         @[@"玛莎拉蒂", @"法拉利", @"奔驰", @"宝马", @"奥迪"],
                         @[@"休闲网咖", @"学子网吧"],
                         @[@"英雄联盟", @"王者荣耀", @"大吉大利", @"大话西游", @"传奇"]
                         ];
    
    NSMutableArray *data1 = [NSMutableArray arrayWithObjects:array1, array2, array3, @[@"自定义"], nil];
    NSMutableArray *data2 = [NSMutableArray arrayWithObjects:@[], array21, @[], @[], nil];
    SCDropDownMenuView *menu = [[SCDropDownMenuView alloc] initWithFrame:CGRectMake(0, kNavBarHeight, kScreenWidth, 40) firstArray:data1 secondArray:data2];
    menu.delegate = self;
    menu.cellSelectBackgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    menu.ratioLeftToScreen = 0.35;
    [self.view addSubview:menu];
    
    /*副标*/
    NSMutableArray *detail1 = [NSMutableArray arrayWithObjects:@"21", @"22", @"23", @"24", nil];
    NSMutableArray *detail2 = [NSMutableArray arrayWithObjects:@"11", @"12", @"13", @"14", @"15", @"16", @"17", @"18", nil];
    NSMutableArray *detail3 = [NSMutableArray arrayWithObjects:@"31", @"32", @"33", @"34", @"35", @"36", @"37", @"38", nil];
    NSArray *detail21 = @[
                          @[@"111", @"112", @"113", @"114", @"115"],
                          @[@"121",@"122", @"123", @"125", @"125"],
                          @[@"131", @"132", @"133", @"134", @"135", @"136"],
                          @[@"141", @"142", @"143", @"144", @"145"],
                          @[@"151", @"152", @"153", @"154", @"155", @"156"],
                          @[@"161", @"162", @"163", @"164", @"165"],
                          @[@"171", @"172"],
                          @[@"181", @"182", @"183", @"184", @"185"]
                          ];
    menu.firstRightArray = [NSMutableArray arrayWithObjects:detail1, detail2, detail3, nil];
    menu.secondRightArray = [NSMutableArray arrayWithObjects:@[], detail21, nil];
    
    /*风格*/
    menu.menuStyleArray = [NSMutableArray arrayWithObjects:[NSNumber numberWithInteger:SCDropDownMenuStyleTableView], [NSNumber numberWithInteger:SCDropDownMenuStyleTableView], [NSNumber numberWithInteger:SCDropDownMenuStyleCollectionView], [NSNumber numberWithInteger:SCDropDownMenuStyleCustom], nil];
    
    /*自定义视图*/
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 300)];
    label.text = @"我是自定义视图\n我是自定义视图\n我是自定义视图\n我是自定义视图\n我是自定义视图\n我是自定义视图\n我是自定义视图\n我是自定义视图";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor orangeColor];
    menu.customViews = [NSMutableArray arrayWithObjects:[NSNull null], [NSNull null], [NSNull null], label, nil];
    
}

- (void)menuView:(SCDropDownMenuView *)menu selectIndex:(SCIndexPatch *)index {
    NSLog(@"index: %@", index);
}

- (void)menuView:(SCDropDownMenuView *)menu tfColumn:(NSInteger)column {
    NSLog(@"column: %ld", column);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
