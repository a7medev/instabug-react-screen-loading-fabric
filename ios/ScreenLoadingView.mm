#import "ScreenLoadingView.h"

#import <react/renderer/components/RNScreenLoadingViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNScreenLoadingViewSpec/EventEmitters.h>
#import <react/renderer/components/RNScreenLoadingViewSpec/Props.h>
#import <react/renderer/components/RNScreenLoadingViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "IBGScreenLoading.h"

using namespace facebook::react;

@interface ScreenLoadingView () <RCTScreenLoadingViewViewProtocol>

@end

@implementation ScreenLoadingView {
    IBGScreenLoading * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<ScreenLoadingViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const ScreenLoadingViewProps>();
    _props = defaultProps;

    _view = [[IBGScreenLoading alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<ScreenLoadingViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<ScreenLoadingViewProps const>(props);

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> ScreenLoadingViewCls(void)
{
    return ScreenLoadingView.class;
}

@end
