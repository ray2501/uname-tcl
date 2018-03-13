#
# package uname - using uname to get system information
#

package provide uname 0.0.1

namespace eval uname {
    proc getKernelName {} {
        set mychannel [open "|/usr/bin/uname -s"]
        set name [chan gets $mychannel]
        chan close $mychannel

        return $name
    }

    proc getNodeName {} {
        set mychannel [open "|/usr/bin/uname -n"]
        set name [chan gets $mychannel]
        chan close $mychannel

        return $name
    }

    proc getRelease {} {
        set mychannel [open "|/usr/bin/uname -r"]
        set name [chan gets $mychannel]
        chan close $mychannel

        return $name
    }

    proc getVersion {} {
        set mychannel [open "|/usr/bin/uname -v"]
        set name [chan gets $mychannel]
        chan close $mychannel

        return $name
    }

    proc getMachine {} {
        set mychannel [open "|/usr/bin/uname -m"]
        set name [chan gets $mychannel]
        chan close $mychannel

        return $name
    }

    proc getOperatingSystem {} {
        set mychannel [open "|/usr/bin/uname -o"]
        set name [chan gets $mychannel]
        chan close $mychannel

        return $name
    }
}
