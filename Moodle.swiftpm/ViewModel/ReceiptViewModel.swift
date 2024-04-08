import Foundation

class ReceiptViewModel: ObservableObject {
    @Published var currentDate: String = ""

    func updateCurrentDate() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        currentDate = formatter.string(from: Date())
    }
}
