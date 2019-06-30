//
//  ViewController.swift
//  caffeine-iOS
//
//  Created by 김연준 on 30/06/2019.
//  Copyright © 2019 caffeine. All rights reserved.
//

import UIKit
import MaterialComponents
import ManualLayout

class ViewController: BaseViewController{
  let bottomAppBar = MDCBottomAppBarView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.addSubview(bottomAppBar)
  }
  
  override func customize() {
    bottomAppbarCustomize()
  }
  
  override func setupConstraints() {
    layoutBottomNavBar()
    bottomAppBar.bottom = view.bottom
  }
}

extension ViewController {
  func layoutBottomNavBar() {
    let size = bottomAppBar.sizeThatFits(view.bounds.size)

    var bottomNavBarFrame = CGRect(x: 0,
                                   y: view.bounds.height - size.height,
                                   width: size.width,
                                   height: size.height)
    
    if #available(iOS 11.0, *) {
      bottomNavBarFrame.size.height += view.safeAreaInsets.bottom
      bottomNavBarFrame.origin.y -= view.safeAreaInsets.bottom
    }
    
    bottomAppBar.frame = bottomNavBarFrame
//    bottomAppBar.selectedItem = bottomNav.items[0]
  }
  
  func bottomAppbarCustomize() {
    bottomAppbafloatingButtonCustomize()
  }
  
  func bottomAppbafloatingButtonCustomize() {
    let colorScheme = MDCSemanticColorScheme()
    let typgoraphyScheme = MDCTypographyScheme()
    let buttonScheme = MDCButtonScheme()
    
    colorScheme.onSurfaceColor = UIColor(named: "AppBarBackgroundColor")!
    colorScheme.backgroundColor = UIColor(named: "AppBarBackgroundColor")!
    colorScheme.surfaceColor = UIColor(named: "AppBarBackgroundColor")!
    colorScheme.primaryColor = UIColor(named: "FloatingButton")!
    buttonScheme.colorScheme = colorScheme
    buttonScheme.typographyScheme = typgoraphyScheme
    
    MDCFloatingActionButtonThemer.applyScheme(buttonScheme, to: bottomAppBar.floatingButton)
    MDCBottomAppBarColorThemer.applySurfaceVariant(withSemanticColorScheme: colorScheme,
                                                   to: bottomAppBar)
  }
  

//
//  func TabBarIteminit(){
//    let homeImage = UIImage(named: "home")?.resized(newSize: CGSize(width: 20, height: 20)).withRenderingMode(UIImage.RenderingMode.alwaysOriginal).addImagePadding(x: 0, y: 10)
//    //    let chatImage = UIImage(named: "Chat")?.resized(newSize: CGSize(width: 20, height: 20)).withRenderingMode(UIImage.RenderingMode.alwaysTemplate).addImagePadding(x: 0, y: 10)
//    let walletImage = UIImage(named: "wallet")?.resized(newSize: CGSize(width: 20, height: 20)).withRenderingMode(UIImage.RenderingMode.alwaysTemplate).addImagePadding(x: 0, y: 10)
//    let storeImage = UIImage(named: "shop")?.resized(newSize: CGSize(width: 20, height: 20)).withRenderingMode(UIImage.RenderingMode.alwaysTemplate).addImagePadding(x: 0, y: 10)
//    let moreImage = UIImage(named: "more")?.resized(newSize: CGSize(width: 20, height: 20)).withRenderingMode(UIImage.RenderingMode.alwaysTemplate).addImagePadding(x: 0, y: 10)
//
//    let home = UITabBarItem(title: "홈", image: homeImage, tag: 0)
//    //    let chat = UITabBarItem(title: "채팅", image: chatImage, tag: 1)
//    let FANZY = UITabBarItem(title: "지갑", image: walletImage, tag: 2)
//    let store = UITabBarItem(title: "스토어", image: storeImage, tag: 3)
//    let account = UITabBarItem(title: "더보기", image: moreImage, tag: 4)
//
//    //bottom navber color Setting
//    let colorScheme = MDCSemanticColorScheme()
//
//    colorScheme.primaryColor = UIColor(rgb: 0x282828)
//
//    colorScheme.primaryColorVariant = UIColor(rgb: 0x282828)
//
//    colorScheme.secondaryColor = colorScheme.primaryColor
//
//    MDCBottomNavigationBarColorThemer.applySemanticColorScheme(colorScheme, toBottomNavigation: bottomNav)
//
//    bottomNav.titleVisibility = MDCBottomNavigationBarTitleVisibility.always
//    bottomNav.tintColor = .white
//    //    chat
//    bottomNav.items = [home, FANZY, store, account]
//  }
}

