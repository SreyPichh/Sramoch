//
//  R.generated.swift
//  FLEX
//
//  Created by Sreypich Phan on 10/31/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
    fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
    fileprivate static let hostingBundle = Bundle(for: R.Class.self)
    
    static func validate() throws {
        try intern.validate()
    }
    
    /// This `R.color` struct is generated, and contains static references to 0 colors.
    struct color {
        fileprivate init() {}
    }
    
    /// This `R.file` struct is generated, and contains static references to 0 files.
    struct file {
        fileprivate init() {}
    }
    
    /// This `R.font` struct is generated, and contains static references to 0 fonts.
    struct font {
        fileprivate init() {}
    }
    
    /// This `R.image` struct is generated, and contains static references to 0 images.
    struct image {
        /// This `R.image.background` struct is generated, and contains static references to 1 images.
        struct background {
            /// Image `background`.
            static let background = Rswift.ImageResource(bundle: R.hostingBundle, name: "background")
            
            /// `UIImage(named: "background", bundle: ..., traitCollection: ...)`
            static func background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
                return UIKit.UIImage(resource: R.image.background.background, compatibleWith: traitCollection)
            }
            
            fileprivate init() {}
        }
        
        /// This `R.image.welcome` struct is generated, and contains static references to 1 images.
        struct welcome {
            /// Image `contents`.
            static let contents = Rswift.ImageResource(bundle: R.hostingBundle, name: "Welcome/contents")
            
            /// `UIImage(named: "contents", bundle: ..., traitCollection: ...)`
            static func contents(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
                return UIKit.UIImage(resource: R.image.welcome.contents, compatibleWith: traitCollection)
            }
            
            fileprivate init() {}
        }
        
        fileprivate init() {}
    }
    
    /// This `R.nib` struct is generated, and contains static references to 0 nibs.
    struct nib {
        fileprivate init() {}
    }
    
    /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
    struct reuseIdentifier {
        fileprivate init() {}
    }
    
    /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
    struct segue {
        fileprivate init() {}
    }
    
    /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
    struct storyboard {
        /// Storyboard `LaunchScreen`.
        static let launchScreen = _R.storyboard.launchScreen()
        
        /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
        static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
            return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
        }
        
        fileprivate init() {}
    }
    
    /// This `R.string` struct is generated, and contains static references to 1 localization tables.
    struct string {
        /// This `R.string.welcome` struct is generated, and contains static references to 2 localization keys.
        struct welcome {
            /// Value: ようこそleeへ
            static let welcom = Rswift.StringResource(key: "welcom", tableName: "welcome", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: 今すぐ始める
            static let button = Rswift.StringResource(key: "button", tableName: "welcome", bundle: R.hostingBundle, locales: [], comment: nil)
            
            /// Value: ようこそleeへ
            static func welcom(_: Void = ()) -> String {
                return NSLocalizedString("welcom", tableName: "welcome", bundle: R.hostingBundle, comment: "")
            }
            
            /// Value: 今すぐ始める
            static func button(_: Void = ()) -> String {
                return NSLocalizedString("button", tableName: "welcome", bundle: R.hostingBundle, comment: "")
            }
            
            fileprivate init() {}
        }
        
        fileprivate init() {}
    }
    
    fileprivate struct intern: Rswift.Validatable {
        fileprivate static func validate() throws {
            try _R.validate()
        }
        
        fileprivate init() {}
    }
    
    fileprivate class Class {}
    
    fileprivate init() {}
}

struct _R: Rswift.Validatable {
    static func validate() throws {
        try storyboard.validate()
    }
    
    struct nib {
        fileprivate init() {}
    }
    
    struct storyboard: Rswift.Validatable {
        static func validate() throws {
            try launchScreen.validate()
        }
        
        struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
            typealias InitialController = UIKit.UIViewController
            
            let bundle = R.hostingBundle
            let name = "LaunchScreen"
            
            static func validate() throws {
                if UIKit.UIImage(named: "background") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'background' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
            }
            
            fileprivate init() {}
        }
        
        fileprivate init() {}
    }
    
    fileprivate init() {}
}

