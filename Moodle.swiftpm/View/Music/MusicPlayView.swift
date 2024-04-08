import SwiftUI
import AVFoundation

struct MusicPlayView: View {
    let music: Music
    @State private var heartTapped = false
    @State private var showLyrics = false
    @StateObject var viewModel = MusicPlayViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Color(hex: "#0F1114")
                        .frame(width: .infinity, height: .infinity)
                    
                    Image("LaBoum")
                        .resizable()
                        .frame(width: 1300, height: 700)
                        .blur(radius: 12)
                        .overlay {
                            Color.black
                                .opacity(0.4)
                        }
                    
                    if !showLyrics {
                        viewModel.currentSong?.albumCover
                            .resizable()
                            .frame(width: 550, height: 550)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 30)
                            .transition(.opacity)
                            .onTapGesture {
                                withAnimation {
                                    showLyrics.toggle()
                                }
                            }
                    } else {
                        ScrollView(.vertical, showsIndicators: false) {
                            Text(viewModel.currentSong?.title ?? "제목")
                                .font(.customFont(named: "PretendarVariable", withExtension: "ttf", size: 30))
                                .foregroundStyle(.white)
                                .padding(.vertical, 30)
                            
                            Text(viewModel.currentSong?.lyrics ?? "가사가 없습니다")
                                .font(.customFont(named: "PretendarVariable", withExtension: "ttf", size: 20))
                                .foregroundStyle(.white)
                        }
                        .frame(width: 550, height: 550)
                        .background(Color.black.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 5)
                        .transition(.opacity)
                        .onTapGesture {
                            withAnimation {
                                showLyrics.toggle()
                            }
                        }
                    }
                }
                
                ZStack {
                    VStack {
                        HStack {
                            Spacer()
                            Text(viewModel.currentSong?.title ?? "제목")
                                .font(.customFont(named: "PretendarVariable", withExtension: "ttf", size: 35))
                                .foregroundStyle(.white)
                                .padding(.leading, 60)
                                .padding(.bottom, 15)
                            
                            Spacer()
                            Button(action: {
                                heartTapped.toggle()
                                viewModel.updateLikeStatus(music: viewModel.currentSong!, liked: heartTapped)
                            }, label: {
                                if !heartTapped {
                                    Image(systemName: "heart")
                                        .foregroundStyle(.white)
                                        .padding(.trailing, 20)
                                } else {
                                    Image(systemName: "heart.fill")
                                        .foregroundStyle(.white)
                                        .padding(.trailing, 20)
                                }
                            })
                            // TODO: - 영수증 발행, heart 누른 노래만 영수증 목록
                            Button(action: {
                                print("영수증 발행하는 버튼")
                            }, label: {
                                Image(systemName: "printer")
                                    .foregroundStyle(.white)
                            })
                        }
                        
                        Text(viewModel.currentSong?.artist ?? "가수")
                            .font(.customFont(named: "PretendarVariable", withExtension: "ttf", size: 20))
                            .foregroundStyle(Color(hex:"A4B2C5"))
                            .padding(.bottom, 50)
                        
                        ProgressView(value: viewModel.getCurrentTime(), total: viewModel.getDurationTime())
                        
                        HStack {
                            Text(viewModel.currentPlaybackTime)
                                .font(.customFont(named: "PretendarVariable", withExtension: "ttf", size: 15))
                                .foregroundStyle(Color(hex:"A4B2C5"))
                                .padding(.horizontal, 10)
                            
                            Spacer()
                            
                            Text(viewModel.remainingTime)
                                .font(.customFont(named: "PretendarVariable", withExtension: "ttf", size: 15))
                                .foregroundStyle(Color(hex:"#A4B2C5"))
                                .padding(.horizontal, 10)
                        }
                        
                        HStack(spacing: 50) {
                            Button(action: {
                                viewModel.playPreviousSong()
                                heartTapped = viewModel.isCurrentSongLiked()
                            }, label: {
                                Image(systemName: "backward.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundStyle(.white)
                            })
                            
                            Button(action: {
                                if viewModel.isPlaying {
                                    viewModel.pauseVideo()
                                } else {
                                    viewModel.playVideo()
                                }
                            }, label: {
                                Image(systemName: viewModel.isPlaying ? "pause.fill" : "play.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundStyle(.white)
                            })
                            
                            Button(action: {
                                viewModel.playNextSong()
                                heartTapped = viewModel.isCurrentSongLiked()
                            }, label: {
                                Image(systemName: "forward.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundStyle(.white)
                            })
                        }
                        .padding(.vertical, 50)
                        
                    }
                }
                Spacer()
            }
            .onAppear {
                viewModel.currentSong = music
                viewModel.setupPlayer(fileName: music.url)
                viewModel.playVideo()
                heartTapped = viewModel.isCurrentSongLiked()
            }
        }
        .background(Color(hex: "#0F1114"))
    }
}

