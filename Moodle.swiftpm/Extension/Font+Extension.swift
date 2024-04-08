import SwiftUI
import UIKit

extension Font {
    static func customFont(named fontName: String, withExtension extension: String, size fontSize: CGFloat) -> Font {
        guard let url = Bundle.main.url(forResource: fontName, withExtension: `extension`),
              let fontDataProvider = CGDataProvider(url: url as CFURL),
              let font = CGFont(fontDataProvider),
              CTFontManagerRegisterGraphicsFont(font, nil) else {
            // 폰트 로드 실패 시 기본 시스템 폰트를 반환합니다.
            return Font.system(size: fontSize)
        }
        
        let fontName = font.postScriptName! as String
        return Font.custom(fontName, size: fontSize)
    }
}
