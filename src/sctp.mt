import "lib/words" =~ [=> Word :DeepFrozen]
import "src/dataTypes" =~ [
    => CommonHeader :DeepFrozen,
    => makeCommonHeader :DeepFrozen
]
exports (main)



def makePacket(mtu: Int) as DeepFrozen:
    "Combine Header and chunked data into an SCTP packet"
    def header: CommonHeader := makeCommonHeader(
        1024 as Word[16], 1022 as Word[16],
        131313 as Word[32], 13373 as Word[32]
    )
    return header


def main(argv) as DeepFrozen:
    traceln("Hello, SCTP!")
    def h := makePacket(0)
    traceln(`$h`)
