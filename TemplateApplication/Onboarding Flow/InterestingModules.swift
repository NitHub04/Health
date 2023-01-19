//
// This source file is part of the Stanford CardinalKit Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Onboarding
import SwiftUI


struct InterestingModules: View {
    @AppStorage(StorageKeys.onboardingFlowComplete) var completedOnboardingFlow = false
    @Binding private var onboardingSteps: [OnboardingFlow.Step]
    
    
    var body: some View {
        SequentialOnboardingView(
            title: "INTERESTING_MODULES_TITLE",
            subtitle: "INTERESTING_MODULES_SUBTITLE",
            content: [
                .init(
                    title: "INTERESTING_MODULES_AREA1_TITLE",
                    description: "INTERESTING_MODULES_AREA1_DESCRIPTION"
                ),
                .init(
                    title: "INTERESTING_MODULES_AREA2_TITLE",
                    description: "INTERESTING_MODULES_AREA2_DESCRIPTION"
                )
            ],
            actionText: "INTERESTING_MODULES_BUTTON",
            action: {
                completedOnboardingFlow = true
            }
        )
    }
    
    
    init(onboardingSteps: Binding<[OnboardingFlow.Step]>) {
        self._onboardingSteps = onboardingSteps
    }
}


struct ThingsToKnow_Previews: PreviewProvider {
    @State private static var path: [OnboardingFlow.Step] = []
    
    
    static var previews: some View {
        InterestingModules(onboardingSteps: $path)
    }
}