import Cocoa

// Called when content view is created in memory
override func viewDidLoad() {
    super.viewDidLoad()
}

// Called before the content view is added to app's view hierarchy
override func viewWillApear(_ animated: Bool) {
    super.viewWillApear(animated)
}

// Called after the content view is added to app's view hierarchy - perfect for starting animations
override func viewDidApear(_ animated: Bool) {
    super.viewDidApear(animated)
}

// Called before the content view is removed from the app's view hierarchy
override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
}

// Called after the content view is removed from the app's view hierarchy
override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
}

// Called when the content view's bounds change, but before it lays out its subviews
override func viewWillLayoutSubViews() {}
override func viewDidLayoutSubViews() {}
