section .text
extern isr_common

%macro isr_stub_noerr 1
isr%1:
	push qword 0
	mov dword[rsp+4], %1
	jmp isr_common
%endmacro

%macro isr_stub_err 1
isr%1:
	mov dword[rsp+4], %1
	jmp isr_common
%endmacro

%macro isr_stub_irq 1
global isr_stub_%1
isr%1:
	push qword %1
	jmp isr_common
%endmacro

%macro isr_stub_ipi 2
global isr_stub_%1
isr%1:
	push qword %1
	jmp isr_common
%endmacro

isr_stub_noerr 0
isr_stub_noerr 1
isr_stub_noerr 2
isr_stub_noerr 3
isr_stub_noerr 4
isr_stub_noerr 5
isr_stub_noerr 6
isr_stub_noerr 7
isr_stub_err 8
isr_stub_noerr 9
isr_stub_err 10
isr_stub_err 11
isr_stub_err 12
isr_stub_err 13
isr_stub_err 14
isr_stub_noerr 15
isr_stub_noerr 16
isr_stub_err 17
isr_stub_noerr 18
isr_stub_noerr 19
isr_stub_noerr 20
isr_stub_noerr 21
isr_stub_noerr 22
isr_stub_noerr 23
isr_stub_noerr 24
isr_stub_noerr 25
isr_stub_noerr 26
isr_stub_noerr 27
isr_stub_noerr 28
isr_stub_noerr 29
isr_stub_err 30
isr_stub_noerr 31

; These are PIC IRQs. Some legacy interrupts still come through, so make them valid
isr_stub_irq 32
isr_stub_irq 33
isr_stub_irq 34
isr_stub_irq 35
isr_stub_irq 36
isr_stub_irq 37
isr_stub_irq 38
isr_stub_irq 39
isr_stub_irq 40
isr_stub_irq 41
isr_stub_irq 42
isr_stub_irq 43
isr_stub_irq 44
isr_stub_irq 45
isr_stub_irq 46
isr_stub_irq 47

; Other (IRQs)
isr_stub_irq 48
isr_stub_irq 49
isr_stub_irq 50
isr_stub_irq 51
isr_stub_irq 52
isr_stub_irq 53
isr_stub_irq 54
isr_stub_irq 55
isr_stub_irq 56
isr_stub_irq 57
isr_stub_irq 58
isr_stub_irq 59
isr_stub_irq 60
isr_stub_irq 61
isr_stub_irq 62
isr_stub_irq 63
isr_stub_irq 64
isr_stub_irq 65
isr_stub_irq 66
isr_stub_irq 67
isr_stub_irq 68
isr_stub_irq 69
isr_stub_irq 70
isr_stub_irq 71
isr_stub_irq 72
isr_stub_irq 73
isr_stub_irq 74
isr_stub_irq 75
isr_stub_irq 76
isr_stub_irq 77
isr_stub_irq 78
isr_stub_irq 79
isr_stub_irq 80
isr_stub_irq 81
isr_stub_irq 82
isr_stub_irq 83
isr_stub_irq 84
isr_stub_irq 85
isr_stub_irq 86
isr_stub_irq 87
isr_stub_irq 88
isr_stub_irq 89
isr_stub_irq 90
isr_stub_irq 91
isr_stub_irq 92
isr_stub_irq 93
isr_stub_irq 94
isr_stub_irq 95
isr_stub_irq 96
isr_stub_irq 97
isr_stub_irq 98
isr_stub_irq 99
isr_stub_irq 100
isr_stub_irq 101
isr_stub_irq 102
isr_stub_irq 103
isr_stub_irq 104
isr_stub_irq 105
isr_stub_irq 106
isr_stub_irq 107
isr_stub_irq 108
isr_stub_irq 109
isr_stub_irq 110
isr_stub_irq 111
isr_stub_irq 112
isr_stub_irq 113
isr_stub_irq 114
isr_stub_irq 115
isr_stub_irq 116
isr_stub_irq 117
isr_stub_irq 118
isr_stub_irq 119
isr_stub_irq 120
isr_stub_irq 121
isr_stub_irq 122
isr_stub_irq 123
isr_stub_irq 124
isr_stub_irq 125
isr_stub_irq 126
isr_stub_irq 127
isr_stub_irq 128
isr_stub_irq 129
isr_stub_irq 130
isr_stub_irq 131
isr_stub_irq 132
isr_stub_irq 133
isr_stub_irq 134
isr_stub_irq 135
isr_stub_irq 136
isr_stub_irq 137
isr_stub_irq 138
isr_stub_irq 139
isr_stub_irq 140
isr_stub_irq 141
isr_stub_irq 142
isr_stub_irq 143
isr_stub_irq 144
isr_stub_irq 145
isr_stub_irq 146
isr_stub_irq 147
isr_stub_irq 148
isr_stub_irq 149
isr_stub_irq 150
isr_stub_irq 151
isr_stub_irq 152
isr_stub_irq 153
isr_stub_irq 154
isr_stub_irq 155
isr_stub_irq 156
isr_stub_irq 157
isr_stub_irq 158
isr_stub_irq 159
isr_stub_irq 160
isr_stub_irq 161
isr_stub_irq 162
isr_stub_irq 163
isr_stub_irq 164
isr_stub_irq 165
isr_stub_irq 166
isr_stub_irq 167
isr_stub_irq 168
isr_stub_irq 169
isr_stub_irq 170
isr_stub_irq 171
isr_stub_irq 172
isr_stub_irq 173
isr_stub_irq 174
isr_stub_irq 175
isr_stub_irq 176
isr_stub_irq 177
isr_stub_irq 178
isr_stub_irq 179
isr_stub_irq 180
isr_stub_irq 181
isr_stub_irq 182
isr_stub_irq 183
isr_stub_irq 184
isr_stub_irq 185
isr_stub_irq 186
isr_stub_irq 187
isr_stub_irq 188
isr_stub_irq 189
isr_stub_irq 190
isr_stub_irq 191
isr_stub_irq 192
isr_stub_irq 193
isr_stub_irq 194
isr_stub_irq 195
isr_stub_irq 196
isr_stub_irq 197
isr_stub_irq 198
isr_stub_irq 199
isr_stub_irq 200
isr_stub_irq 201
isr_stub_irq 202
isr_stub_irq 203
isr_stub_irq 204
isr_stub_irq 205
isr_stub_irq 206
isr_stub_irq 207
isr_stub_irq 208
isr_stub_irq 209
isr_stub_irq 210
isr_stub_irq 211
isr_stub_irq 212
isr_stub_irq 213
isr_stub_irq 214
isr_stub_irq 215
isr_stub_irq 216
isr_stub_irq 217
isr_stub_irq 218
isr_stub_irq 219
isr_stub_irq 220
isr_stub_irq 221
isr_stub_irq 222
isr_stub_irq 223
isr_stub_irq 224
isr_stub_irq 225
isr_stub_irq 226
isr_stub_irq 227
isr_stub_irq 228
isr_stub_irq 229
isr_stub_irq 230
isr_stub_irq 231
isr_stub_irq 232
isr_stub_irq 233
isr_stub_irq 234
isr_stub_irq 235
isr_stub_irq 236
isr_stub_irq 237
isr_stub_irq 238
isr_stub_irq 239
isr_stub_irq 240
isr_stub_irq 241
isr_stub_irq 242
isr_stub_irq 243
isr_stub_irq 244
isr_stub_irq 245
isr_stub_irq 246
isr_stub_irq 247

; Careful changing these! They must match the values in interrupts.h
isr_stub_ipi 248, sched_hint
isr_stub_ipi 249, tlb_shootdown
isr_stub_ipi 250, abort 
isr_stub_noerr 251 ; NMI
isr_stub_irq 252 ; LINT0
isr_stub_irq 253 ; LINT1
isr_stub_irq 254 ; LAPIC timer
isr_stub_irq 255 
; APIC Spurious interrupt vector

extern InterruptHandler

isr_common:
	push rdi
	push rsi
	push rdx
	push rcx
	push rax
	push r8
	push r9
	push r10
	push r11

	mov rdi, rsp
	call InterruptHandler
isr_done:
	pop r11
	pop r10
	pop r9
	pop r8
	pop rax
	pop rcx
	pop rdx
	pop rsi
	pop rdi
	add rsp, 8

    iretq


; Vector table

section .data
global isr_table
isr_table:
  dq isr0
  dq isr1
  dq isr2
  dq isr3
  dq isr4
  dq isr5
  dq isr6
  dq isr7
  dq isr8
  dq isr9
  dq isr10
  dq isr11
  dq isr12
  dq isr13
  dq isr14
  dq isr15
  dq isr16
  dq isr17
  dq isr18
  dq isr19
  dq isr20
  dq isr21
  dq isr22
  dq isr23
  dq isr24
  dq isr25
  dq isr26
  dq isr27
  dq isr28
  dq isr29
  dq isr30
  dq isr31
  dq isr32
  dq isr33
  dq isr34
  dq isr35
  dq isr36
  dq isr37
  dq isr38
  dq isr39
  dq isr40
  dq isr41
  dq isr42
  dq isr43
  dq isr44
  dq isr45
  dq isr46
  dq isr47
  dq isr48
  dq isr49
  dq isr50
  dq isr51
  dq isr52
  dq isr53
  dq isr54
  dq isr55
  dq isr56
  dq isr57
  dq isr58
  dq isr59
  dq isr60
  dq isr61
  dq isr62
  dq isr63
  dq isr64
  dq isr65
  dq isr66
  dq isr67
  dq isr68
  dq isr69
  dq isr70
  dq isr71
  dq isr72
  dq isr73
  dq isr74
  dq isr75
  dq isr76
  dq isr77
  dq isr78
  dq isr79
  dq isr80
  dq isr81
  dq isr82
  dq isr83
  dq isr84
  dq isr85
  dq isr86
  dq isr87
  dq isr88
  dq isr89
  dq isr90
  dq isr91
  dq isr92
  dq isr93
  dq isr94
  dq isr95
  dq isr96
  dq isr97
  dq isr98
  dq isr99
  dq isr100
  dq isr101
  dq isr102
  dq isr103
  dq isr104
  dq isr105
  dq isr106
  dq isr107
  dq isr108
  dq isr109
  dq isr110
  dq isr111
  dq isr112
  dq isr113
  dq isr114
  dq isr115
  dq isr116
  dq isr117
  dq isr118
  dq isr119
  dq isr120
  dq isr121
  dq isr122
  dq isr123
  dq isr124
  dq isr125
  dq isr126
  dq isr127
  dq isr128
  dq isr129
  dq isr130
  dq isr131
  dq isr132
  dq isr133
  dq isr134
  dq isr135
  dq isr136
  dq isr137
  dq isr138
  dq isr139
  dq isr140
  dq isr141
  dq isr142
  dq isr143
  dq isr144
  dq isr145
  dq isr146
  dq isr147
  dq isr148
  dq isr149
  dq isr150
  dq isr151
  dq isr152
  dq isr153
  dq isr154
  dq isr155
  dq isr156
  dq isr157
  dq isr158
  dq isr159
  dq isr160
  dq isr161
  dq isr162
  dq isr163
  dq isr164
  dq isr165
  dq isr166
  dq isr167
  dq isr168
  dq isr169
  dq isr170
  dq isr171
  dq isr172
  dq isr173
  dq isr174
  dq isr175
  dq isr176
  dq isr177
  dq isr178
  dq isr179
  dq isr180
  dq isr181
  dq isr182
  dq isr183
  dq isr184
  dq isr185
  dq isr186
  dq isr187
  dq isr188
  dq isr189
  dq isr190
  dq isr191
  dq isr192
  dq isr193
  dq isr194
  dq isr195
  dq isr196
  dq isr197
  dq isr198
  dq isr199
  dq isr200
  dq isr201
  dq isr202
  dq isr203
  dq isr204
  dq isr205
  dq isr206
  dq isr207
  dq isr208
  dq isr209
  dq isr210
  dq isr211
  dq isr212
  dq isr213
  dq isr214
  dq isr215
  dq isr216
  dq isr217
  dq isr218
  dq isr219
  dq isr220
  dq isr221
  dq isr222
  dq isr223
  dq isr224
  dq isr225
  dq isr226
  dq isr227
  dq isr228
  dq isr229
  dq isr230
  dq isr231
  dq isr232
  dq isr233
  dq isr234
  dq isr235
  dq isr236
  dq isr237
  dq isr238
  dq isr239
  dq isr240
  dq isr241
  dq isr242
  dq isr243
  dq isr244
  dq isr245
  dq isr246
  dq isr247
  dq isr248
  dq isr249
  dq isr250
  dq isr251
  dq isr252
  dq isr253
  dq isr254
  dq isr255
