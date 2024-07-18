#!/usr/bin/env python3
import sys
from enum import Enum


def byte_to_instruction(sbyte: str) -> str:
    ibyte = int.from_bytes(bytes.fromhex(sbyte), byteorder='little', signed=False)
    if ibyte == 0x94f8:
        return f'cli'
    if ibyte == 0x9478:
        return f'sei'
    if (ibyte & 0xFE0F) ==  0x900F:
        r = (ibyte & 0x1F0) >> 4
        return f'pop r{r}'
    if (ibyte & 0xFE0F) == 0x920F:
        d = (ibyte & 0x1F0) >> 4
        return f'push r{d}'
    if (ibyte & 0xF000) == 0xE000:
        k = (ibyte & 0xF00) >> 4 + (ibyte & 0xF)
        d = (ibyte & 0xF0) >> 4
        return f'ldi r{d},lo8({k})'
    if (ibyte & 0xF800) == 0xB000:
        d = (ibyte & 0x1F0) >> 4
        a = (ibyte & 0x600) >> 5 + (ibyte & 0xF)
        return f'in r{d},{a}'
    # LDS
    # STS
    # SBI
    # CBI
    # SBIC
    # SBIS
    # clr
    # movw
    if (ibyte & 0xFE0C) == 0xFE0C:
        return f'ldi {ibyte & 0x1F0}'
    if ibyte == 0x0000:
        return 'nop'
    return f'{ibyte:0>4X}'
    

for file in sys.argv[1:]:
    with open(file, 'r', encoding='utf-8') as f:
        txt = f.read()
    for i, line in enumerate(txt.split('\n')):
        if (len(line) == 0):
            continue
        assert(line[0] == ':')
        data_len = line[1:3]
        addr = line[3:7]
        record_type = line[7:9]
        chksum_sent = line[-2:] #TODO: auto verify
        data = line[9:-2]
        data_bytes = [data[i:i+4] for i in range(0, len(data), 4)]
        print(f'{i+1}.\t{data_len}\t{addr}\t{data_bytes}')
        for data_byte in data_bytes:
            print(byte_to_instruction(data_byte))

