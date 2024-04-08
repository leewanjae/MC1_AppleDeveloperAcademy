import SwiftUI

struct MusicRecommendationView: View {
    let music: Music
    @State private var selectedLyricIndex = 0
    
    private var lyricsArray: [String] {
        music.lyrics.components(separatedBy: "\n")
    }
    
    var body: some View {
        
        ZStack {
            Image("table55")
                .resizable()
                .scaledToFill()
                .blur(radius: 1)
            
            Color.black
                .opacity(0.35)
            HStack {
                Picker("Select Lyrics", selection: $selectedLyricIndex) {
                    ForEach(0..<lyricsArray.count, id: \.self) { index in
                        Text(self.lyricsArray[index]).tag(index)
                            .foregroundColor(.white)
                            .font(Font.system(size: 33, weight: .medium, design: .default))
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .frame(width: .infinity, height: 200)
            }        
        }
    }
}
