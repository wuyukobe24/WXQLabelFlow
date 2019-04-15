# WXQLabelFlow
不规则标签流

1、Add `pod 'WXQLabelFlow'` to your Podfile.

2、Run `pod install` or `pod update`.

3、Import <WXQLabelFlow.h>.

使用代码示例：
```
#import "ViewController.h"
#import <WXQLabelFlow.h>

@interface ViewController ()
@property (nonatomic, strong) WXQCustomLabelFlow *labelFlow;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    __weak typeof(self) weakSelf = self;
    self.labelFlow = [[WXQCustomLabelFlow alloc]initWithFrame:CGRectZero titles:self.titles selectedIndex:^(NSUInteger index, NSString *title) {
        NSLog(@"index = %lu,title = %@",(unsigned long)index,title);
    } finishHandler:^(CGFloat height) {
        [weakSelf reloadLabelFlowFrameWithHeight:height];
    }];
    [self.view addSubview:self.labelFlow];
    /**以下为自定义内容**/
    /**
     self.labelFlow.labelFlowBgColor = [UIColor blueColor];
     self.labelFlow.itemColor = [UIColor redColor];
     self.labelFlow.textColor = [UIColor blackColor];
     self.labelFlow.textFont = [UIFont systemFontOfSize:20];
     self.labelFlow.contentInsets = UIEdgeInsetsMake(20, 20, 20, 20);
     self.labelFlow.lineSpace = 20;
     self.labelFlow.itemHeight = 30;
     self.labelFlow.itemSpace = 30;
     self.labelFlow.itemCornerRaius = 15;
     self.labelFlow.textEdge = 20;
     self.labelFlow.aBorderWidth = 2.0f;
     self.labelFlow.aBorderColor = [UIColor blackColor];
     */
}
#pragma mark - Private Methods
// Methods…(.m中声明)
- (void)reloadLabelFlowFrameWithHeight:(CGFloat)height {
    self.labelFlow.frame = CGRectMake(0, 0, self.view.frame.size.width, height);
    self.labelFlow.center = self.view.center;
}
#pragma mark - Getters and Setters
- (NSArray *)titles {
    return @[@"明月",@"几时有？",@"把酒问青天。",@"不",@"知天上宫阙",@"，",@"今夕",@"是何年。",@"我欲乘风归去，",@"又恐琼楼玉宇，高处不胜寒。",@"起舞",@"弄",@"清影，",@"何似在人间？",@"转朱阁，低绮户，照无眠。",@"不应有恨，何事长向别时圆？",@"人有悲欢离合，月有阴晴圆缺，此事古难全。",@"但愿人长久，千里共婵娟。"];
}

@end
```

运行效果：
