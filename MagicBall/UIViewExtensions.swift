//
//  UIViewExtensions.swift
//  MagicBall
//
//  Created by iguest on 6/8/22.
//

import Foundation
import UIKit
 
 extension UIView {
     func fadeIn(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
         UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
              self.alpha = 1.0
              }, completion: completion)
     }
  
     func fadeOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
         UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
             self.alpha = 0.0
             }, completion: completion)
     }
}
