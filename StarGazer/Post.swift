//
//  Post.swift
//  StarGazer
//
//  Created by CodeCraftBlog.
//

import Foundation
import UIKit

struct Post {
    
    let title : String
    let description : String
    var image : UIImage? = nil
    var hdImage : UIImage? = nil
    
    init?(_ response : String) {
        
        guard let responseData = response.data(using: .utf8),
              let responseArr = try? JSONSerialization.jsonObject(with: responseData, options: .mutableLeaves) as? [[String: Any?]],
              let responseDict = responseArr.first,
              let title = responseDict["title"] as? String,
              let description = responseDict["explanation"] as? String else {
            return nil
        }
        
        // Fetch Title & Sub-Title
        self.title = title
        self.description = description
        
        // Fetch Lo-Res Image
        if let imageURLString = responseDict["url"] as? String,
           let imageURL = URL(string: imageURLString),
           let image = NetworkHandler.shared.fetchImage(url: imageURL)  {
            self.image = image
        }
        
        // Fetch HD Image
        if let hd_imageURLString = responseDict["hdurl"] as? String,
           let hd_imageURL = URL(string: hd_imageURLString),
           let hdImage = NetworkHandler.shared.fetchImage(url: hd_imageURL)  {
            self.hdImage = hdImage
        }
    }
}
