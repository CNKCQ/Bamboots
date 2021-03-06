//
//  UIProgressView+Bamboots.swift
//  Pods
//
//  Created by ZhengYidong on 26/12/2016.
//
//

import Foundation
import Alamofire

// MARK: - Making `UIProgressView` conforms to `LoadProgressable`
extension UIProgressView: Progressable {

    /// Updating progress
    ///
    /// - Parameter progress: Progress object generated by network request
    public func progress(_ progress: Progress) {
        self.setProgress(Float(progress.completedUnitCount).divided(by: Float(progress.totalUnitCount)), animated: true)
    }
}
