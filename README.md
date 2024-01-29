## Layout Constraint

Steps to add SPM Package:

Open Xcode

- ProjectFile
- Package Dependencies
- Add New Package

Package URL

```
https://github.com/maheshwaran01m/LayoutConstraint.git
```

Usage:
```
import LayoutConstraint

class ViewController: UIViewController {

 override func viewDidLoad() {
    super.viewDidLoad()
    setupLabel()
  }

 private func setupLabel() {
  let label = UILabel()
   view.addSubview(textLabel)
    label.backgroundColor = .secondarySystemBackground

  textLabel.make {
      $0.centerX(view.centerXAnchor)
      $0.centerY(view.centerYAnchor)
      $0.height(44)
      $0.width(textLabel.intrinsicContentSize.width + 40)
    }
  }
}

```
