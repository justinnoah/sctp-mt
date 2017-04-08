import "lib/record" =~ [=> makeRecord]
import "lib/words" =~ [=> Word :DeepFrozen]
exports (CommonHeader, makeCommonHeader, Chunk, makeSizedChunk)


def [CommonHeader, makeCommonHeader] := makeRecord(
    "CommonHeader",
    [
        "sourcePort" => Word,
        "destPort" => Word,
        "verifyTag" => Word,
        "checksum" => Word
    ]
)

def [Chunk, makeSizedChunk] := makeRecord(
    "Chunk",
    [
        "data" => List
    ]
)
