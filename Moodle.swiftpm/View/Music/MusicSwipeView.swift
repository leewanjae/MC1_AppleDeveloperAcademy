import SwiftUI

struct MusicSwipeView: View {
    @Binding var musicList: [Music]
    @State private var searchText = ""
    @State private var filteredMusicList: [Music]?
    @State private var selectedHashtag: String?
    
    private var uniqueHashtags: [String] {
        Set(musicList.map { $0.hashtag }).sorted()
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "#0F1114")
                    .opacity(0.9)
                
                VStack {
                    Image("Logo")
                        .padding(.bottom, 50)
                    
                    Text("Choose the Hashtag")
                        .font(.customFont(named: "PretendardVariable", withExtension: "ttf", size: 40))
                        .foregroundStyle(Color.white)
                    
                    Text("recommend songs based on hashtags")
                        .font(.customFont(named: "PretendardVariable", withExtension: "ttf", size: 20))
                        .foregroundStyle(Color.white.opacity(0.4))
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        ForEach(uniqueHashtags, id: \.self) { hashtag in
                            CategoriesBtn(text: hashtag, backgroundColor: selectedHashtag == hashtag ? Color(hex: "FFDC63") : .white, action: {
                                if selectedHashtag == hashtag {
                                    selectedHashtag = nil
                                    filteredMusicList = nil
                                } else {
                                    selectedHashtag = hashtag
                                    filteredMusicList = musicList.filter { $0.hashtag == hashtag }
                                }
                            })
                            .foregroundStyle(Color.black)
                        }
                        Spacer()
                    }
                    .padding(.bottom, 30)
                    
                    Text("Music lyrics")
                        .font(.customFont(named: "PretendardVariable", withExtension: "ttf", size: 40))
                        .foregroundStyle(Color.white)
                    
                    Text("Scroll through the lyrics")
                        .font(.customFont(named: "PretendardVariable", withExtension: "ttf", size: 20))
                        .foregroundStyle(Color.white.opacity(0.4))
                        .padding(.bottom, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(filteredMusicList ?? musicList, id: \.id) { music in
                                NavigationLink(destination: MusicPlayView(music: music)) {
                                    MusicRecommendationView(music: music)
                                        .frame(width: 900, height: 500)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(radius: 10)
                                        .padding(.leading, 10)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
