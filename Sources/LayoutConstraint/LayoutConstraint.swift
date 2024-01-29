//
// Copyright © MAHESHWARAN. All rights reserved.
//
// LayoutConstraint

#if os(iOS) || os(tvOS)

import UIKit
public typealias PlatformView = UIView
#else

import AppKit
public typealias PlatformView = NSView
#endif

public final class LayoutConstraint {
  
  private var item: PlatformView
  
  private(set) var constraints = [NSLayoutConstraint]()
  
  public init(_ item: PlatformView) {
    self.item = item
    self.item.translatesAutoresizingMaskIntoConstraints = false
  }
  
  public func top(_ top: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.topAnchor.constraint(equalTo: top, constant: constant))
  }
  
  public func bottom(_ bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.bottomAnchor.constraint(equalTo: bottom, constant: constant))
  }
  
  public func leading(_ leading: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.leadingAnchor.constraint(equalTo: leading, constant: constant))
  }
  
  public func trailing(_ trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.trailingAnchor.constraint(equalTo: trailing, constant: constant))
  }
  
  public func centerX(_ centerX: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.centerXAnchor.constraint(equalTo: centerX, constant: constant))
  }
  
  public func centerY(_ centerY: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.centerYAnchor.constraint(equalTo: centerY, constant: constant))
  }
  
  public func height(_ height: NSLayoutDimension) {
    constraints.append(item.heightAnchor.constraint(equalTo: height))
  }
  
  public func height(_ height: CGFloat) {
    constraints.append(item.heightAnchor.constraint(equalToConstant: height))
  }
  
  public func width(_ width: NSLayoutDimension) {
    constraints.append(item.widthAnchor.constraint(equalTo: width))
  }
  
  public func width(_ width: CGFloat) {
    constraints.append(item.widthAnchor.constraint(equalToConstant: width))
  }
  
  // MARK: - GreaterThan
  
  public func top(greaterThanOrEqualTo top: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.topAnchor.constraint(greaterThanOrEqualTo: top, constant: constant))
  }
  
  public func bottom(greaterThanOrEqualTo bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.bottomAnchor.constraint(greaterThanOrEqualTo: bottom, constant: constant))
  }
  
  public func leading(greaterThanOrEqualTo leading: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.leadingAnchor.constraint(greaterThanOrEqualTo: leading, constant: constant))
  }
  
  public func trailing(greaterThanOrEqualTo trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.trailingAnchor.constraint(greaterThanOrEqualTo: trailing, constant: constant))
  }
  
  // MARK: - LessThan
  
  public func top(lessThanOrEqualTo top: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.topAnchor.constraint(lessThanOrEqualTo: top, constant: constant))
  }
  
  public func bottom(lessThanOrEqualTo bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.bottomAnchor.constraint(lessThanOrEqualTo: bottom, constant: constant))
  }
  
  public func leading(lessThanOrEqualTo leading: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.leadingAnchor.constraint(lessThanOrEqualTo: leading, constant: constant))
  }
  
  public func trailing(lessThanOrEqualTo trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.trailingAnchor.constraint(lessThanOrEqualTo: trailing, constant: constant))
  }
}

// MARK: - PlatformView

public extension PlatformView {
  
  func edges(to superView: PlatformView) {
    translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
      leadingAnchor.constraint(equalTo: superView.leadingAnchor),
      trailingAnchor.constraint(equalTo: superView.trailingAnchor),
      bottomAnchor.constraint(equalTo: superView.bottomAnchor),
    ])
  }
  
  func make(_ value: (LayoutConstraint) -> Void) {
    let view = LayoutConstraint(self)
    value(view)
    
    NSLayoutConstraint.activate(view.constraints)
  }
}
