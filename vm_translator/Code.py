#!/usr/bin/env python3

from bits import VMCode


class testCode(VMCode):

    def writeArithmetic(self, command):
        commands = []
        if command == "delete":
            commands.append("leaw $SP, %A")
            commands.append("movw (%A), %D")
            commands.append("decw %D")
            commands.append("movw %D, (%A)")
            commands.append("leaw $0, %A")
            commands.append("movw %A, (%D)")

        elif command == "add3":
            commands.append("leaw $SP, %A")
            commands.append("movw (%A), %A")
            commands.append("decw %A")

            commands.append("movw (%A), %D")
            commands.append("decw %A")

            commands.append("addw (%A), %D, %D")
            commands.append("decw %A")
            commands.append("addw (%A), %D, %D")

            commands.append("movw %D, (%A)")
            commands.append("incw %A")
            commands.append("movw %A, %D")
            commands.append("leaw $SP, %A")

            commands.append("movw %D, (%A)")


        elif command == "swap":
            commands.append("leaw $SP, %A")
            commands.append("movw (%A), %A")
            commands.append("decw %A") # %A = sp -1
            commands.append("movw (%A), %A")
            commands.append("movw %A, %D") # %D = y

            commands.append("leaw $5, %A")
            commands.append("movw %D, (%A)") #ram5 = y

            commands.append("leaw $SP, %A")
            commands.append("movw (%A), %A")
            commands.append("decw %A")
            commands.append("decw %A")  
            commands.append("movw (%A), %A") 
            commands.append("movw %A, %D") # %D = x

            commands.append("leaw $SP, %A")
            commands.append("movw (%A), %A")
            commands.append("decw %A")
            commands.append("movw %D, (%A)") #swap parte 1

            commands.append("leaw $5, %A")
            commands.append("movw (%A), %D")
            commands.append("leaw $SP, %A")
            commands.append("movw (%A), %A")
            commands.append("decw %A")
            commands.append("decw %A")
            commands.append("movw %D, (%A)") #swap parte 2

        # não mexer
        self.commandsToFile(commands)
