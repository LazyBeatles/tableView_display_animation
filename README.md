Demo样式如下：

![cell_display_animation.gif](cell_display_animation.gif)

```
// tableView 的协议方法，在这个方法中调用即可
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    // animationStyle: 动画类型
    [cell tableView:tableView forRowAtIndexPath:indexPath animationStyle:animationStyle];
}
```

支持的动画类型：
```
typedef NS_ENUM(NSInteger, UITableViewCellDisplayAnimationStyle) {
    UITableViewCellDisplayAnimationTop = 0, // line by line
    UITableViewCellDisplayAnimationLeft = 1,
    UITableViewCellDisplayAnimationBottom = 2,
    UITableViewCellDisplayAnimationRight = 3,
    UITableViewCellDisplayAnimationTopTogether = 4, // together
    UITableViewCellDisplayAnimationLeftTogether = 5,
    UITableViewCellDisplayAnimationBottomTogether = 6,
    UITableViewCellDisplayAnimationRightTogether = 7,
    UITableViewCellDisplayAnimationFadeIn = 8, // fade in line by line
    UITableViewCellDisplayAnimationFadeInTogether = 9, // fade in together
};
```

