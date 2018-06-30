//
//  Audiobook.swift
//  collectionView
//
//  Created by Dilip Kumar on 22/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation

struct Audiobook {
    let name: String
    let author: String
    let coverImage: String
    
    init(dictionary: AudiobookJSON) {
        self.name = dictionary["name"] as! String
        self.author = dictionary["artistName"] as! String
        self.coverImage = dictionary["artworkUrl100"] as! String
    }
}

struct APIClient {
    static func getAudiobooksAPI(completion: @eseaping (AudiobookJSON?) -> Void) {
        
    }
}
