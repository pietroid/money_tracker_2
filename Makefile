build_runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

build:
	fvm flutter build apk --release

set_icon:
	fvm flutter pub run flutter_launcher_icons