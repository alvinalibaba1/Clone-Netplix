//
//  YoutubeSearchResponse.swift
//  Clone Netplifx
//
//  Created by Macbook on 08/12/22.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IdVideoElement
}


struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}


//
//etag = lDwSePllzYAwoSyUE1pzRRFgDM8;
//id =             {
//    kind = "youtube#video";
//    videoId = 5Mq2uZD0ea0;
//};
//kind = "youtube#searchResult";
//},
