//
//  NetworkHandler.swift
//  StarGazer
//
//  Created by CodeCraftBlog.
//

import Foundation
import UIKit

struct NetworkHandler {
    
    static let shared = NetworkHandler()
    
    let sourceURLString = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&count=1"

    func getRandomPost() -> String? {
        guard let sourceURL = URL(string: sourceURLString),
              let responseStr = try? String.init(contentsOf: sourceURL) else {
            return nil
        }
        return responseStr
    }
    
    func fetchImage(url : URL) -> UIImage? {
        guard let imageData = try? Data(contentsOf: url),
              let fetchedImage = UIImage(data: imageData) else {
            return nil
        }
        return fetchedImage
    }
}
