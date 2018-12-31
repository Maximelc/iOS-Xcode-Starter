# iOS-Xcode-Starter
Templates and snippets for iOS Developer using Xcode.

>Project templates with Liftoff cannot be released publicly for now.
>Feel free to contact me about it.

## Repository details
|        Name       |                             Description                            |         Instalation script         |
|:-----------------:|:------------------------------------------------------------------:|:----------------------------------:|
| Xcode Templates   | Xcode files templates                                              | Xcode/FilesTemplates/addToXcode.sh |
| Xcode Snippets    | Xcode snippets (shortcuts)                                         | Xcode/Snippets/addToXcode.sh       |

## 1) Xcode Templates
|         Name         |
|:---------------------|
| UIView               |
| UIViewController     |
|                      |
| UITableViewCell      |
| UITableViewDataSource|
|                      |
| UICollectionViewCell |
| UICollectionViewDataSource|
|                      |
| RealmModel           |

⚠️ For some file template [Reusable](https://github.com/AliSoftware/Reusable) Pod is needed.

### Instalation:
To install Xcode templates clone this repository execute script in `Xcode/FilesTemplates/addToXcode.sh`
```bash
./Xcode/FilesTemplates/addToXcode.sh
```

### Usage
Open Xcode > File > New File scroll down and you'll see a template section !

## 2) Xcode Snippets
|            Name           |                             Description                            | Xcode shortcut |
|:--------------------------|:-------------------------------------------------------------------|----------------|
| `UITableView`             |
| UITableViewSetup          | Insert function to configure a UITableView                         | tvSetup        |
| UITableViewProtocols      | Insert extension with implementation of UITableView protocols      | tvProto        |
| `UICollectionView`        |
| UICollectionViewSetup     | Insert function to configure a UICollectionView                    | cvSetup        |
| UICollectionViewProtocols | Insert extension with implementation of UICollectionView protocols | cvProto        |
| `Misc`                    |
| pragmaTodo                | Insert pragma todo                                                 | todo           |
| pragmaMark                | Insert pragma mark                                                 | mark           |
| UIStoryboardSeguePrepare  | Insert implementation of UIStoryboardSegue prepare function        | segueNavigation|

😇 Instead of using `UITableViewProtocols` & `UICollectionViewProtocols` snippets, you can use [UITableViewDataSource](https://github.com/Maximelc/iOS-Starter/blob/master/Xcode/FilesTemplates/Custom.xctemplate/UITableViewDataSource/___FILEBASENAME___.swift) & [UICollectionViewDataSource](https://github.com/Maximelc/iOS-Starter/blob/master/Xcode/FilesTemplates/Custom.xctemplate/UICollectionViewDataSource/___FILEBASENAME___.swift) file template ([section #2](https://github.com/Maximelc/iOS-Starter#2-xcode-templates)).

### Instalation:
To install Xcode snippets clone this repository execute script in `Xcode/Snippets/addToXcode.sh`
```bash
./Xcode/Snippets/addToXcode.sh
```
### Usage
Open an Xcode project and type a shortcut like present in table (todo, cvSetup, ...)

# License
This code and tool is under license. See the `LICENSE` file in this repository.
