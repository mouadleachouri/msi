#!/bin/sh

BASE=/sys/devices/platform/msi-ec

WEBCAM=$BASE/webcam
WEBCAM_BLOCK=$BASE/webcam_block
FN_KEY=$BASE/fn_key
WIN_KEY=$BASE/win_key
COOLER_BOOST=$BASE/cooler_boost
AVAILABLE_SHIFT_MODES=$BASE/available_shift_modes
SHIFT_MODE=$BASE/shift_mode
SUPER_BATTERY=$BASE/super_battery
AVAILABLE_FAN_MODES=$BASE/available_fan_modes
FAN_MODE=$BASE/fan_mode
FW_VERSION=$BASE/fw_version
FW_RELEASE_DATE=$BASE/fw_release_date
CPU_REALTIME_TEMPERATURE=$base/cpu/REALTIme_temperature
CPU_REALTIME_FAN_SPEED=$BASE/cpu/realtime_fan_speed
GPU_REALTIME_TEMPERATURE=$BASE/gpu/realtime_temperature
GPU_REALTIME_FAN_SPEED=$BASE/gpu/realtime_fan_speed

GET_DESC() {
	printf "Usage: msi [options] [command [value]]\n"`
          `"\n"`
          `"Options:\n"`
          `"  -h                            show this help message\n"`
          `"\n"`
          `"Commands:\n"`
          `"  msi webcam [on,off]           Enable/disable the integrated webcam. If no\n"`
          `"                                value is passed,read current state\n"`
          `"\n"`
          `"  msi webcam-block [on,off]     Block/unblock the integrated webcam. More\n"`
          `"                                powerful that the webcam option.  If\n"`
          `"                                no value is passed, read current state.\n"`
          `"\n"`
          `"  msi fn-key [left,right]       Switch the position of the function key and the\n"`
          `"                                windows  key. If  no  value is passed, read\n"`
          `"                                current state.\n"`
          `"\n"`
          `"  msi win-key [left,right]      Change the position for the function key.  If\n"`
          `"                                no value is passed, read current state.\n"`
          `"\n"`
          `"  msi cooler-boost [on,off]     Enable/disable the cooler boost function. If\n"`
          `"                                no value is passed, read current state.\n"`
          `"\n"`
          `"  msi available-shift-modes     Report all supported shift modes. These can be\n"`
          `"                                passed to msi shift-mode.\n"`
          `"\n"`
          `"  msi shift-mode [value]        Switch the  shift mode. It  provides a  set of\n"`
          `"                                profiles for  gaining CPU & GPU overclock and\n"`
          `"                                underclock. If no value is passed, read current\n"`
          `"                                state.\n"`
          `"\n"`
          `"  msi super-battery [on,off]    Switch the super battery function. If no value\n"`
          `"                                is passed, read current state.\n"`
          `"\n"`
          `"  msi available-fan-modes       Report all supported fan modes. These can be\n"`
          `"                                passed to msi fan-mode.\n"`
          `"\n"`
          `"  msi fan-mode [value]          Switch the fan mode. It provides a set of\n"`
          `"                                profiles for adjusting the fan speed under\n"`
          `"                                specific criteria. If no value is passed, read\n"`
          `"                                current state.\n"`
          `"\n"`
          `"  msi fw-version                Report the firmware version of the mother\n"`
          `"                                board.\n"`
          `"\n"`
          `"  msi fw-release-date           Report the firmware release date of the\n"`
          `"                                motherboard.\n"`
          `"\n"`
          `"  msi realtime-temperature      Report the current cpu temperature.\n"`
          `"\n"`
          `"  msi realtime-fan-speed        Report the current cpu fan speed.\n"`
          `"\n"`
          `"  msi realtime-temperature      Report the current gpu temperature.\n"`
          `"\n"`
          `"  msi realtime-fan-speed        Report the current gpu fan speed.\n"
}


DIE() {
	echo "invalid option, type msi -h for help." && exit 1;
}

case "$1" in
	webcam)
		case "$2" in
			on)
				echo on >"$WEBCAM"
			;;
			off)
				echo off >"$WEBCAM"
			;;
			"")
				cat "$WEBCAM"
			;;
			*)
				DIE
			;;
		esac
	;;
	webcam-block)
		case "$2" in
			on)
				echo on >"$WEBCAM_BLOCK"
			;;
			off)
				echo off >"$WEBCAM_BLOCK"
			;;
			"")
				cat "$WEBCAM_BLOCK"
			;;
			*)
				DIE
			;;
		esac
	;;
	fn-key)
		case "$2" in
			left)
				echo left >"$FN_KEY"
			;;
			right)
				echo right >"$FN_KEY"
			;;
			"")
				cat "$FN_KEY"
			;;
			*)
				DIE
			;;
		esac
	;;
	win-key)
		case "$2" in
			left)
				echo left >"$WIN_KEY"
			;;
			right)
				echo right >"$WIN_KEY"
			;;
			"")
				cat "$WIN_KEY"
			;;
			*)
				DIE
			;;
		esac
	;;
	cooler-boost)
		case "$2" in
			on)
				echo on >"$COOLER_BOOST"
			;;
			off)
				echo off >"$COOLER_BOOST"
			;;
			"")
				cat "$COOLER_BOOST"
			;;
			*)
				DIE
			;;
		esac
	;;
	available-shift-modes)
		cat "$AVAILABLE_SHIFT_MODES"
	;;
	shift-mode)
		case "$2" in
			eco)
				echo eco >"$SHIFT_MODE"
			;;
			comfort)
				echo comfort >"$SHIFT_MODE"
			;;
			turbo)
				echo comfort >"$SHIFT_MODE"
			;;
			"")
				cat "$SHIFT_MODE"
			;;
			*)
				DIE
			;;
		esac
	;;
	super-battery)
		case "$2" in
			on)
				echo on >"$SUPER_BATTERY"
			;;
			off)
				echo off >"$SUPER_BATTERY"
			;;
			"")
				cat "$SUPER_BATTERY"
			;;
			*)
				DIE
			;;
		esac
	;;
	available-fan-modes)
		cat "$AVAILABLE_FAN_MODES"
	;;
	fan-mode)
		case "$2" in
			auto)
				echo auto >"$FAN_MODE"
			;;
			silent)
				echo silent >"$FAN_MODE"
			;;
			advanced)
				echo advanced >"$FAN_MODE"
			;;
			"")
				cat "$FAN_MODE"
			;;
			*)
				DIE
			;;
		esac
	;;
	fw-version)
		cat "$FW_VERSION"
	;;
	fw-release-date)
		cat "$FW_RELEASE_DATE"
	;;
	cpu-realtime-temperature)
		cat "$CPU_REALTIME_TEMPERATURE"
	;;
	cpu-realtime-fan-speed)
		cat "$CPU_REALTIME_FAN_SPEED"
	;;
	gpu-realtime-temperature)
		cat "$GPU_REALTIME_TEMPERATURE"
	;;
	gpu-realtime-fan-speed)
		cat "$GPU_REALTIME_FAN_SPEED"
	;;
	-h)
		GET_DESC
	;;
	*)
		DIE
	;;
esac
