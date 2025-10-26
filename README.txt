This is a minimalist front-end for https://github.com/BeardOverflow/msi-ec

Usage: msi [options] [command [value]]

Options:
  -h                            show this help message

Commands:
  msi webcam [on,off]           Enable/disable the integrated webcam. If no
                                value is passed,read current state

  msi webcam-block [on,off]     Block/unblock the integrated webcam. More
                                powerful that the webcam option.  If
                                no value is passed, read current state.

  msi fn-key [left,right]       Switch the position of the function key and the
                                windows  key. If  no  value is passed, read
                                current state.

  msi win-key [left,right]      Change the position for the function key.  If
                                no value is passed, read current state.

  msi cooler-boost [on,off]     Enable/disable the cooler boost function. If
                                no value is passed, read current state.

  msi available-shift-modes     Report all supported shift modes. These can be
                                passed to msi shift-mode.

  msi shift-mode [value]        Switch the  shift mode. It  provides a  set of
                                profiles for  gaining CPU & GPU overclock and
                                underclock. If no value is passed, read current
                                state.

  msi super-battery [on,off]    Switch the super battery function. If no value
                                is passed, read current state.

  msi available-fan-modes       Report all supported fan modes. These can be
                                passed to msi fan-mode.

  msi fan-mode [value]          Switch the fan mode. It provides a set of
                                profiles for adjusting the fan speed under
                                specific criteria. If no value is passed, read
                                current state.

  msi fw-version                Report the firmware version of the mother
                                board.

  msi fw-release-date           Report the firmware release date of the
                                motherboard.

  msi realtime-temperature      Report the current cpu temperature.

  msi realtime-fan-speed        Report the current cpu fan speed.

  msi realtime-temperature      Report the current gpu temperature.

  msi realtime-fan-speed        Report the current gpu fan speed.
