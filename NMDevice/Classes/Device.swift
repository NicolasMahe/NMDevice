//
//  Device.swift
//  NMDevice
//
//  Created by Nicolas Mahé on 29/03/16.
//  Copyright © 2016 Nicolas Mahé. All rights reserved.
//

import UIKit

public class Device {
  
  public static let iosVersion = NSString(string: UIDevice.current.systemVersion).doubleValue
  public static let name = UIDevice.current.name
  public static let systemName = UIDevice.current.systemName
    
  public static let isiOS7OrLess = iosVersion < 8
  public static let isiOS8OrLess = iosVersion < 9
  public static let isiOS10 = iosVersion >= 10
  public static let isiOS9 = iosVersion >= 9
  public static let isiOS8 = iosVersion >= 8
  public static let isiOS7 = iosVersion >= 7 && iosVersion < 8
  
  public static let isIphone35inch: Bool = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 480.0
  public static let isIphone40inch: Bool = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 568.0
  public static let isIphone47inch: Bool = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 667.0
  public static let isIphone55inch: Bool = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 736.0
  
  public static var scale: CGFloat = UIScreen.main.scale
  
  //screen size
  public class ScreenSize {
    public static let width = UIScreen.main.bounds.size.width
    public static let height = UIScreen.main.bounds.size.height
    public static let max_length = max(ScreenSize.width, ScreenSize.height)
    public static let min_length = min(ScreenSize.width, ScreenSize.height)
  }
}

