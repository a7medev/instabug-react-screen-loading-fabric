package com.screenloading;

import androidx.annotation.Nullable;

import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.viewmanagers.ScreenLoadingViewManagerDelegate;
import com.facebook.react.viewmanagers.ScreenLoadingViewManagerInterface;

@ReactModule(name = ScreenLoadingViewManager.NAME)
public class ScreenLoadingViewManager extends SimpleViewManager<ScreenLoadingView> implements ScreenLoadingViewManagerInterface<ScreenLoadingView> {

  public static final String NAME = "ScreenLoadingView";

  private final ViewManagerDelegate<ScreenLoadingView> mDelegate;

  public ScreenLoadingViewManager() {
    mDelegate = new ScreenLoadingViewManagerDelegate(this);
  }

  @Nullable
  @Override
  protected ViewManagerDelegate<ScreenLoadingView> getDelegate() {
    return mDelegate;
  }

  @Override
  public String getName() {
    return NAME;
  }

  @Override
  public ScreenLoadingView createViewInstance(ThemedReactContext context) {
    return new ScreenLoadingView(context);
  }
}
