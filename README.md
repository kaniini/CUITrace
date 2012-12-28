# CUITrace

A SIMBL plugin for injecting a trace function for CoreUI draw operations.  When enabled on an
application, it will dump all CoreUI draw operations to stdout ala NSLog().

## What it looks like

This is CUITrace observing the drawing of the initial Mail.app window with no messages loaded:

```
2012-12-27 20:47:11.021 Mail[30337:707] CUITrace initializing
2012-12-27 20:47:11.105 Mail[30337:707] CUITrace loaded
2012-12-27 20:47:11.110 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5835bf0>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.125 Mail[30337:707] {
    kCUIWindowFrameRoundedBottomCornersKey = 1;
    kCUIWindowFrameUnifiedTitleBarHeightKey = 80;
    state = inactive;
    widget = kCUIWidgetWindowFrame;
    windowtype = kCUIWindowTypeTextured;
}
2012-12-27 20:47:11.128 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12e9310>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.129 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12ef520>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.130 Mail[30337:707] {
    animframe = 0;
    backgroundTypeKey = backgroundTypeRaised;
    direction = down;
    kCUIImageNoCacheKey = 1;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = kCUIWidgetDisclosureTriangle;
}
2012-12-27 20:47:11.130 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12ef520>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.132 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5835bf0>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.133 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e392fd10>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.135 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e583fc90>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.136 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5900f40>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:11.137 Mail[30337:707] {
    animframe = 0;
    backgroundTypeKey = backgroundTypeRaised;
    direction = right;
    kCUIImageNoCacheKey = 1;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = kCUIWidgetDisclosureTriangle;
}
2012-12-27 20:47:11.139 Mail[30337:707] {
    backgroundTypeKey = backgroundTypeRaised;
    imageIsGrayscaleKey = 1;
    imageNameKey = "image.DropDownIndicator";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.141 Mail[30337:707] {
    backgroundTypeKey = backgroundTypeLight;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e582a8d0>";
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = image;
}
2012-12-27 20:47:16.143 Mail[30337:707] {
    backgroundTypeKey = backgroundTypeLight;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5830560>";
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = image;
}
2012-12-27 20:47:16.145 Mail[30337:800b] *** -[IADomainCache init]: IA domains cache is out of date.
2012-12-27 20:47:16.188 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12e9310>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.189 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12ef520>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.190 Mail[30337:707] {
    animframe = 0;
    backgroundTypeKey = backgroundTypeRaised;
    direction = down;
    kCUIImageNoCacheKey = 1;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = kCUIWidgetDisclosureTriangle;
}
2012-12-27 20:47:16.191 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12ef520>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.192 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5835bf0>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.194 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e392fd10>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.195 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e583fc90>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.197 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5900f40>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:16.197 Mail[30337:707] {
    animframe = 0;
    backgroundTypeKey = backgroundTypeRaised;
    direction = right;
    kCUIImageNoCacheKey = 1;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = kCUIWidgetDisclosureTriangle;
}
2012-12-27 20:47:16.209 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5835bf0>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.088 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12e9310>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.089 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12ef520>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.089 Mail[30337:707] {
    animframe = 0;
    backgroundTypeKey = backgroundTypeRaised;
    direction = down;
    kCUIImageNoCacheKey = 1;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = kCUIWidgetDisclosureTriangle;
}
2012-12-27 20:47:18.090 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e12ef520>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.091 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5835bf0>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.092 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e392fd10>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.093 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e583fc90>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.097 Mail[30337:707] {
    backgroundTypeKey = kCUIBackgroundTypeSourceList;
    imageIsGrayscaleKey = 1;
    imageReferenceKey = "<CGImage 0x7f87e5900f40>";
    kCUIPresentationStateKey = kCUIPresentationStateInactive;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    widget = image;
}
2012-12-27 20:47:18.097 Mail[30337:707] {
    animframe = 0;
    backgroundTypeKey = backgroundTypeRaised;
    direction = right;
    kCUIImageNoCacheKey = 1;
    kCUIUserInterfaceLayoutDirectionKey = kCUIUserInterfaceLayoutDirectionLeftToRight;
    state = normal;
    widget = kCUIWidgetDisclosureTriangle;
}
```
