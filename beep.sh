DO(){	
	BEEP_VOL="100%"
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "DO    $1 $2"
	(
		speaker-test -t sine -f 261,63 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
		
	)
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}


DO-M() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	
	echo "DO#0  $1 $2"
	(
		speaker-test -t sine -f 277,18 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}


RE() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "RE   $1 $2"
	(
		speaker-test -t sine -f 293,66 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}

MRE() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "MRE  $1 $2"
	(
		speaker-test -t sine -f 311,13 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}


MI() {
	BEEP_VOL="100%"
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "MI  $1 $2"
	(
		speaker-test -t sine -f 329,63 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}


FA() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "FA  $1 $2"
	(
		speaker-test -t sine -f 349,23 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}
MFA() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "MFA $1 $2"
	(
		speaker-test -t sine -f 369,99 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}

SOL() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "SOL  $1 $2"
	(
		speaker-test -t sine -f 392,00 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}

MSOL() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "MSOL $1 $2"
	(
		speaker-test -t sine -f 392,00 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}

LA() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "LA  $1 $2"
	(
		speaker-test -t sine -f 440,00 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}
MLA() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "MLA  $1 $2"
	(
		speaker-test -t sine -f 466,16 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2
}



SI() {
	
	BEEP_VOL="100%"
	
	CURRENT_VOL="$(amixer sget Master |grep -m1 "\[on\]"|awk '{print $5}'|tr -d '[]')"
	amixer sset Master $BEEP_VOL >/dev/null 2>&1
	echo "SI  $1 $2"
	(
		speaker-test -t sine -f 493,88 >/dev/null 2>&1 & BEEP_PID=$!
		sleep $1
		kill -9 $BEEP_PID 2>/dev/null
	)
	
	amixer sset Master $CURRENT_VOL >/dev/null 2>&1
	sleep $2

}



#
#DO "1" "0"
#MI "1.30" "0"
#DO "0.30" "0"
#SOL "1.50" "0.3"
##
#FA "1.30" "0.2"
#RE "0.25" "0"
#SI "0.5" "0.03"
#SI "0.5" "0.03"
#SI "0.5" "0.03"
#SI "0.5" "0.03"
#
#DO "0.36" "0"
#RE "0.23" "0"
#DO "1.32" "0.7"
#
##MDO
#DO "1" "0"
#
#MI "0.81" "0"
#LA "0.70" "0"
#SOL "0.8" "0"
#FA "0.9" "0"
#RE "1" "0"
#
#
#SOL "0.9" "0"
#MI "1.25" "0"
#DO "0.9" "0"
##
##
#FA "1.25" "0"
#MI "0.9" "0"
#RE "1.1" "0"
##############
#FA "1.25" "0"
#MI "0.9" "0"
#RE "1.1" "0"

#MI "1.25" "0"
#FA "1.25" "0"
#SOL "1.25" "0"
#LA  "1.25" "0" 
#SI "1.25" "0"
#DO "1.25" "0"


# RE "1.25" "0"
# MI "1.25" "0"
# FA "1.25" "0"
# SOL "1.25" "0"
# FA "1.25" "0"
# ­RE "1.25" "0"
#
#
# RE "1.25" "0"
# MI "1.25" "0"
# SOL "1.25" "0"
# FA "1.25" "0"
# RE "1.25" "0"
#
# RE "1.25" "0"
# MI "1.25" "0"
# SOL "1.25" "0"
# FA# "1.25" "0"
# FA "1.25" "0"
#
# MI "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
#
#
# MI "1.25" "0"
# MI "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
# MI "1.25" "0"
# MI "1.25" "0"
# FA "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
#
#
# FA "1.25" "0"
# FA "1.25" "0"
# la "1.25" "0"
# la "1.25" "0"
# FA "1.25" "0"
# FA "1.25" "0"
#
#
# MI "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
#
#
# FA "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
# RE "1.25" "0"
#
#
# SOL "1.25" "0"
# MI "1.25" "0"
# MI "1.25" "0"
# MI "1.25" "0"
# MI "1.25" "0"
# MI "1.25" "0"
#
#
# la "1.25" "0"
# FA "1.25" "0"
# FA "1.25" "0"
# FA "1.25" "0"
# FA "1.25" "0"
# FA "1.25" "0"
#
#
# SI "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
#
#
# DO "1.25" "0"
# LA "1.25" "0"
# LA "1.25" "0"
# LA "1.25" "0"
# LA "1.25" "0"
# LA "1.25" "0"
#
# RE "1.25" "0"
# SI "1.25" "0"
# SI "1.25" "0"
# SI "1.25" "0"
# SI "1.25" "0"
# SI "1.25" "0"
#
#
# MI "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"
# MSOL "1.25" "0"
#
#
#
#
#
# DO "1.25" "0"
# RE "1.25" "0"
# MI "1.25" "0"
# FA "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
#
#
#
# SOL "1.25" "0"
# FA "1.25" "0"
# MI "1.25" "0"
# RE "1.25" "0"
# ­DO "1.25" "0"
#
#
#
# DO "1.25" "0"
# RE "1.25" "0"
# MI "1.25" "0"
# FA "1.25" "0"
# SOL "1.25" "0"
# SOL "1.25" "0"
#
#
#
# SOL "1.25" "0"
# FA "1.25" "0"
# MI "1.25" "0"
# RE "1.25" "0"
# DO "1.25" "0"
#
#
#
# MI "1.25" "0"
# DO "1.25" "0"
# MI "1.25" "0"
# DO "1.25" "0"
# MI "1.25" "0"
# DO "1.25" "0"
#
#
#
# DO "1.25" "0"
# DO "1.25" "0"
# DO "1.25" "0"#




RE "0.3" "0"
MI "0.3" "0"
FA "0.25" "0"
RE "0.4" "0.1"


LA "0.3" "0.1"
RE "0.3" "0"
MI "0.3" "0"
FA "0.3" "0"
RE "0.4" "0"