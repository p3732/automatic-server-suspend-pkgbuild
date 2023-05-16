# Maintainer: Peter Eisenmann <p3732 at getgoogleoff dot me>
pkgname=automatic-server-suspend
pkgver=0.1.0
pkgrel=1
pkgdesc="Suspend servers at night and on weekends"
arch=('any')
url="https://github.com/p3732/automatic-server-suspend-pkgbuild"
license=('GPL3')
source=(
	sleepy-time.sh
	night-suspend.service
	weekend-suspend.service
	suspend-at-night.timer
	suspend-over-weekend.timer
)
sha256sums=(
	'9d5e3e39595babad4927b11fff5763eaec3c1cb176874fa98ad4b1f409181270'
	'dc6df1a3efe9929d09b9cfc0d4ceceda9c3de7a257109148eb1ef93586c406fa'
	'edcd47b4dd39ad877ae00b744d6ab9d8798a9d96708f8993f1268d3f951b6b1f'
	'5cb72b81170d4bab0b1d40629728bbc32142ec7e529c87bf9de7f6e3729c018e'
	'191bb6b68b837bcd3688942c394dcacf785f6ff495aaa79c006937b59c18b9a7'
)

package() {
  systemd_dir="$pkgdir/usr/lib/systemd/system/"
  install -m 755 -d $systemd_dir
  install -D -m644 night-suspend.service $systemd_dir
  install -D -m644 weekend-suspend.service $systemd_dir
  install -D -m644 suspend-at-night.timer $systemd_dir
  install -D -m644 suspend-over-weekend.timer $systemd_dir

  bin_dir="$pkgdir/usr/bin/"
  install -m 755 -d $bin_dir
  install -D -m755 sleepy-time.sh $bin_dir
}
