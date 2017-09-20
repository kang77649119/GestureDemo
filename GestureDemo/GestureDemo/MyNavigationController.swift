//
//  MyNavigationController.swift
//  GestureDemo
//
//  Created by 也许、 on 2017/9/20.
//  Copyright © 2017年 也许、. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // 计数变量
//        var count:UInt32 = 0
//        // 获取手势对象具有的所有属性
//        let ivarList = class_copyIvarList(UIGestureRecognizer.self, &count)
//        // 遍历属性集合
//        for i in 0..<count {
//            // 通过ivar_getName 获取属性的指针
//            let ivar = ivar_getName(ivarList![Int(i)])
//            // 获取指针对应的属性名称
//            let ivarStr = String(cString: ivar!)
//            // 打印属性名称
//            print(ivarStr)
//        }
//
//        print("-------华丽的分割线-------")
//
//        // 使用KVO获取返回手势的_targets属性值，返回一个数组
//        let gesArray = self.interactivePopGestureRecognizer?.value(forKey: "_targets") as! [NSObject]
//        let gesObj = gesArray[0]
//        print(gesObj)
//        // 取得target对应的值
//        let target = gesObj.value(forKey: "target")
//        // action已经给出了对应的方法
//        let action = Selector(("handleNavigationTransition:"))
//
//        // 创建滑动手势
//        let panGes = UIPanGestureRecognizer(target: target!, action: action)
//        // 给当前view添加手势
//        self.view.addGestureRecognizer(panGes)
        
        // 打印当前的返回手势
        print(self.interactivePopGestureRecognizer)
        
        // 代理对象
        let target = interactivePopGestureRecognizer?.delegate
        // 代理方法
        let action = Selector(("handleNavigationTransition:"))
        
        let spanGes = UIPanGestureRecognizer(target: target, action: action)
        self.view.addGestureRecognizer(spanGes)
        
    }

}
