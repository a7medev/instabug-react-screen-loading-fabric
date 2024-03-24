package com.screenloading;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

import android.util.Log;
import android.view.View;

public class ScreenLoadingView extends View {

  public ScreenLoadingView(Context context) {
    super(context);
  }

  public ScreenLoadingView(Context context, @Nullable AttributeSet attrs) {
    super(context, attrs);
  }

  public ScreenLoadingView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
    super(context, attrs, defStyleAttr);
  }

  @Override
  protected void onDraw(@NonNull Canvas canvas) {
    super.onDraw(canvas);
    Log.d("IBG-RN", "IBG-RN: View.onDraw " + System.currentTimeMillis());
  }
}
