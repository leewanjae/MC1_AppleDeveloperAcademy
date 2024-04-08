import Foundation
import AVFoundation

class MusicPlayViewModel: ObservableObject {
    private var timer: Timer?
    private var audioPlayer: AVAudioPlayer?    
    @Published var player: AVPlayer?
    @Published var likeSongs: [Music] = []
    @Published var isPlaying = false
    @Published var currentPlaybackTime = "00:00"
    @Published var remainingTime = "-00:00"
    @Published var currentSong: Music?
    @Published var currentSongIndex = 0 {
        didSet {
            updateCurrentSongInfo()
        }
    }
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: .AVPlayerItemDidPlayToEndTime, object: player?.currentItem)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    func updateCurrentSongInfo() {
        let music = dummyMusicList[currentSongIndex]
        currentSong = music // 현재 노래 정보 업데이트
        setupPlayer(fileName: music.url)
    }
    
    func setupPlayer(fileName: String) {
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: "mp4") else {
            print("File not found")
            return
        }
        player = AVPlayer(url: URL(fileURLWithPath: filePath))
    }
    
    func playVideo() {
        player?.play()
        TimeUpdater()
        isPlaying = true
    }
    
    func pauseVideo() {
        player?.pause()
        stopPlaybackTimeUpdater()
        isPlaying = false
    }
    
    func playNextSong() {
        if currentSongIndex < dummyMusicList.count - 1 {
            currentSongIndex += 1
        } else {
            currentSongIndex = 0 // 리스트의 처음으로 돌아갑니다.
        }
        // 변경된 노래 정보로 플레이어를 설정하고 재생을 시작합니다.
        updateCurrentSongInfo()
        playVideo()
    }
    
    func playPreviousSong() {
        if currentSongIndex > 0 {
            currentSongIndex -= 1
        } else {
            currentSongIndex = dummyMusicList.count - 1 // 리스트의 마지막으로 갑니다.
        }
        // 변경된 노래 정보로 플레이어를 설정하고 재생을 시작합니다.
        updateCurrentSongInfo()
        playVideo()
    }
    
    private func formatTime(seconds: Double) -> String {
        let minutes = Int(seconds) / 60
        let seconds = Int(seconds) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    // 현재 재생 시간 포맷팅
    private func getCurrentPlaybackTimeFormatted() -> String {
        guard let currentTime = player?.currentTime() else { return "00:00" }
        let currentPlaybackTime = CMTimeGetSeconds(currentTime)
        return formatTime(seconds: currentPlaybackTime)
    }
    
    // 남은 재생 시간 포맷팅
    private func getRemainingTimeFormatted() -> String {
        guard let player = player, let duration = player.currentItem?.duration else { return "00:00" }
        let currentTime = player.currentTime()
        let remainingTime = CMTimeSubtract(duration, currentTime)
        let remainingSeconds = CMTimeGetSeconds(remainingTime)
        return "-\(formatTime(seconds: remainingSeconds))"
    }
    
    private func TimeUpdater() {
        timer?.invalidate() // 기존에 실행 중인 타이머가 있다면 중지
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            DispatchQueue.main.async {
                // 현재 재생 시간 업데이트
                self?.currentPlaybackTime = self?.getCurrentPlaybackTimeFormatted() ?? "00:00"
                // 남은 재생 시간 업데이트
                self?.remainingTime = self?.getRemainingTimeFormatted() ?? "-00:00"
            }
        }
    }
    
    private func stopPlaybackTimeUpdater() {
        timer?.invalidate()
        timer = nil
    }
    
    func getCurrentTime() -> Double {
        guard let currentPlaybackTime = player?.currentTime() else {
            return 0.0
        }
        let musicCurrentTime = CMTimeGetSeconds(currentPlaybackTime)
        return musicCurrentTime
    }
    
    func getDurationTime() -> Double {
        guard let musicDuration = player?.currentItem?.duration else {
            return 0.0
        }
        let musicTotalDuration = CMTimeGetSeconds(musicDuration)
        return musicTotalDuration
    }
    
    func isCurrentSongLiked() -> Bool {
        guard let currentSong = currentSong else { return false }
        return likeSongs.contains(where: { $0.id == currentSong.id })
    }
    
    func updateLikeStatus(music: Music, liked: Bool) {
        if liked {
            if !likeSongs.contains(where: { $0.id == music.id }) {
                likeSongs.append(music)
            }
        } else {
            likeSongs.removeAll { $0.id == music.id }
        }
    }
    
    @objc func playerDidFinishPlaying(notification: Notification) {
        playNextSong()
    }
}

