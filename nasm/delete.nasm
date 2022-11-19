leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaw $0, %A
movw %A, (%D)
