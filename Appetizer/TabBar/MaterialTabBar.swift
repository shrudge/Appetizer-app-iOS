//
//  MaterialTabBar.swift
//  Appetizer
//
//  Created by Meet Balani on 17/04/24.
//


import SwiftUI

struct MaterialTabBar: View {
    let tabs: [TabBarItem]
    let contentShape = RoundedRectangle(cornerRadius: 6)
    @Binding var selection: TabBarItem

    // For matchedGeometryEffect
    @State var localSelection: TabBarItem
    @Namespace private var namespace
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    tabView(tab: tab)

                }
            }
            
            .background {
                contentShape
                    .foregroundStyle(.ultraThinMaterial)
            }
            .ignoresSafeArea(edges: .bottom)
            .clipShape(Capsule())
//            .shadow(color: .secondary, radius: 0, y: 0)
            .padding(.horizontal)
            .onChange(of: selection) { _, newValue in
                withAnimation(.bouncy(duration: 0.3)) {
                    localSelection = newValue
                }
            }.padding(10)
        }
    }
}

#Preview {
    MaterialTabBar(tabs: [.home, .order, .profile], selection: .constant(.home), localSelection: .home)
}

extension MaterialTabBar {
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            
            if tab == selection {
                Image(systemName: "\(tab.iconName).fill")
                    .font(.subheadline).bold()
//                    .symbolEffect(.bounce, value: localSelection)
                    .foregroundStyle(localSelection == tab ? tab.color : .secondary)
                    .frame(height: 15)
                    .shadow(radius: 0.5, y: 1)
            } else {
                Image(systemName: tab.iconName)
                    .font(.subheadline)
                    .foregroundStyle(localSelection == tab ? tab.color : .secondary)
                    .frame(height: 15)
            }
            
            Text(tab.title)
                .font(.system(size: 10, weight: tab == selection ? .bold : .semibold, design: .rounded))
                .foregroundStyle(localSelection == tab ? .white : .secondary)
        }
        
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(
            ZStack {
                if localSelection == tab {
                    contentShape
                        .fill(tab.color.opacity(0.2))
                        .matchedGeometryEffect(id: "tabHighlighting", in: namespace)
                }
            }
        )
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(tab.title), tab")
        .accessibilityHint("Double tap to open the \(tab.title) tab")
        .contentShape(contentShape)
        .onTapGesture {
            switchToTab(tab)
        }
    }
    
    private func switchToTab(_ newTab: TabBarItem) {
        selection = newTab
    }
}
