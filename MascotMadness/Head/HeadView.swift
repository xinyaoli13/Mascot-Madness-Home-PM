import SwiftUI

var head: some BodyPart {
    Head {
        ZStack {
                    
                    Circle()
                        .fill(LinearGradient(
                            colors: [.red, .pink],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                        .frame(width: 200, height: 200)
                        .shadow(color: .red.opacity(0.4), radius: 10, x: 0, y: 8)
                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 160, height: 160)
                        .overlay(
                            Circle()
                                .stroke(Color.red, lineWidth: 6)
                        )
                    
                    
                    VStack(spacing: 12) {
                        
                        HStack(spacing: 4) {
                            Image(systemName: "moon.fill")
                                .foregroundColor(.red)
                                .font(.system(size: 18))
                            Image(systemName: "star.fill")
                                .foregroundColor(.red)
                                .font(.system(size: 10))
                        }
                        .padding(.top, 15)
                        
                        
                        HStack(spacing: 40) {
                            Circle().fill(Color.red).frame(width: 18, height: 18)
                            Circle().fill(Color.red).frame(width: 18, height: 18)
                        }
                        
                        
                        Path { path in
                            path.move(to: CGPoint(x: 15, y: 0))
                            path.addQuadCurve(to: CGPoint(x: 45, y: 0), control: CGPoint(x: 30, y: 20))
                        }
                        .stroke(Color.red, style: StrokeStyle(lineWidth: 4, lineCap: .round))
                        .frame(width: 60, height: 15)
                        
                        
                        HStack(spacing: 56) {
                            Circle().fill(Color.pink.opacity(0.5)).frame(width: 14, height: 14)
                            Circle().fill(Color.pink.opacity(0.5)).frame(width: 14, height: 14)
                        }
                        .offset(y: -22)
                    }
                }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}
