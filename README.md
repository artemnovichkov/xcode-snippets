# Xcode Snippets
My personal Xcode snippets
## Usage
- Associated Object Declaration
```swift
private struct AssociatedKeys {
    static var <#name#> = "<#name#>"
}

var <#name#>: String? {
    get {
        return objc_getAssociatedObject(self, &AssociatedKeys.<#name#>) as? String
    }

    set {
        if let newValue = newValue {
            objc_setAssociatedObject(self, &AssociatedKeys.<#name#>, newValue as String?, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
```
- Delay for calling (`async_after`)
```swift
DispatchQueue.main.asyncAfter(deadline: .now() + <#when: dispatch_time_t#>) {
}
```
- Guard Self Declaration
```swift
guard let `self` = self else {
    return
}
```
- Lazy Button Declaration (`lazy_button`)
```swift
private(set) lazy var button: UIButton = {
    let button = UIButton()
    button.setTitle("", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.addTarget(self, action: #selector(), for: .touchUpInside)
    return button
}()
```
- Lazy Label Declaration (`lazy_ll`)
```swift
private(set) lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.font = .systemFont(ofSize: 17, weight: .regular)
    label.textColor = .black
    return label
}()
```
- Lazy Table View Declaration (`lazy_table`)
```swift
private(set) lazy var tableView: UITableView = {
    let tableView = UITableView()
    tableView.tableFooterView = UIView()
    return tableView
}()
```
- Lazy [TableViewManager](https://github.com/rosberry/TableViewTools) Declaration (`lazy_tvm`)
```swift
fileprivate lazy var tableViewManager: TableViewManager = {
    return TableViewManager(tableView: self.tableView)
}()
```
- Mark snippet (`mark`)
```swift
// MARK: - <#Title#>
```
- Protocol Function Declaration (`funcp`)
```swift
func <#name#>(<#parameters#>)
```
- Swift Singleton Declaration (`shared`)
```swift
static let shared = <# class #>

private init() {}
```
- View Did Appear Declaration (`viewDidAppear`)
```swift
override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
}
```

## Installation

### Manual

Drag `.codesnippet` files into `~/Library/Developer/Xcode/UserData/CodeSnippets`.

### Automatic

Run the command in your terminal:
```bash
curl -fsSL https://raw.githubusercontent.com/artemnovichkov/xcode-snippets/master/install.sh | sh
```

## Author

Artem Novichkov, novichkoff93@gmail.com

## License

Xcode Snippets is available under the MIT license. See the LICENSE file for more info.
