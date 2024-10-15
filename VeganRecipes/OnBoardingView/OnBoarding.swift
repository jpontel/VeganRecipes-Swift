import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment:.leading, spacing: 8) {
                        Text("Get Inspired")
                            .font(.largeTitle)
                            .fontDesign(Font.Design.rounded)
                            .bold()
                            .padding(.top, 10)
                            .padding(.leading,20)
                        Text("Get inspired with our daily recipe recommendations")
                            .font(.system(size: 13))
                            .fontDesign(Font.Design.rounded)
                            .padding(.leading, 20)
                            .padding(.top, 0)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, 50)
            .zIndex(1)
            
            VStack {
                Spacer()
                ZStack(alignment:.bottom) {
                    Image(ImageResource.food)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.45)
                        .clipped()
                    LinearGradient(
                        gradient: Gradient(colors: [Color.white.opacity(0), Color.white]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: 120)
                    LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.white.opacity(0)]),
                        startPoint: .top,
                        endPoint: .center
                    )
                    .frame(height: 590)
                }
            }
            
            VStack {
                Spacer()
                GenericButton(title: "Continue", action: {})
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 30)
            }
        }
        .background(Color.white)
    }
}

#Preview {
    OnBoardingView()
}


