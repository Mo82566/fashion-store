$bt = [char]0x60
$ticks = "$bt$bt$bt"

@"
# Fashion Store

A Flutter fashion shopping app with product browsing, search, favorites, a shopping cart, and checkout screens.

## Features

- Browse fashion products and collections
- Search the product catalog
- View product details
- Add products to favorites or the cart
- Change cart quantities
- Navigate through checkout screens

## Run the app

${ticks}bash
git clone https://github.com/Mo82566/fashion-store.git
cd fashion-store
flutter pub get
flutter run
${ticks}

## Screenshots

| Screen 1 | Screen 2 | Screen 3 |
| :---: | :---: | :---: |
| <img src="assets/Screenshot_1794254033.png" width="220" /> | <img src="assets/Screenshot_1794254103.png" width="220" /> | <img src="assets/Screenshot_1794254120.png" width="220" /> |
| <img src="assets/Screenshot_1794254131.png" width="220" /> | <img src="assets/Screenshot_1794254150.png" width="220" /> | <img src="assets/Screenshot_1794254174.png" width="220" /> |
| <img src="assets/Screenshot_1794254196.png" width="220" /> | <img src="assets/Screenshot_1794254203.png" width="220" /> | <img src="assets/Screenshot_1794254216.png" width="220" /> |
| <img src="assets/Screenshot_1794254274.png" width="220" /> | <img src="assets/Screenshot_1794254295.png" width="220" /> | <img src="assets/Screenshot_1794254601.png" width="220" /> |
| <img src="assets/Screenshot_1794254604.png" width="220" /> | <img src="assets/Screenshot_1794254606.png" width="220" /> | <img src="assets/Screenshot_1794254608.png" width="220" /> |
| <img src="assets/Screenshot_1794254623.png" width="220" /> | <img src="assets/Screenshot_1794254631.png" width="220" /> | <img src="assets/Screenshot_1794254637.png" width="220" /> |
| <img src="assets/Screenshot_1794254639.png" width="220" /> | <img src="assets/Screenshot_1794254643.png" width="220" /> | <img src="assets/Screenshot_1794254648.png" width="220" /> |
| <img src="assets/Screenshot_1794254871.png" width="220" /> | | |
"@ | Set-Content .\README.md -Encoding UTF8