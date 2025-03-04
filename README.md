# InteractiveZoomDriver
This repo is view to zoomable by pinch gesture.

## Overview

![](demo.gif)

## Installation

### Carthage

For Installing with Carthage, add it to your `Cartfile`.

```
github "shima11/InteractiveZoomDriver"
```

### CocoaPods

For installing with CocoaPods, add it to your `Podfile`.

```
pod 'InteractiveZoomDriver'
```

## Usage

```
import InteractiveZoomDriver

let zoomView = UIImageView() // UIView or SubClass of UIView
zoomView.isUserInteractionEnabled = true
```

### case1: driver
Add zoom function to target UIView.

`gestureTargetView`: added tap and pan gesture.  
`sourceView`: source view.  
`targetViewFactory`: Transformed View during zooming.  
`shouldZoomTransform`: Delegate to the outside whether zooming is possible.  

```
let driver = InteractiveZoomDriver(
  gestureTargetView: imageView2,
  sourceView: imageView2,
  targetViewFactory: { (fromImageView: UIImageView) -> UIView in
    let view = UIImageView()
    view.image = fromImageView.image
    view.clipsToBounds = fromImageView.clipsToBounds
    view.contentMode = fromImageView.contentMode
    return view
  },
  shouldZoomTransform: {(sourceView: UIImageView) -> Bool in
    if sourceView.image == nil {
      return false
    }
    return true
  }
)
```
This is also no problem.
`InteractiveZoomView.clone` and `InteractiveZoomView.shouldZoomTransform` is default implementation of protocol extension.
`InteractiveZoomView` corresponds to `UIImageView` only.
To support other than `UIImageView`, add an implementation in extension.

```
let driver = InteractiveZoomDriver(
  gestureTargetView: zoomView, 
  sourceView: zoomView, 
  targetViewFactory: InteractiveZoomView.clone, 
  shouldZoomTransform: InteractiveZoomView.shouldZoomTransform
)
```

### case2: overlay view 

InteractiveZoomView is able to only UIImageView now.  
If you want to use custom UIView, you need to create extension of InteractiveZoomView with reference to InteractiveZoomView.

```
let overlayZoomView = InteractiveZoomView(
    sourceView: zoomView
)
view.addSubView(overlayZoomView)
```
