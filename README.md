最近在网上看到好多同学都在求列表的展示动画，所以我对这些较常用的动画做了一个封装，方便大家的使用。

Demo样式如下( gif图有些卡顿，但是Demo是流畅的，大家可以下载后运行一下)：

![cell_display_animation.gif](cell_display_animation.gif)

这里我对UITableViewCell进行了一个扩展，使用的时候只要导入"UITableViewCell+leoAdd.h" 文件即可，使用方法如下：
```
// tableView 的协议方法，在这个方法中调用即可
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    // animationStyle: 动画类型
    [cell tableView:tableView forRowAtIndexPath:indexPath animationStyle:animationStyle];
}
```

动画类型目前有以下几种，Demo中都有展示：
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

如果这个Demo对你有帮助的话请给个star奥，谢谢大家 😊 !!!
