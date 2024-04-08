import SwiftUI

struct Music: Identifiable {
    let id: String = UUID().uuidString
    let lyrics: String
    let hashtag: String
    let title: String
    let albumCover: Image
    let artist: String
    let url: String
}
