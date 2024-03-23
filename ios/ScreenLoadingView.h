// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef ScreenLoadingViewNativeComponent_h
#define ScreenLoadingViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface ScreenLoadingView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* ScreenLoadingViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
