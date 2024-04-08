import SwiftUI

struct HomeView: View {
    @State var musicList: [Music] = dummyMusicList
    
    var body: some View {
        TabView {
            MusicSwipeView(musicList: $musicList)
                .tabItem { 
                    Label("Music", systemImage: "music.note.tv")
                }
            
            ReceiptView()
                .tabItem { 
                    Label("Receipt", systemImage: "newspaper")
                }
        }
    }
}
