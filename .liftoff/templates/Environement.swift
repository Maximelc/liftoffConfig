//
//  Environement.swift
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

import UIKit
import Foundation

enum Environement {
    
    // MARK: Storyboard segue
    enum storyboardSegue {
        static let home: String = ""
    }
    
    // MARK: Minimal length for inputs
    enum minimalLength {
        static let input: Int = 3
    }
    
    // MARK: Application colors
    enum colors {
        static let white: UIColor = UIColor(colorWithHexValue: 0xffffff)
        static let black: UIColor = UIColor(colorWithHexValue: 0x1D1D1D)
    }
    
    // MARK: Application assets
    enum assets {
        static let homeImage: UIImage = UIImage(named: "")!
    }
}
