#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "IBGScreenLoading.h"

@interface ScreenLoadingViewManager : RCTViewManager
@end

@implementation ScreenLoadingViewManager

RCT_EXPORT_MODULE(ScreenLoadingView)

- (UIView *)view
{
  return [[IBGScreenLoading alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(color, NSString)

@end
