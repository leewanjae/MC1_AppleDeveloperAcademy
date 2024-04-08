import SwiftUI
// TODO: -  // 지역명 동적으로 변경하는 로직 필요
struct ReceiptView: View {
    @ObservedObject var viewModel = ReceiptViewModel()
    let musicList: [Music] = dummyMusicList
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        VStack {
            HStack {
                Text("Music Receipt in Pohang")
                    .font(.custom("PretendardVariable", size: 35))
                    .padding()
                
                Button(action: {
                    //TODO: - 노래 영수증 공유하기 로직
                }, label: {
                    Image(systemName: "square.and.arrow.up")
                })
            }
            
            // viewModel에서 제공하는 현재 날짜와 시간을 표시
            Text(viewModel.currentDate)
                .font(.custom("PretendardVariable", size: 20))
            
            Spacer()
            
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(musicList, id: \.id) { music in
                    VStack {
                        music.albumCover
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                        Text(music.title)
                            .font(.custom("PretendardVariable", size: 20))
                        
                        Text(music.artist)
                            .font(.custom("PretendardVariable", size: 15))
                            .opacity(0.7)
                    }
                    .padding()
                }
            }
            .frame(width: 500, height: 300)
            
            Spacer()
        }
    }
}
