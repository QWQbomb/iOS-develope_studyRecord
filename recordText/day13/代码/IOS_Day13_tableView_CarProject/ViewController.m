//
//  ViewController.m
//  IOS_Day13_tableView_CarProject
//
//  Created by yz on 2020/5/12.
//  Copyright © 2020 yz. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"
#import "Car.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

/*  后台传来所有的数据 */
@property (nonatomic,strong) NSArray *carGroups;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置数据源
    self.tableView.dataSource=self;
    
    CarGroup *group1 =[[CarGroup alloc] init];
    group1.header=@"德系品牌";
    group1.footer=@"热衷追求质量的德系车在外观和性能都下足了功夫";
    group1.cars= @[[Car carWithName:@"奔驰" icon:@"bc"],[Car carWithName:@"宝马" icon:@"bm"]];
    
    CarGroup *group2 =[[CarGroup alloc] init];
    group2.header=@"日系品牌";
    group2.footer=@"日系车这些年来在国内持续火爆，通过汽车销量数据，我们发现进入十强的汽车无疑例外全是日系";
    group2.cars= @[[Car carWithName:@"本田" icon:@"bt"],[Car carWithName:@"马自达" icon:@"mzd"],[Car carWithName:@"日产" icon:@"rc"]];
    
    CarGroup *group3 =[[CarGroup alloc] init];
    group3.header=@"意系品牌";
    group3.footer=@"挑战极限，高傲不凡，豪放不羁。";
    group3.cars= @[[Car carWithName:@"兰博基尼" icon:@"lbjn"]];
    
    self.carGroups = @[group1,group2,group3];
    
}
/* 告诉tableView每一组的头部标题 */
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    CarGroup *group = self.carGroups[section];
    return group.header;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    CarGroup *group = self.carGroups[section];
    return group.footer;
}

/* 告诉tableView一共有几组数据 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.carGroups.count;
}
/* 告诉tableView第section组有几行 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    CarGroup *group = self.carGroups[section];
    return group.cars.count;
}
/* 告诉tableView每一行显示的内容 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    CarGroup *group = self.carGroups[indexPath.section];
    Car *car= group.cars[indexPath.row];
    
    cell.textLabel.text = car.name;
    cell.imageView.image = [UIImage imageNamed:car.icon];
   
    return cell;
}

@end

