import SwiftUI

struct RoofTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let peak = CGPoint(x: rect.midX, y: rect.minY)
        let bottomRight = CGPoint(x: rect.maxX, y: rect.maxY)
        let bottomLeft = CGPoint(x: rect.minX, y: rect.maxY)
        
        path.move(to: peak)
        path.addLine(to: bottomRight)
        path.addLine(to: bottomLeft)
        path.closeSubpath()
        
        return path
    }
}

var head: some BodyPart {
    Head {
        VStack {
            RoofTriangle()
                .fill(Color.red)
                .frame(width: 220, height: 100)
                .padding(.bottom, -50)
                .zIndex(1)
            ZStack {
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                
                
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 160, height: 160)
                
                
                
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
                    
                    
                    
                    .padding()
                    
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}
