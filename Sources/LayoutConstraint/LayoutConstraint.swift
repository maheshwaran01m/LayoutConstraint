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

final class LayoutConstraint {
  
  private var item: PlatformView
  
  private(set) var constraints = [NSLayoutConstraint]()
  
  init(_ item: PlatformView) {
    self.item = item
    self.item.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func top(_ top: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.topAnchor.constraint(equalTo: top, constant: constant))
  }
  
  func bottom(_ bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.bottomAnchor.constraint(equalTo: bottom, constant: constant))
  }
  
  func leading(_ leading: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.leadingAnchor.constraint(equalTo: leading, constant: constant))
  }
  
  func trailing(_ trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.trailingAnchor.constraint(equalTo: trailing, constant: constant))
  }
  
  func centerX(_ centerX: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.centerXAnchor.constraint(equalTo: centerX, constant: constant))
  }
  
  func centerY(_ centerY: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.centerYAnchor.constraint(equalTo: centerY, constant: constant))
  }
  
  func height(_ height: NSLayoutDimension) {
    constraints.append(item.heightAnchor.constraint(equalTo: height))
  }
  
  func height(_ height: CGFloat) {
    constraints.append(item.heightAnchor.constraint(equalToConstant: height))
  }
  
  func width(_ width: NSLayoutDimension) {
    constraints.append(item.widthAnchor.constraint(equalTo: width))
  }
  
  func width(_ width: CGFloat) {
    constraints.append(item.widthAnchor.constraint(equalToConstant: width))
  }
  
  // MARK: - GreaterThan
  
  func top(greaterThanOrEqualTo top: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.topAnchor.constraint(greaterThanOrEqualTo: top, constant: constant))
  }
  
  func bottom(greaterThanOrEqualTo bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.bottomAnchor.constraint(greaterThanOrEqualTo: bottom, constant: constant))
  }
  
  func leading(greaterThanOrEqualTo leading: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.leadingAnchor.constraint(greaterThanOrEqualTo: leading, constant: constant))
  }
  
  func trailing(greaterThanOrEqualTo trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.trailingAnchor.constraint(greaterThanOrEqualTo: trailing, constant: constant))
  }
  
  // MARK: - LessThan
  
  func top(lessThanOrEqualTo top: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.topAnchor.constraint(lessThanOrEqualTo: top, constant: constant))
  }
  
  func bottom(lessThanOrEqualTo bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.bottomAnchor.constraint(lessThanOrEqualTo: bottom, constant: constant))
  }
  
  func leading(lessThanOrEqualTo leading: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.leadingAnchor.constraint(lessThanOrEqualTo: leading, constant: constant))
  }
  
  func trailing(lessThanOrEqualTo trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
    constraints.append(item.trailingAnchor.constraint(lessThanOrEqualTo: trailing, constant: constant))
  }
}
