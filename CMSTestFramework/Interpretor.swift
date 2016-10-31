//
//  Interpretor.swift
//  CMSTestFramework
//
//  Created by SAguilar on 10/28/16.
//  Copyright © 2016 SAguilar. All rights reserved.
//

import Foundation

public enum SupportedLanguage: String{
    case english = "en-US"
    case french = "fr-FR"
    case japanese = "ja-JP"
    case spanish = "es-MX"
    case korean = "ko-KR"
    case chinese = "zh-CN"
    case russian = "ru-RU"
    case portuguese = "pt-BR"
    case german = "de-DE"
    case arabic = "ar-SA"
}

public class Interpretor{
    
    public let dictionary: Dictionary<String, String>
    
    public init?(language: SupportedLanguage){
        
        let bundle = NSBundle(forClass: self.dynamicType)
        if let urlForResource = bundle.URLForResource(language.rawValue, withExtension: "plist"){
            if let plistDictionary = NSDictionary(contentsOfURL: urlForResource) as? Dictionary<String, String>{
                dictionary = plistDictionary
            }else{
                return nil
            }
        }else{
            print("Failed to get url for resource")
            return nil
        }
    }
}
