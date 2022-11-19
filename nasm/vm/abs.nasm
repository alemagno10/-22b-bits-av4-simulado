; Inicialização para VM
leaw $Main.main, %A
jmp
nop
abs:
;; push argument 0 - 1
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 0 - 2
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; gt - 3
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTabs1,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2abs1,%A
jmp
nop
GTabs1:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2abs1:
; IF
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $abs.END,%A
jne %D
nop
;; push argument 0 - 4
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; neg - 5
leaw $SP,%A
subw (%A),$1,%A
movw (%A),%D
negw %D
movw %D,(%A)
; Goto Incondicional
leaw $abs.END1,%A
jmp
nop
; Label
abs.END:
;; push argument 0 - 6
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; Label
abs.END1:
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
Main.main:
;; push temp 0 - 7
leaw $5,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; chamada de funcao: abs
leaw $abs-ret-22435661,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $6,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $abs,%A
jmp
nop
abs-ret-22435661:
;; pop temp 0 - 8
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5,%A
movw %D,(%A)
