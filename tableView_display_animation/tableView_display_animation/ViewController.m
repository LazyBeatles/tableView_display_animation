//
//  ViewController.m
//  tableView_display_animation
//
//  Created by 雷亮 on 16/8/6.
//  Copyright © 2016年 Leiliang. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"

static NSString *const reUse = @"reUse";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray <NSString *>*dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.tableFooterView = [[UIView alloc] init];

    self.dataArray = @[@"UITableViewCellDisplayAnimationTop",
                       @"UITableViewCellDisplayAnimationLeft",
                       @"UITableViewCellDisplayAnimationBottom",
                       @"UITableViewCellDisplayAnimationRight",
                       @"UITableViewCellDisplayAnimationTopTogether",
                       @"UITableViewCellDisplayAnimationLeftTogether",
                       @"UITableViewCellDisplayAnimationBottomTogether",
                       @"UITableViewCellDisplayAnimationRightTogether",
                       @"UITableViewCellDisplayAnimationFadeIn",
                       @"UITableViewCellDisplayAnimationFadeInTogether"];
}

#pragma mark -
#pragma mark - tableView protocol methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reUse forIndexPath:indexPath];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DemoViewController *demoVC = [storyboard instantiateViewControllerWithIdentifier:@"DemoVC"];
    demoVC.title = self.dataArray[indexPath.row];
    demoVC.index = indexPath.row;
    [self.navigationController pushViewController:demoVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
