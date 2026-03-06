(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32 i32 i32)))
 (type $4 (func (param i32)))
 (type $5 (func (result i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func))
 (type $8 (func (param i32 i32 i32 i32) (result i32)))
 (type $9 (func (param i32 i32 i32) (result i32)))
 (type $10 (func (param i64 i64) (result i32)))
 (type $11 (func (param i64 i64 i64 i64) (result i32)))
 (type $12 (func (param i64 i64)))
 (type $13 (func (param i64) (result i64)))
 (type $14 (func (param i32) (result i64)))
 (type $15 (func (param i32 i32 i64)))
 (type $16 (func (param i32 i32) (result i64)))
 (type $17 (func (param i32 i64)))
 (type $18 (func (param i64 i64 i64 i64 i64 i64 i64 i64) (result i32)))
 (import "env" "exit" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit (param i32 i32 i32)))
 (import "env" "environment" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables (param i32 i32 i32)))
 (import "env" "calldata" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata (param i32 i32 i32)))
 (import "env" "sha256" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/_sha256 (param i32 i32 i32)))
 (import "env" "store" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/storePointer (param i32 i32)))
 (import "env" "load" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/loadPointer (param i32 i32)))
 (import "env" "emit" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/emit (param i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/types/Address/ZERO_ADDRESS (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/script/Networks/Network (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/math/bytes/ONE_BUFFER (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddressCache/_cachedDeadAddress (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/SCRATCH_BUF (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/as-bignum/assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry (mut i64) (i64.const 0))
 (global $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub (mut i64) (i64.const 0))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 16)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\n\00\00\00a\00b\00o\00r\00t")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\08\00\00\00 \00i\00n\00 ")
 (data $2 (i32.const 1100) "\1c")
 (data $2.1 (i32.const 1112) "\02")
 (data $3 (i32.const 1132) "\1c")
 (data $3.1 (i32.const 1144) "\02\00\00\00\02\00\00\00:")
 (data $4 (i32.const 1164) "|")
 (data $4.1 (i32.const 1176) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $5 (i32.const 1292) "<")
 (data $5.1 (i32.const 1304) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $6 (i32.const 1356) "\1c")
 (data $6.1 (i32.const 1368) "\02\00\00\00\02\00\00\000")
 (data $7 (i32.const 1388) "\\")
 (data $7.1 (i32.const 1400) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $8 (i32.const 1484) "<")
 (data $8.1 (i32.const 1496) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data $9 (i32.const 1548) "<")
 (data $9.1 (i32.const 1560) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $10 (i32.const 1612) "<")
 (data $10.1 (i32.const 1624) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data $11 (i32.const 1676) "\1c\02")
 (data $11.1 (i32.const 1688) "\05\00\00\00\00\02\00\00000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff")
 (data $12 (i32.const 2220) ",")
 (data $12.1 (i32.const 2232) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $13 (i32.const 2268) "<")
 (data $13.1 (i32.const 2280) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $14 (i32.const 2332) "L")
 (data $14.1 (i32.const 2344) "\02\00\00\006\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00l\00e\00n\00g\00t\00h\00 \00(")
 (data $15 (i32.const 2412) "\1c")
 (data $15.1 (i32.const 2424) "\02\00\00\00\02\00\00\00)")
 (data $16 (i32.const 2444) "\1c\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\0c\00\00\000\t\00\00\00\00\00\00\80\t")
 (data $17 (i32.const 2476) "|")
 (data $17.1 (i32.const 2488) "\02\00\00\00j\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00t\00y\00p\00e\00s\00/\00A\00d\00d\00r\00e\00s\00s\00.\00t\00s")
 (data $18 (i32.const 2604) "<")
 (data $18.1 (i32.const 2616) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $19 (i32.const 2668) "<")
 (data $19.1 (i32.const 2680) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $20 (i32.const 2732) "\1c")
 (data $20.1 (i32.const 2744) "\01")
 (data $21 (i32.const 2764) "\9c")
 (data $21.1 (i32.const 2776) "\01\00\00\00\80")
 (data $21.2 (i32.const 2804) "\19\00\00\00\d6\00\00\00h\00\00\00\9c\00\00\00\08\00\00\00Z\00\00\00\e1\00\00\00e\00\00\00\83\00\00\00\1e\00\00\00\93\00\00\00O\00\00\00\f7\00\00\00c\00\00\00\ae\00\00\00F\00\00\00\a2\00\00\00\a6\00\00\00\c1\00\00\00r\00\00\00\b3\00\00\00\f1\00\00\00\b6\00\00\00\n\00\00\00\8c\00\00\00\e2\00\00\00o")
 (data $22 (i32.const 2924) "\9c")
 (data $22.1 (i32.const 2936) "\01\00\00\00\80")
 (data $22.2 (i32.const 2960) "\t\00\00\003\00\00\00\ea\00\00\00\01\00\00\00\ad\00\00\00\0e\00\00\00\e9\00\00\00\84\00\00\00 \00\00\00\97\00\00\00y\00\00\00\ba\00\00\00\ae\00\00\00\c3\00\00\00\ce\00\00\00\d9\00\00\00\0f\00\00\00\a3\00\00\00\f4\00\00\00\08\00\00\00q\00\00\00\95\00\00\00&\00\00\00\f8\00\00\00\d7\00\00\00\7f\00\00\00I\00\00\00C")
 (data $23 (i32.const 3084) "\9c")
 (data $23.1 (i32.const 3096) "\01\00\00\00\80\00\00\00\0f\00\00\00\91\00\00\00\88\00\00\00\f1\00\00\00<\00\00\00\b7\00\00\00\b2\00\00\00\c7\00\00\00\1f\00\00\00*\00\00\003\00\00\00^\00\00\00:\00\00\00O\00\00\00\c3\00\00\00(\00\00\00\bf\00\00\00[\00\00\00\eb\00\00\00C\00\00\00`\00\00\00\12\00\00\00\af\00\00\00\ca\00\00\00Y\00\00\00\0b\00\00\00\1a\00\00\00\11\00\00\00F\00\00\00n\00\00\00\"\00\00\00\06")
 (data $24 (i32.const 3244) "\9c")
 (data $24.1 (i32.const 3256) "\01\00\00\00\80")
 (data $24.2 (i32.const 3272) "\01\00\00\00\7f\00\00\00\85\00\00\00\10\00\00\00k\00\00\00\1f\00\00\00\ee\00\00\00\af\00\00\00/\00\00\00p\00\00\00\f1\00\00\00\e2\00\00\00\b8\00\00\00\05\00\00\00\98\00\00\00[\00\00\00\b5\00\00\00u\00\00\00\f8\00\00\00\8f\00\00\00\9b\00\00\00\0b\00\00\00\a5\00\00\00u\00\00\00=\00\00\00/\00\00\00<\00\00\00\f1\00\00\002\00\00\00s")
 (data $25 (i32.const 3404) "<")
 (data $25.1 (i32.const 3416) "\02\00\00\00$\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $26 (i32.const 3468) "\\")
 (data $26.1 (i32.const 3480) "\02\00\00\00@\00\00\00q\00p\00z\00r\00y\009\00x\008\00g\00f\002\00t\00v\00d\00w\000\00s\003\00j\00n\005\004\00k\00h\00c\00e\006\00m\00u\00a\007\00l")
 (data $27 (i32.const 3564) "<")
 (data $27.1 (i32.const 3576) "\01\00\00\00 \00\00\00(J\e4\ac\db2\a9\9b\a3\eb\faf\a9\1d\dbA\a7\b7\a1\d2\fe\f4\159\99\"\cd\8a\04H\\\02")
 (data $28 (i32.const 3628) ",")
 (data $28.1 (i32.const 3640) "\08\00\00\00\10\00\00\00\00\0e\00\00\00\0e\00\00 \00\00\00 ")
 (data $29 (i32.const 3676) "<")
 (data $29.1 (i32.const 3688) "\01\00\00\00 ")
 (data $30 (i32.const 3740) ",")
 (data $30.1 (i32.const 3752) "\08\00\00\00\10\00\00\00p\0e\00\00p\0e\00\00 \00\00\00 ")
 (data $31 (i32.const 3788) "l")
 (data $31.1 (i32.const 3800) "\02\00\00\00P\00\00\00T\00w\00e\00a\00k\00e\00d\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \003\002\00 \00b\00y\00t\00e\00s\00 \00l\00o\00n\00g")
 (data $32 (i32.const 3900) "\8c")
 (data $32.1 (i32.const 3912) "\02\00\00\00z\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00t\00y\00p\00e\00s\00/\00E\00x\00t\00e\00n\00d\00e\00d\00A\00d\00d\00r\00e\00s\00s\00.\00t\00s")
 (data $33 (i32.const 4044) ",")
 (data $33.1 (i32.const 4056) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $34 (i32.const 4092) "\1c")
 (data $34.1 (i32.const 4104) "\01")
 (data $35 (i32.const 4124) "\1c")
 (data $35.1 (i32.const 4136) "\01")
 (data $36 (i32.const 4156) "<")
 (data $36.1 (i32.const 4168) "\01\00\00\00 \00\00\00~\88\02\f1\fd#\e1\0e\r\de?\00\c0\aaH\15\d8\85\ec\d9\cd\a0\dfV\ff\a2^\ccp-E\8e")
 (data $37 (i32.const 4220) ",")
 (data $37.1 (i32.const 4232) "\08\00\00\00\10\00\00\00P\10\00\00P\10\00\00 \00\00\00 ")
 (data $38 (i32.const 4268) "<")
 (data $38.1 (i32.const 4280) "\01\00\00\00 \00\00\00p\87\994\92\1c/H\17x\87\89w\d5\b4^*Y\da\1d(\"A\c9?\f1\baj\f0\98\fc\d0")
 (data $39 (i32.const 4332) ",")
 (data $39.1 (i32.const 4344) "\08\00\00\00\10\00\00\00\c0\10\00\00\c0\10\00\00 \00\00\00 ")
 (data $40 (i32.const 4380) "<")
 (data $40.1 (i32.const 4392) "\01\00\00\00 \00\00\00Zd,\a2\d8\fd\e9\e1(\87|\f5]q\96\e3:\d4K\b3K\n\8d\85\8d\a8\04\bd;\86!\0e")
 (data $41 (i32.const 4444) ",")
 (data $41.1 (i32.const 4456) "\08\00\00\00\10\00\00\000\11\00\000\11\00\00 \00\00\00 ")
 (data $42 (i32.const 4492) "<")
 (data $42.1 (i32.const 4504) "\01\00\00\00 \00\00\00{\f8\b69_\ea\cc\15\97\128\00\91\b9+\96gk+sF\ff)\'\bf\1aT\f8\fc\ef\9c\0b")
 (data $43 (i32.const 4556) ",")
 (data $43.1 (i32.const 4568) "\08\00\00\00\10\00\00\00\a0\11\00\00\a0\11\00\00 \00\00\00 ")
 (data $44 (i32.const 4604) "<")
 (data $44.1 (i32.const 4616) "\01\00\00\00 \00\00\00\fe\e8\"\925\1d\1a\8b\ab!\c4\ef\dd\15~1h\e8\f62:\d0L\ba\12\f7|\0b\dcF\"X")
 (data $45 (i32.const 4668) ",")
 (data $45.1 (i32.const 4680) "\08\00\00\00\10\00\00\00\10\12\00\00\10\12\00\00 \00\00\00 ")
 (data $46 (i32.const 4716) "<")
 (data $46.1 (i32.const 4728) "\01\00\00\00 \00\00\00k\86\b2s\ff4\fc\e1\9dk\80N\ffZ?WG\ad\a4\ea\a2/\1dI\c0\1eR\dd\b7\87[K")
 (data $47 (i32.const 4780) ",")
 (data $47.1 (i32.const 4792) "\08\00\00\00\10\00\00\00\80\12\00\00\80\12\00\00 \00\00\00 ")
 (data $48 (i32.const 4828) "<")
 (data $48.1 (i32.const 4840) "\01\00\00\00 \00\00\00\b8n\99\da\c0GKJ\9f\c32:\d6\ed/9U\e7\b8m\c6\8cbB\82\1c\bc\ac\a2\d8y\de")
 (data $49 (i32.const 4892) ",")
 (data $49.1 (i32.const 4904) "\08\00\00\00\10\00\00\00\f0\12\00\00\f0\12\00\00 \00\00\00 ")
 (data $50 (i32.const 4940) "<")
 (data $50.1 (i32.const 4952) "\01\00\00\00 \00\00\00OH\06]\9e\f1E%k\f7\7f\d2\e5\8by\e6\f6\0c\d0\d3Gp\1424P\c9e\b7K\80\ed")
 (data $51 (i32.const 5004) ",")
 (data $51.1 (i32.const 5016) "\08\00\00\00\10\00\00\00`\13\00\00`\13\00\00 \00\00\00 ")
 (data $52 (i32.const 5052) "<")
 (data $52.1 (i32.const 5064) "\01\00\00\00 \00\00\00\f9\03\d7\be\0c\a4\99\eem}F\"\c7\92\b2\ead\ab\a6\afhQ\03\fe\c4\ae\12\d7\a6\a9\b2\0f")
 (data $53 (i32.const 5116) ",")
 (data $53.1 (i32.const 5128) "\08\00\00\00\10\00\00\00\d0\13\00\00\d0\13\00\00 \00\00\00 ")
 (data $54 (i32.const 5164) "L")
 (data $54.1 (i32.const 5176) "\02\00\00\00.\00\00\00O\00u\00t\00 \00o\00f\00 \00s\00t\00o\00r\00a\00g\00e\00 \00p\00o\00i\00n\00t\00e\00r\00.")
 (data $55 (i32.const 5244) "\9c")
 (data $55.1 (i32.const 5256) "\02\00\00\00\82\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00n\00v\00/\00B\00l\00o\00c\00k\00c\00h\00a\00i\00n\00E\00n\00v\00i\00r\00o\00n\00m\00e\00n\00t\00.\00t\00s")
 (data $56 (i32.const 5404) "<")
 (data $56.1 (i32.const 5416) "\01\00\00\00 \00\00\00/\fc\ff\ff\fe\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff")
 (data $57 (i32.const 5468) ",")
 (data $57.1 (i32.const 5480) "\08\00\00\00\10\00\00\000\15\00\000\15\00\00 \00\00\00 ")
 (data $58 (i32.const 5516) "<")
 (data $58.1 (i32.const 5528) "\01\00\00\00 \00\00\00\98\17\f8\16\b1[(\d9Y(\ce-\db\fc\9b\02p\b0\87\ce\95\a0bU\ac\bb\dc\f9\eff\bey")
 (data $59 (i32.const 5580) ",")
 (data $59.1 (i32.const 5592) "\08\00\00\00\10\00\00\00\a0\15\00\00\a0\15\00\00 \00\00\00 ")
 (data $60 (i32.const 5628) "<")
 (data $60.1 (i32.const 5640) "\01\00\00\00 \00\00\00\b8\d4\10\fb\8f\d0G\9c\19T\85\a6H\b4\17\fd\a8\08\11\0e\fc\fb\a4]e\c4\a3&w\da:H")
 (data $61 (i32.const 5692) ",")
 (data $61.1 (i32.const 5704) "\08\00\00\00\10\00\00\00\10\16\00\00\10\16\00\00 \00\00\00 ")
 (data $62 (i32.const 5740) "|")
 (data $62.1 (i32.const 5752) "\02\00\00\00f\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\002\005\006\00.\00t\00s")
 (data $63 (i32.const 5868) "L")
 (data $63.1 (i32.const 5880) "\02\00\00\002\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $64 (i32.const 5948) "\\")
 (data $64.1 (i32.const 5960) "\02\00\00\00J\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00(\00a\00d\00d\00r\00e\00s\00s\00,\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $65 (i32.const 6044) "\\")
 (data $65.1 (i32.const 6056) "\02\00\00\00F\00\00\00s\00a\00f\00e\00T\00r\00a\00n\00s\00f\00e\00r\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00,\00b\00y\00t\00e\00s\00)")
 (data $66 (i32.const 6140) "|")
 (data $66.1 (i32.const 6152) "\02\00\00\00^\00\00\00s\00a\00f\00e\00T\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00(\00a\00d\00d\00r\00e\00s\00s\00,\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00,\00b\00y\00t\00e\00s\00)")
 (data $67 (i32.const 6268) "\\")
 (data $67.1 (i32.const 6280) "\02\00\00\00D\00\00\00i\00n\00c\00r\00e\00a\00s\00e\00A\00l\00l\00o\00w\00a\00n\00c\00e\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $68 (i32.const 6364) "\\")
 (data $68.1 (i32.const 6376) "\02\00\00\00D\00\00\00d\00e\00c\00r\00e\00a\00s\00e\00A\00l\00l\00o\00w\00a\00n\00c\00e\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $69 (i32.const 6460) ",")
 (data $69.1 (i32.const 6472) "\02\00\00\00\1a\00\00\00b\00u\00r\00n\00(\00u\00i\00n\00t\002\005\006\00)")
 (data $70 (i32.const 6508) "|")
 (data $70.1 (i32.const 6520) "\01\00\00\00`")
 (data $70.2 (i32.const 6539) "\80\00\00\00\80")
 (data $70.3 (i32.const 6555) "\80\00\00\00\80")
 (data $70.4 (i32.const 6583) "\80\00\00\00\80\00\00\00\80\00\00\00\80\00\00\00\80\00\00\00\00\00\00\00\80\00\00\00\80\00\00\00\80\00\00\00\00\00\00\00\80")
 (data $71 (i32.const 6636) ",")
 (data $71.1 (i32.const 6648) "!\00\00\00\10\00\00\00\80\19\00\00\80\19\00\00`\00\00\00\18")
 (data $72 (i32.const 6684) "|")
 (data $72.1 (i32.const 6696) "\01\00\00\00`\00\00\00\01\00\00\00\82\80\00\00\8a\80\00\00\00\80\00\80\8b\80\00\00\01\00\00\80\81\80\00\80\t\80\00\00\8a\00\00\00\88\00\00\00\t\80\00\80\n\00\00\80\8b\80\00\80\8b\00\00\00\89\80\00\00\03\80\00\00\02\80\00\00\80\00\00\00\n\80\00\00\n\00\00\80\81\80\00\80\80\80\00\00\01\00\00\80\08\80\00\80")
 (data $73 (i32.const 6812) ",")
 (data $73.1 (i32.const 6824) "!\00\00\00\10\00\00\000\1a\00\000\1a\00\00`\00\00\00\18")
 (data $74 (i32.const 6860) "|")
 (data $74.1 (i32.const 6872) "\01\00\00\00`\00\00\00\01\00\00\00\03\00\00\00\06\00\00\00\n\00\00\00\0f\00\00\00\15\00\00\00\1c\00\00\00$\00\00\00-\00\00\007\00\00\00\02\00\00\00\0e\00\00\00\1b\00\00\00)\00\00\008\00\00\00\08\00\00\00\19\00\00\00+\00\00\00>\00\00\00\12\00\00\00\'\00\00\00=\00\00\00\14\00\00\00,")
 (data $75 (i32.const 6988) ",")
 (data $75.1 (i32.const 7000) "\n\00\00\00\10\00\00\00\e0\1a\00\00\e0\1a\00\00`\00\00\00\18")
 (data $76 (i32.const 7036) "|")
 (data $76.1 (i32.const 7048) "\01\00\00\00`\00\00\00\n\00\00\00\07\00\00\00\0b\00\00\00\11\00\00\00\12\00\00\00\03\00\00\00\05\00\00\00\10\00\00\00\08\00\00\00\15\00\00\00\18\00\00\00\04\00\00\00\0f\00\00\00\17\00\00\00\13\00\00\00\r\00\00\00\0c\00\00\00\02\00\00\00\14\00\00\00\0e\00\00\00\16\00\00\00\t\00\00\00\06\00\00\00\01")
 (data $77 (i32.const 7164) ",")
 (data $77.1 (i32.const 7176) "\n\00\00\00\10\00\00\00\90\1b\00\00\90\1b\00\00`\00\00\00\18")
 (data $78 (i32.const 7212) "\1c")
 (data $78.1 (i32.const 7224) "\01")
 (data $79 (i32.const 7244) ",")
 (data $79.1 (i32.const 7256) "\02\00\00\00\14\00\00\00S\00t\00o\00r\00e\00d\00U\002\005\006")
 (data $80 (i32.const 7292) "l")
 (data $80.1 (i32.const 7304) "\02\00\00\00N\00\00\00P\00o\00i\00n\00t\00e\00r\00s\00 \00m\00u\00s\00t\00 \00b\00e\00 \00e\00x\00a\00c\00t\00l\00y\00 \003\000\00 \00b\00y\00t\00e\00s\00.\00 \00G\00o\00t\00 ")
 (data $81 (i32.const 7404) ",")
 (data $81.1 (i32.const 7416) "\02\00\00\00\16\00\00\00,\00 \00c\00o\00n\00t\00e\00x\00t\00:\00 ")
 (data $82 (i32.const 7452) "\1c")
 (data $82.1 (i32.const 7464) "\02\00\00\00\02\00\00\00.")
 (data $83 (i32.const 7484) ",\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\14\00\00\00\90\1c\00\00\00\00\00\00\00\1d\00\00\00\00\00\000\1d")
 (data $84 (i32.const 7532) "|")
 (data $84.1 (i32.const 7544) "\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00m\00a\00t\00h\00/\00a\00b\00i\00.\00t\00s")
 (data $85 (i32.const 7660) ",")
 (data $85.1 (i32.const 7672) "\02\00\00\00\12\00\00\00S\00t\00o\00r\00e\00d\00U\006\004")
 (data $86 (i32.const 7708) "<")
 (data $86.1 (i32.const 7720) "\01\00\00\00 ")
 (data $87 (i32.const 7772) ",")
 (data $87.1 (i32.const 7784) "\02\00\00\00\1a\00\00\00S\00t\00o\00r\00e\00d\00A\00d\00d\00r\00e\00s\00s")
 (data $88 (i32.const 7820) "\1c")
 (data $88.1 (i32.const 7832) "\01")
 (data $89 (i32.const 7852) ",")
 (data $89.1 (i32.const 7864) "\02\00\00\00\1a\00\00\00S\00t\00o\00r\00e\00d\00B\00o\00o\00l\00e\00a\00n")
 (data $90 (i32.const 7900) "\1c")
 (data $90.1 (i32.const 7912) ")\00\00\00\08\00\00\00\01")
 (data $91 (i32.const 7932) "<")
 (data $91.1 (i32.const 7944) "\02\00\00\00(\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $92 (i32.const 7996) "\1c")
 (data $92.1 (i32.const 8008) "\02\00\00\00\08\00\00\00 \00a\00t\00 ")
 (data $93 (i32.const 8028) ",\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\1c\00\00\00\00\00\00\00P\1f\00\00\00\00\00\00\80\04\00\00\00\00\00\00\80\04")
 (data $94 (i32.const 8076) "<")
 (data $94.1 (i32.const 8088) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $95 (i32.const 8140) ",")
 (data $95.1 (i32.const 8152) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $96 (i32.const 8188) "<")
 (data $96.1 (i32.const 8200) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (data $97 (i32.const 8252) "\8c")
 (data $97.1 (i32.const 8264) "\02\00\00\00z\00\00\00A\00t\00t\00e\00m\00p\00t\00 \00t\00o\00 \00r\00e\00a\00d\00 \00b\00e\00y\00o\00n\00d\00 \00b\00u\00f\00f\00e\00r\00 \00l\00e\00n\00g\00t\00h\00.\00 \00R\00e\00q\00u\00e\00s\00t\00e\00d\00 \00u\00p\00 \00t\00o\00 \00o\00f\00f\00s\00e\00t\00 ")
 (data $98 (i32.const 8396) "\1c")
 (data $98.1 (i32.const 8408) "\02\00\00\00\04\00\00\00,\00 ")
 (data $99 (i32.const 8428) "\1c\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\0c\00\00\00P \00\00\00\00\00\00\e0 ")
 (data $100 (i32.const 8460) "<")
 (data $100.1 (i32.const 8472) "\02\00\00\00&\00\00\00b\00u\00t\00 \00b\00u\00f\00f\00e\00r\00 \00i\00s\00 \00o\00n\00l\00y\00 ")
 (data $101 (i32.const 8524) ",")
 (data $101.1 (i32.const 8536) "\02\00\00\00\0e\00\00\00 \00b\00y\00t\00e\00s\00.")
 (data $102 (i32.const 8572) "\1c\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\0c\00\00\00 !\00\00\00\00\00\00`!")
 (data $103 (i32.const 8604) "\8c")
 (data $103.1 (i32.const 8616) "\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00b\00u\00f\00f\00e\00r\00/\00B\00y\00t\00e\00s\00R\00e\00a\00d\00e\00r\00.\00t\00s")
 (data $104 (i32.const 8748) "\1c")
 (data $104.1 (i32.const 8760) "\01")
 (data $105 (i32.const 8780) "L")
 (data $105.1 (i32.const 8792) "\02\00\00\006\00\00\00C\00a\00n\00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00d\00d\00r\00e\00s\00s\00 \00d\00a\00t\00a\00.")
 (data $106 (i32.const 8860) "<")
 (data $106.1 (i32.const 8872) "\02\00\00\00(\00\00\00C\00h\00a\00i\00n\00 \00i\00d\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $107 (i32.const 8924) "|")
 (data $107.1 (i32.const 8936) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $108 (i32.const 9052) "L")
 (data $108.1 (i32.const 9064) "\02\00\00\00.\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00i\00n\00 \00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $109 (i32.const 9132) "\8c")
 (data $109.1 (i32.const 9144) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00s\00c\00r\00i\00p\00t\00/\00N\00e\00t\00w\00o\00r\00k\00s\00.\00t\00s")
 (data $110 (i32.const 9276) "<")
 (data $110.1 (i32.const 9288) "\02\00\00\00 \00\00\00U\00n\00k\00n\00o\00w\00n\00 \00c\00h\00a\00i\00n\00 \00i\00d")
 (data $111 (i32.const 9340) "|")
 (data $111.1 (i32.const 9352) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $112 (i32.const 9468) ",")
 (data $112.1 (i32.const 9480) "\02\00\00\00\14\00\00\00d\00e\00p\00l\00o\00y\00e\00r\00(\00)")
 (data $113 (i32.const 9516) "l")
 (data $113.1 (i32.const 9528) "\02\00\00\00T\00\00\00b\00y\00t\00e\00s\00T\00o\00U\003\002\00:\00 \00i\00n\00p\00u\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \004\00 \00b\00y\00t\00e\00s")
 (data $114 (i32.const 9628) "|")
 (data $114.1 (i32.const 9640) "\02\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00m\00a\00t\00h\00/\00b\00y\00t\00e\00s\00.\00t\00s")
 (data $115 (i32.const 9756) "<")
 (data $115.1 (i32.const 9768) "\02\00\00\00(\00\00\00D\00e\00p\00l\00o\00y\00e\00r\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $116 (i32.const 9820) "<")
 (data $116.1 (i32.const 9832) "\02\00\00\00(\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00i\00s\00 \00t\00o\00o\00 \00l\00o\00n\00g\00 ")
 (data $117 (i32.const 9884) "\1c")
 (data $117.1 (i32.const 9896) "\02\00\00\00\06\00\00\00 \00>\00 ")
 (data $118 (i32.const 9916) "\1c")
 (data $118.1 (i32.const 9928) "\02\00\00\00\0c\00\00\00 \00b\00y\00t\00e\00s")
 (data $119 (i32.const 9948) ",\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\14\00\00\00p&\00\00\00\00\00\00\b0&\00\00\00\00\00\00\d0&")
 (data $120 (i32.const 9996) "\8c")
 (data $120.1 (i32.const 10008) "\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00b\00u\00f\00f\00e\00r\00/\00B\00y\00t\00e\00s\00W\00r\00i\00t\00e\00r\00.\00t\00s")
 (data $121 (i32.const 10140) "L")
 (data $121.1 (i32.const 10152) "\02\00\00\008\00\00\00B\00y\00t\00e\00s\00W\00r\00i\00t\00e\00r\00:\00 \00o\00f\00f\00s\00e\00t\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $122 (i32.const 10220) "\8c")
 (data $122.1 (i32.const 10232) "\02\00\00\00p\00\00\00B\00u\00f\00f\00e\00r\00 \00i\00s\00 \00g\00e\00t\00t\00i\00n\00g\00 \00r\00e\00s\00i\00z\00e\00d\00.\00 \00T\00h\00i\00s\00 \00i\00s\00 \00b\00a\00d\00 \00f\00o\00r\00 \00p\00e\00r\00f\00o\00r\00m\00a\00n\00c\00e\00.\00 ")
 (data $123 (i32.const 10364) "<")
 (data $123.1 (i32.const 10376) "\02\00\00\00\1e\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00s\00i\00z\00e\00:\00 ")
 (data $124 (i32.const 10428) "\1c")
 (data $124.1 (i32.const 10440) "\02\00\00\00\06\00\00\00 \00-\00 ")
 (data $125 (i32.const 10460) "\1c\00\00\00\03\00\00\00\00\00\00\00\t\00\00\00\0c\00\00\00\90(\00\00\00\00\00\00\d0(")
 (data $126 (i32.const 10492) ",")
 (data $126.1 (i32.const 10504) "\02\00\00\00\1c\00\00\00C\00u\00r\00r\00e\00n\00t\00 \00s\00i\00z\00e\00:\00 ")
 (data $127 (i32.const 10540) "<")
 (data $127.1 (i32.const 10552) "\02\00\00\00$\00\00\00M\00e\00t\00h\00o\00d\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00:\00 ")
 (data $128 (i32.const 10604) "\8c")
 (data $128.1 (i32.const 10616) "\02\00\00\00p\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00O\00P\00_\00N\00E\00T\00.\00t\00s")
 (data $129 (i32.const 10748) "L")
 (data $129.1 (i32.const 10760) "\02\00\00\00.\00\00\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $130 (i32.const 10828) "\\")
 (data $130.1 (i32.const 10840) "\02\00\00\00D\00\00\00O\00n\00l\00y\00 \00d\00e\00p\00l\00o\00y\00e\00r\00 \00c\00a\00n\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00m\00e\00t\00h\00o\00d")
 (data $131 (i32.const 10924) "l")
 (data $131.1 (i32.const 10936) "\02\00\00\00N\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00t\00i\00c\00k\00e\00t\00 \00p\00r\00i\00c\00e\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00z\00e\00r\00o")
 (data $132 (i32.const 11036) "L")
 (data $132.1 (i32.const 11048) "\02\00\00\006\00\00\00s\00r\00c\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00.\00t\00s")
 (data $133 (i32.const 11116) "\\")
 (data $133.1 (i32.const 11128) "\02\00\00\00F\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00d\00u\00r\00a\00t\00i\00o\00n\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00z\00e\00r\00o")
 (data $134 (i32.const 11212) "<")
 (data $134.1 (i32.const 11224) "\02\00\00\00\"\00\00\00B\00l\00o\00c\00k\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $135 (i32.const 11276) "L")
 (data $135.1 (i32.const 11288) "\02\00\00\00:\00\00\00P\00o\00i\00n\00t\00e\00r\00 \00m\00u\00s\00t\00 \00b\00e\00 \003\002\00 \00b\00y\00t\00e\00s\00 \00l\00o\00n\00g")
 (data $136 (i32.const 11356) "l")
 (data $136.1 (i32.const 11368) "\02\00\00\00N\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00 \00f\00o\00r\00 \00S\00t\00o\00r\00e\00d\00U\006\004\00 \00(\000\00-\003\00)")
 (data $137 (i32.const 11468) "\8c")
 (data $137.1 (i32.const 11480) "\02\00\00\00r\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00s\00t\00o\00r\00a\00g\00e\00/\00S\00t\00o\00r\00e\00d\00U\006\004\00.\00t\00s")
 (data $138 (i32.const 11612) "\\")
 (data $138.1 (i32.const 11624) "\02\00\00\00B\00\00\00K\00e\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00m\00a\00p\00 \00(\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00)")
 (data $139 (i32.const 11708) "\8c")
 (data $139.1 (i32.const 11720) "\02\00\00\00z\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00g\00e\00n\00e\00r\00i\00c\00/\00M\00a\00p\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00.\00t\00s")
 (data $140 (i32.const 11852) "l")
 (data $140.1 (i32.const 11864) "\02\00\00\00R\00\00\00E\00v\00e\00n\00t\00 \00d\00a\00t\00a\00 \00l\00e\00n\00g\00t\00h\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00i\00m\00u\00m\00 \00l\00e\00n\00g\00t\00h\00.")
 (data $141 (i32.const 11964) "\8c")
 (data $141.1 (i32.const 11976) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00v\00e\00n\00t\00s\00/\00N\00e\00t\00E\00v\00e\00n\00t\00.\00t\00s")
 (data $142 (i32.const 12108) ",")
 (data $142.1 (i32.const 12120) "\02\00\00\00\18\00\00\00R\00o\00u\00n\00d\00C\00r\00e\00a\00t\00e\00d")
 (data $143 (i32.const 12156) "<")
 (data $143.1 (i32.const 12168) "\02\00\00\00*\00\00\00B\00u\00f\00f\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00d\00e\00f\00i\00n\00e\00d")
 (data $144 (i32.const 12220) "L")
 (data $144.1 (i32.const 12232) "\02\00\00\00:\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00c\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00>\00 \000")
 (data $145 (i32.const 12300) "|")
 (data $145.1 (i32.const 12312) "\02\00\00\00h\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00n\00o\00 \00a\00c\00t\00i\00v\00e\00 \00r\00o\00u\00n\00d\00 \00\14  \00c\00a\00l\00l\00 \00c\00r\00e\00a\00t\00e\00R\00o\00u\00n\00d\00 \00f\00i\00r\00s\00t")
 (data $146 (i32.const 12428) "L")
 (data $146.1 (i32.const 12440) "\02\00\00\006\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00r\00o\00u\00n\00d\00 \00h\00a\00s\00 \00e\00n\00d\00e\00d")
 (data $147 (i32.const 12508) "|")
 (data $147.1 (i32.const 12520) "\02\00\00\00^\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00w\00i\00n\00n\00e\00r\00 \00a\00l\00r\00e\00a\00d\00y\00 \00d\00r\00a\00w\00n\00 \00f\00o\00r\00 \00t\00h\00i\00s\00 \00r\00o\00u\00n\00d")
 (data $148 (i32.const 12636) "<")
 (data $148.1 (i32.const 12648) "\02\00\00\00 \00\00\00D\00i\00v\00i\00s\00i\00o\00n\00 \00b\00y\00 \00z\00e\00r\00o")
 (data $149 (i32.const 12700) "\\")
 (data $149.1 (i32.const 12712) "\02\00\00\00B\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00m\00u\00l\00t\00i\00p\00l\00i\00c\00a\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $150 (i32.const 12796) "|")
 (data $150.1 (i32.const 12808) "\02\00\00\00l\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00t\00y\00p\00e\00s\00/\00S\00a\00f\00e\00M\00a\00t\00h\00.\00t\00s")
 (data $151 (i32.const 12924) "L")
 (data $151.1 (i32.const 12936) "\02\00\00\006\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00a\00d\00d\00i\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $152 (i32.const 13004) ",")
 (data $152.1 (i32.const 13016) "\02\00\00\00\18\00\00\00T\00i\00c\00k\00e\00t\00B\00o\00u\00g\00h\00t")
 (data $153 (i32.const 13052) "\\")
 (data $153.1 (i32.const 13064) "\02\00\00\00@\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00w\00i\00n\00n\00e\00r\00 \00a\00l\00r\00e\00a\00d\00y\00 \00d\00r\00a\00w\00n")
 (data $154 (i32.const 13148) "|")
 (data $154.1 (i32.const 13160) "\02\00\00\00d\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00w\00a\00i\00t\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \002\00 \00b\00l\00o\00c\00k\00s\00 \00a\00f\00t\00e\00r\00 \00r\00o\00u\00n\00d\00 \00e\00n\00d")
 (data $155 (i32.const 13276) "l")
 (data $155.1 (i32.const 13288) "\02\00\00\00Z\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00n\00o\00 \00t\00i\00c\00k\00e\00t\00s\00 \00s\00o\00l\00d\00 \00\14  \00r\00o\00u\00n\00d\00 \00c\00a\00n\00c\00e\00l\00l\00e\00d")
 (data $156 (i32.const 13388) "L")
 (data $156.1 (i32.const 13400) "\02\00\00\000\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00m\00o\00d\00u\00l\00o\00 \00b\00y\00 \00z\00e\00r\00o")
 (data $157 (i32.const 13468) ",")
 (data $157.1 (i32.const 13480) "\02\00\00\00\16\00\00\00W\00i\00n\00n\00e\00r\00D\00r\00a\00w\00n")
 (data $158 (i32.const 13516) "\\")
 (data $158.1 (i32.const 13528) "\02\00\00\00@\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00w\00i\00n\00n\00e\00r\00 \00n\00o\00t\00 \00d\00r\00a\00w\00n\00 \00y\00e\00t")
 (data $159 (i32.const 13612) "\\")
 (data $159.1 (i32.const 13624) "\02\00\00\00B\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00p\00r\00i\00z\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00c\00l\00a\00i\00m\00e\00d")
 (data $160 (i32.const 13708) "\\")
 (data $160.1 (i32.const 13720) "\02\00\00\00H\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00c\00a\00l\00l\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00t\00h\00e\00 \00w\00i\00n\00n\00e\00r")
 (data $161 (i32.const 13804) "L")
 (data $161.1 (i32.const 13816) "\02\00\00\004\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00d\00i\00v\00i\00s\00i\00o\00n\00 \00b\00y\00 \00z\00e\00r\00o")
 (data $162 (i32.const 13884) "\\")
 (data $162.1 (i32.const 13896) "\02\00\00\00>\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data $163 (i32.const 13980) ",")
 (data $163.1 (i32.const 13992) "\02\00\00\00\18\00\00\00P\00r\00i\00z\00e\00C\00l\00a\00i\00m\00e\00d")
 (data $164 (i32.const 14028) "\\")
 (data $164.1 (i32.const 14040) "\02\00\00\00>\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00r\00o\00u\00n\00d\00 \00n\00o\00t\00 \00d\00r\00a\00w\00n\00 \00y\00e\00t")
 (data $165 (i32.const 14124) "l")
 (data $165.1 (i32.const 14136) "\02\00\00\00X\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00w\00i\00n\00n\00e\00r\00 \00h\00a\00s\00 \00n\00o\00t\00 \00c\00l\00a\00i\00m\00e\00d\00 \00p\00r\00i\00z\00e\00 \00y\00e\00t")
 (data $166 (i32.const 14236) "\\")
 (data $166.1 (i32.const 14248) "\02\00\00\00B\00\00\00V\00i\00b\00e\00R\00a\00f\00f\00l\00e\00:\00 \00f\00e\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00w\00i\00t\00h\00d\00r\00a\00w\00n")
 (data $167 (i32.const 14332) ",")
 (data $167.1 (i32.const 14344) "\02\00\00\00\18\00\00\00F\00e\00e\00W\00i\00t\00h\00d\00r\00a\00w\00n")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:src/index~anonymous|0)
 (export "abort" (func $src/index/abort))
 (export "execute" (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/execute))
 (export "onDeploy" (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onDeploy))
 (export "onUpdate" (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onUpdate))
 (export "memory" (memory $0))
 (export "start" (func $~start))
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $3
  i32.add
  local.tee $4
  i32.eqz
  if
   i32.const 1120
   return
  end
  local.get $4
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  local.get $2
  memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  memory.copy
  local.get $4
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 10
   i32.ge_u
   i32.const 1
   i32.add
   local.get $0
   i32.const 10000
   i32.ge_u
   i32.const 3
   i32.add
   local.get $0
   i32.const 1000
   i32.ge_u
   i32.add
   local.get $0
   i32.const 100
   i32.lt_u
   select
  else
   local.get $0
   i32.const 1000000
   i32.ge_u
   i32.const 6
   i32.add
   local.get $0
   i32.const 1000000000
   i32.ge_u
   i32.const 8
   i32.add
   local.get $0
   i32.const 100000000
   i32.ge_u
   i32.add
   local.get $0
   i32.const 10000000
   i32.lt_u
   select
  end
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-loop|0
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-loop|0
  end
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1376
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $2
 )
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i32.const 1056
  local.get $0
  select
  local.set $0
  local.get $1
  if (result i32)
   local.get $0
   i32.const 1088
   local.get $1
   call $~lib/string/String#concat
   i32.const 1152
   call $~lib/string/String#concat
   local.get $2
   call $~lib/util/number/utoa32
   call $~lib/string/String#concat
   i32.const 1152
   call $~lib/string/String#concat
   local.get $3
   call $~lib/util/number/utoa32
   call $~lib/string/String#concat
   call $~lib/string/String#concat
  else
   local.get $0
  end
  i32.const 1504
  i32.const 2626
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  local.get $0
  i32.lt_u
  if
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1568
   i32.const 1632
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $0
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1568
   i32.const 1632
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i64.store
  local.get $2
  local.get $1
  i64.store offset=8
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2240
   i32.const 2288
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  local.get $1
  memory.fill
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1376
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  select
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  i32.const 1
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $3
  i32.add
  local.get $2
  local.get $0
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $3
  if
   local.get $1
   i32.const 45
   i32.store16
  end
  local.get $1
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>$18 (result i32)
   i32.const 1120
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 0
   i32.lt_s
   br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>$18
   drop
   local.get $3
   i32.eqz
   if
    local.get $0
    i32.load
    local.tee $0
    if (result i32)
     local.get $0
    else
     i32.const 1120
    end
    br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>$18
   end
   i32.const 1120
   local.set $0
   i32.const 1116
   i32.load
   i32.const 1
   i32.shr_u
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $5
     if
      local.get $0
      local.get $5
      call $~lib/string/String#concat
      local.set $0
     end
     local.get $4
     if
      local.get $0
      i32.const 1120
      call $~lib/string/String#concat
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    call $~lib/string/String#concat
   else
    local.get $0
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<u8>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load offset=12
  local.tee $2
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 2624
   i32.const 2688
   i32.const 1902
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $2
  memory.copy
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 6
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store8 offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $1
  if (result i32)
   local.get $1
   i32.load offset=12
  else
   i32.const 0
  end
  if
   local.get $1
   i32.load offset=12
   i32.const 32
   i32.ne
   if
    i32.const 2464
    i32.const 1
    local.get $1
    i32.load offset=12
    call $~lib/util/number/itoa32
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 2464
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2496
    i32.const 335
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/typedarray/Uint8Array#set<~lib/array/Array<u8>>
   local.get $0
   i32.const 1
   i32.store8 offset=12
  end
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $4
   memory.copy
  end
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  local.tee $3
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 2624
   i32.const 2688
   i32.const 1902
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $1
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2624
   i32.const 2688
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 24
  i32.const 14
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store offset=20
  local.get $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  local.set $1
  local.get $0
  i32.load offset=12
  i32.const 32
  i32.ne
  if
   i32.const 3808
   i32.const 3920
   i32.const 71
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  i32.store offset=20
  local.get $1
  i32.load offset=20
  local.get $0
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<u8>>
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2240
   i32.const 2288
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array.wrap@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   i32.const -1
   i32.ne
   if
    i32.const 2240
    i32.const 2688
    i32.const 1869
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.set $2
  else
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 2240
    i32.const 2688
    i32.const 1874
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 12
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 8
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2240
   i32.const 4064
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  local.tee $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  local.get $2
  memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2624
   i32.const 2688
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 1632
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  i32.const 4
  i32.sub
  local.tee $4
  i32.load
  local.tee $3
  local.get $0
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1568
     i32.const 1632
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $4
    local.get $2
    i32.store
   else
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $1
    local.get $0
    local.get $3
    memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $4
    local.get $2
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 2240
    i32.const 4064
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   i32.const 1073741820
   local.get $3
   i32.const 1
   i32.shl
   local.tee $5
   local.get $5
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $5
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   local.get $2
   i32.shl
   local.tee $1
   local.get $1
   local.get $5
   i32.lt_u
   select
   local.tee $1
   i32.const 1073741804
   i32.gt_u
   if
    i32.const 1568
    i32.const 1632
    i32.const 99
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   i32.const 16
   i32.sub
   local.get $1
   i32.const 16
   i32.add
   call $~lib/rt/stub/__realloc
   local.tee $2
   i32.const 4
   i32.sub
   local.get $1
   i32.store offset=16
   local.get $3
   local.get $2
   i32.const 16
   i32.add
   local.tee $2
   i32.add
   i32.const 0
   local.get $1
   local.get $3
   i32.sub
   memory.fill
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2624
    i32.const 4064
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#clone (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=20
  i32.load offset=8
  call $~lib/array/Array<u8>#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=20
   i32.load offset=8
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    i32.load offset=20
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/array/Array<u8>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.le_s
  select
  local.set $3
  i32.const 0
  local.get $1
  local.get $3
  i32.sub
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $3
  i32.add
  local.get $1
  memory.copy
  local.get $4
  i32.load offset=8
  call $~lib/array/Array<u8>#constructor
  local.set $3
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $4
   i32.load offset=8
   i32.lt_s
   if
    local.get $3
    local.get $1
    local.get $4
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/array/Array<u8>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  local.get $2
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  local.tee $1
  local.get $0
  i32.load8_u offset=12
  i32.store8 offset=12
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#constructor (result i32)
  (local $0 i32)
  i32.const 12
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 18
  i32.const 4112
  call $~lib/rt/__newArray
  i32.store
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 18
  i32.const 4144
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $0
  i32.const -1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  i32.const 32
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  i64.store
  local.get $4
  local.get $1
  i64.store offset=8
  local.get $4
  local.get $2
  i64.store offset=16
  local.get $4
  local.get $3
  i64.store offset=24
  local.get $4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=32
  i32.const 65535
  i32.eq
  if
   i32.const 5184
   i32.const 5264
   i32.const 189
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  i32.load16_u offset=32
  i32.const 1
  i32.add
  i32.store16 offset=32
  local.get $0
  i32.load16_u offset=32
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor (param $0 i64) (param $1 i64)
  (local $2 i32)
  i32.const 16
  i32.const 32
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i64.store
  local.get $2
  local.get $1
  i64.store offset=8
 )
 (func $start:~lib/@btc-vision/btc-runtime/runtime/index
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 14380
  global.set $~lib/rt/stub/offset
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
  drop
  i64.const 1
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
  drop
  i64.const -1
  i64.const -1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 8
  i32.const 2752
  call $~lib/rt/__newArray
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/types/Address/ZERO_ADDRESS
  i32.const 16
  i32.const 11
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.const 32
  i32.const 2
  i32.const 10
  i32.const 2784
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.const 32
  i32.const 2
  i32.const 10
  i32.const 2944
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  i32.const 32
  i32.const 2
  i32.const 10
  i32.const 3104
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 32
  i32.const 2
  i32.const 10
  i32.const 3264
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $4
  i32.store offset=12
  local.get $1
  global.set $~lib/@btc-vision/btc-runtime/runtime/script/Networks/Network
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER
  i32.const 0
  i32.const 30
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/math/bytes/ONE_BUFFER
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/ONE_BUFFER
  i32.const 31
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3760
  i32.const 3760
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  drop
  i32.const 3648
  i32.const 3760
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  drop
  i32.const 256
  call $~lib/arraybuffer/ArrayBuffer#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/SCRATCH_BUF
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/SCRATCH_BUF
  call $~lib/typedarray/Uint8Array.wrap@varargs
  drop
  i32.const 0
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  drop
  i32.const 52
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddressCache/_cachedDeadAddress
  local.tee $1
  i32.eqz
  if
   i32.const 3648
   i32.const 3760
   call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
   local.tee $1
   global.set $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddressCache/_cachedDeadAddress
  end
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#clone
  i32.store
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#constructor
  i32.store offset=4
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const -1
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store16 offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  global.set $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 2
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 3
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 10
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 4294967295
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const 1
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const -1
  i64.const -1
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const 0
  i64.const -9223372036854775808
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const -1
  i64.const 9223372036854775807
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  block $__inlined_func$start:~lib/@btc-vision/btc-runtime/runtime/secp256k1/ECPoint$34
   block $folding-inner0
    i32.const 5500
    i32.load
    i32.const 32
    i32.ne
    br_if $folding-inner0
    i32.const 5492
    i32.load
    local.tee $0
    i64.load
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    drop
    i32.const 5612
    i32.load
    i32.const 32
    i32.ne
    br_if $folding-inner0
    i32.const 5604
    i32.load
    local.tee $0
    i64.load
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    drop
    i32.const 5724
    i32.load
    i32.const 32
    i32.ne
    br_if $folding-inner0
    i32.const 5716
    i32.load
    local.tee $0
    i64.load
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    drop
    br $__inlined_func$start:~lib/@btc-vision/btc-runtime/runtime/secp256k1/ECPoint$34
   end
   i32.const 2240
   i32.const 5760
   i32.const 169
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.load offset=8
  i32.const 30
  i32.lt_s
  if
   i32.const 0
   i32.const 30
   call $~lib/typedarray/Uint8Array#constructor
   local.set $4
   loop $for-loop|0
    local.get $5
    local.get $1
    i32.load offset=8
    i32.lt_s
    if
     local.get $4
     local.get $5
     local.get $1
     local.get $5
     call $~lib/typedarray/Uint8Array#__get
     call $~lib/typedarray/Uint8Array#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   local.get $4
   local.set $1
  end
  local.get $2
  if
   local.get $1
   i32.load offset=8
   i32.const 30
   i32.ne
   if
    i32.const 7504
    i32.const 1
    local.get $1
    i32.load offset=8
    call $~lib/util/number/itoa32
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 7504
    i32.const 3
    local.get $3
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 7504
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 7552
    i32.const 101
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.const 0
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  call $~lib/typedarray/Uint8Array#__set
  local.get $2
  i32.const 1
  local.get $0
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  loop $for-loop|1
   local.get $6
   i32.const 30
   i32.lt_s
   if
    local.get $2
    local.get $6
    i32.const 2
    i32.add
    local.get $1
    local.get $6
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 35
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.store16 offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  i32.store offset=12
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.const 7264
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  i32.store
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#clone@override$126
   global.get $~lib/@btc-vision/btc-runtime/runtime/types/Address/ZERO_ADDRESS
   local.tee $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 14
   i32.eq
   if
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#clone
    local.set $1
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#clone@override$126
   end
   i32.const 0
   i32.const 0
   i32.const 0
   i32.const 8
   i32.const 7840
   call $~lib/rt/__newArray
   call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
   local.tee $1
   i32.load offset=4
   local.get $0
   i32.load offset=4
   i32.const 32
   memory.copy
   local.get $1
   local.get $0
   i32.load8_u offset=12
   i32.store8 offset=12
  end
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 12
  i32.const 38
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store16 offset=4
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  i32.store offset=8
  local.get $1
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  i32.const 1
  i32.const 7792
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  i32.store
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 12
  i32.const 39
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store16 offset=4
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  i32.const 1
  i32.const 7872
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  i32.store
  local.get $1
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  i32.store offset=8
  local.get $1
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 64
  i32.const 34
  call $~lib/rt/stub/__new
  local.tee $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=4
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=6
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=8
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=10
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=12
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=14
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=16
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=18
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=20
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.store16 offset=22
  local.get $0
  local.get $0
  i32.load16_u offset=4
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=24
  local.get $0
  i32.load16_u offset=6
  local.set $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  local.set $2
  i32.const 16
  i32.const 36
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $1
  i32.store16 offset=10
  local.get $3
  local.get $2
  i32.store offset=12
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 4
  i32.const 3
  i32.const 37
  i32.const 7728
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store8 offset=8
  local.get $3
  i32.const 0
  i32.store8 offset=9
  local.get $3
  local.get $1
  local.get $2
  i32.const 1
  i32.const 7680
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  i32.store
  local.get $0
  local.get $3
  i32.store offset=28
  local.get $0
  local.get $0
  i32.load16_u offset=8
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=32
  local.get $0
  local.get $0
  i32.load16_u offset=10
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=36
  local.get $0
  local.get $0
  i32.load16_u offset=12
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#constructor
  i32.store offset=40
  local.get $0
  local.get $0
  i32.load16_u offset=14
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#constructor
  i32.store offset=44
  local.get $0
  local.get $0
  i32.load16_u offset=16
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#constructor
  i32.store offset=48
  local.get $0
  local.get $0
  i32.load16_u offset=18
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#constructor
  i32.store offset=52
  local.get $0
  local.get $0
  i32.load16_u offset=20
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#constructor
  i32.store offset=56
  local.get $0
  i32.load16_u offset=22
  local.set $1
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  i32.const 30
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  i32.const 8
  i32.const 40
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store16
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store16
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=60
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 19
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 22
  i32.const 7232
  call $~lib/rt/__newArray
  i32.store
  local.get $0
 )
 (func $start:src/index~anonymous|0 (result i32)
  call $src/contracts/VibeRaffle/VibeRaffle#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#createContractIfNotExists (param $0 i32)
  local.get $0
  i32.load offset=28
  i32.eqz
  if
   i32.const 7952
   i32.const 5264
   i32.const 1324
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.eqz
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   local.get $0
   i32.load offset=28
   i32.load
   call_indirect $0 (type $5)
   i32.store offset=12
  end
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $0
      i32.const 2
      i32.add
      local.get $2
      i32.lt_u
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 56320
      i32.lt_u
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.and
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $4
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $outOfRange
    global.get $~argumentsLength
    i32.const 1
    i32.sub
    br_table $2of2 $2of2 $2of2 $outOfRange
   end
   unreachable
  end
  local.get $0
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $1
  call $~lib/string/String.UTF8.encodeUnsafe
  local.get $1
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $2
  end
  i32.const 12
  i32.const 42
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.gt_u
  local.get $2
  i32.const 1073741820
  i32.gt_u
  i32.or
  if
   i32.const 2240
   i32.const 8208
   i32.const 25
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
 )
 (func $~lib/polyfills/bswap<u32> (param $0 i32) (result i32)
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
 )
 (func $~lib/dataview/DataView#setUint32 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load offset=8
  local.get $1
  i32.const 4
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2624
   i32.const 8208
   i32.const 142
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  call $~lib/polyfills/bswap<u32>
  i32.store
 )
 (func $~lib/dataview/DataView#setUint8 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2624
   i32.const 8208
   i32.const 128
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/util/number/utoa32
  local.set $2
  local.get $3
  call $~lib/util/number/utoa32
  local.set $3
  i32.const 8048
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 8048
  i32.const 2
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 8048
  i32.const 4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 8048
  i32.const 6
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 8048
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  i32.const 1
  global.set $~argumentsLength
  call $~lib/string/String.UTF8.encode@varargs
  i32.const 1
  global.set $~argumentsLength
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.tee $0
  i32.load offset=8
  i32.const 8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  call $~lib/dataview/DataView#constructor@varargs
  local.tee $2
  i32.const 0
  i32.const 1668521308
  call $~lib/dataview/DataView#setUint32
  local.get $2
  i32.const 4
  local.get $0
  i32.load offset=8
  call $~lib/dataview/DataView#setUint32
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.const 8
    i32.add
    local.get $0
    local.get $4
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/dataview/DataView#setUint8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 1
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit
 )
 (func $src/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 43
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.load
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  call $~lib/dataview/DataView#constructor@varargs
  i32.store
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd (param $0 i32) (param $1 i32)
  local.get $1
  local.get $0
  i32.load
  i32.load offset=8
  i32.gt_s
  if
   i32.const 8448
   i32.const 1
   local.get $1
   call $~lib/util/number/itoa32
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 8448
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 8592
   i32.const 1
   local.get $0
   i32.load
   i32.load offset=8
   call $~lib/util/number/itoa32
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 8592
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   call $~lib/string/String#concat
   i32.const 8624
   i32.const 442
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2624
   i32.const 8208
   i32.const 72
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.load offset=4
  i32.add
  i32.load8_u
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   i32.const 32
   i32.lt_u
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/polyfills/bswap<u64> (param $0 i64) (result i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $0
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $0
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64 (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  local.get $1
  i32.const 8
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2624
   i32.const 8208
   i32.const 159
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.load offset=4
  i32.add
  i64.load
  call $~lib/polyfills/bswap<u64>
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  i32.store offset=4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 8
  i32.const 8768
  call $~lib/rt/__newArray
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  local.set $1
  loop $for-loop|0
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    local.set $3
    local.get $1
    i32.load8_u offset=12
    if
     i32.const 8800
     i32.const 2496
     i32.const 378
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    i32.load offset=8
    i32.ge_u
    if
     i32.const 2624
     i32.const 2496
     i32.const 382
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    i32.load offset=4
    i32.add
    local.get $3
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   return
  end
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.ne
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  local.tee $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $1
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $3
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $4
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $14
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $5
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $6
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $7
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $12
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $13
  loop $for-loop|0
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $13
    local.get $2
    local.get $11
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $8
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $9
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $15
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $15
    local.get $2
    local.get $11
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $11
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $10
  local.get $15
  local.get $13
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  local.set $2
  i32.const 32
  i32.const 25
  call $~lib/rt/stub/__new
  local.tee $11
  local.get $14
  i32.store offset=16
  local.get $11
  local.get $5
  i32.store offset=20
  local.get $11
  i32.const 0
  i32.store
  local.get $11
  i32.const 0
  i32.store offset=4
  local.get $11
  i32.const 0
  i32.store offset=8
  local.get $11
  i32.const 0
  i32.const 27
  call $~lib/rt/stub/__new
  local.tee $5
  if (result i32)
   local.get $5
  else
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
  end
  i32.store offset=12
  local.get $11
  i32.const 0
  i32.store offset=24
  local.get $11
  i32.const 0
  i32.store offset=28
  local.get $11
  local.get $12
  i32.store offset=4
  local.get $11
  local.get $2
  i32.store offset=8
  i32.const 8
  i32.const 26
  call $~lib/rt/stub/__new
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $10
  i64.store
  local.get $11
  local.get $2
  i32.store
  local.get $0
  local.get $11
  i32.store offset=24
  local.get $0
  local.get $7
  i32.store offset=36
  local.get $0
  local.get $6
  i32.store offset=40
  local.get $0
  local.get $8
  i32.store offset=44
  local.get $0
  local.get $9
  i32.store offset=48
  global.get $~lib/@btc-vision/btc-runtime/runtime/script/Networks/Network
  local.set $5
  local.get $0
  i32.load offset=44
  i32.eqz
  if
   i32.const 8880
   i32.const 5264
   i32.const 249
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=44
  local.tee $6
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 251
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 9072
   i32.const 9152
   i32.const 89
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $2
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$835
   local.get $6
   local.get $5
   i32.load
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$835
   i32.const 1
   local.set $2
   local.get $6
   local.get $5
   i32.load offset=4
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$835
   i32.const 2
   local.set $2
   local.get $6
   local.get $5
   i32.load offset=12
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$835
   i32.const 3
   local.set $2
   local.get $6
   local.get $5
   i32.load offset=8
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$835
   i32.const 9296
   i32.const 9152
   i32.const 97
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.store offset=16
  i32.const 24
  i32.const 23
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $3
  i64.store offset=8
  local.get $2
  local.get $4
  i64.store offset=16
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.0 (result i32)
   local.get $3
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.0
   end
   local.get $3
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.0
   end
   local.get $3
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  i32.store
  local.get $0
  local.get $2
  i32.store offset=20
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#createContractIfNotExists
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  local.get $1
  i32.const 4
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2624
   i32.const 8208
   i32.const 87
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.load offset=4
  i32.add
  i32.load
  call $~lib/polyfills/bswap<u32>
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  i32.store offset=4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 158
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2624
   i32.const 4064
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 9360
   i32.const 4064
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
  local.tee $0
  i32.const 8
  i32.sub
  i32.load
  drop
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $1
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/_sha256
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 12
  i32.const 44
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.store offset=8
  local.get $0
  i32.load
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  call $~lib/dataview/DataView#constructor@varargs
  i32.store offset=4
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contractDeployer (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
  i32.eqz
  if
   i32.const 9776
   i32.const 5264
   i32.const 208
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=36
  local.tee $0
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 210
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.const -1
  local.get $0
  i32.load
  i32.sub
  i32.gt_u
  if
   i32.const 10160
   i32.const 10016
   i32.const 480
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.tee $2
  local.get $1
  local.get $0
  i32.load
  i32.add
  local.tee $1
  i32.lt_u
  if
   i32.const 10480
   i32.const 1
   local.get $1
   local.get $2
   i32.sub
   local.get $2
   i32.add
   call $~lib/util/number/itoa32
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 10240
   i32.const 10480
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   call $~lib/string/String#concat
   i32.const 10512
   local.get $0
   i32.load offset=4
   i32.load offset=8
   call $~lib/util/number/itoa32
   call $~lib/string/String#concat
   call $~lib/string/String#concat
   i32.const 10016
   i32.const 505
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8 (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  call $~lib/dataview/DataView#setUint8
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.load offset=8
   i32.lt_s
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress (param $0 i32) (param $1 i32)
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.gt_s
  if
   local.get $1
   i32.load offset=8
   call $~lib/util/number/itoa32
   local.set $0
   i32.const 32
   call $~lib/util/number/itoa32
   local.set $1
   i32.const 9968
   i32.const 1
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 9968
   i32.const 3
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 9968
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 10016
   i32.const 492
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 9488
  call $~lib/string/String.UTF8.encode@varargs
  i32.const 1
  global.set $~argumentsLength
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  local.tee $4
  i32.load offset=8
  i32.const 4
  i32.lt_s
  if
   i32.const 9536
   i32.const 9648
   i32.const 12
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $4
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 24
  i32.shl
  local.get $4
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 16
  i32.shl
  i32.or
  local.get $4
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.shl
  i32.or
  local.get $4
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.or
  i32.eq
  if
   i32.const 32
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
   local.tee $0
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contractDeployer
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
   local.get $0
   return
  end
  local.get $2
  i32.load offset=4
  local.set $4
  loop $for-loop|1
   local.get $3
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $3
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    i32.const 8
    i32.sub
    i32.load
    drop
    local.get $2
    local.get $4
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
    local.get $2
    local.get $4
    i32.store offset=4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  i32.const 10560
  local.get $1
  call $~lib/util/number/utoa32
  call $~lib/string/String#concat
  i32.const 10624
  i32.const 92
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/execute (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 512
  i32.const 512
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables
  i32.const 0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  local.set $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute@override$264 (result i32)
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
   local.tee $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 34
   i32.eq
   if
    block $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782 (result i32)
     local.get $2
     i32.const -1045634257
     i32.eq
     if
      call $src/contracts/VibeRaffle/VibeRaffle#onlyOwner
      local.get $0
      local.get $1
      call $src/contracts/VibeRaffle/VibeRaffle#createRound
      br $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782
     end
     local.get $2
     i32.const 340396325
     i32.eq
     if
      local.get $0
      local.get $1
      call $src/contracts/VibeRaffle/VibeRaffle#buyTickets
      br $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782
     end
     local.get $2
     i32.const -1503005470
     i32.eq
     if
      local.get $0
      call $src/contracts/VibeRaffle/VibeRaffle#drawWinner
      br $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782
     end
     local.get $2
     i32.const 1677237732
     i32.eq
     if
      local.get $0
      call $src/contracts/VibeRaffle/VibeRaffle#claimPrize
      br $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782
     end
     local.get $2
     i32.const 393288068
     i32.eq
     if
      call $src/contracts/VibeRaffle/VibeRaffle#onlyOwner
      local.get $0
      call $src/contracts/VibeRaffle/VibeRaffle#withdrawFee
      br $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782
     end
     local.get $2
     i32.const 1439374585
     i32.eq
     if
      local.get $0
      call $src/contracts/VibeRaffle/VibeRaffle#getRoundInfo
      br $__inlined_func$src/contracts/VibeRaffle/VibeRaffle#execute$782
     end
     local.get $0
     local.get $2
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute
    end
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute@override$264
   end
   local.get $0
   local.get $2
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  i32.load offset=8
  i32.load
  local.tee $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.tee $1
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   local.get $0
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit
  end
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment (param $0 i32)
  (local $1 i32)
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $1
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onDeploy (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 512
  i32.const 512
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables
  i32.const 0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment@override$269
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
   local.tee $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 34
   i32.eq
   if
    local.get $0
    i32.load offset=56
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.tee $2
    i32.load offset=24
    i32.eqz
    if
     i32.const 10768
     i32.const 5264
     i32.const 145
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.load offset=24
    local.tee $2
    i32.eqz
    if
     i32.const 8944
     i32.const 5264
     i32.const 147
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.load offset=8
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#set:value
    local.get $0
    i32.load offset=28
    local.tee $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
    local.get $1
    i32.load offset=4
    i32.const 1
    call $~lib/array/Array<u64>#__get
    i64.const 5
    i64.ne
    if
     local.get $1
     i32.load offset=4
     i32.const 1
     i64.const 5
     call $~lib/array/Array<u64>#__set
     local.get $1
     i32.const 1
     i32.store8 offset=9
    end
    local.get $0
    i32.load offset=28
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#save
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment@override$269
   end
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onUpdate (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 512
  i32.const 512
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables
  i32.const 0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2624
   i32.const 2496
   i32.const 357
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   return
  end
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get
    local.get $1
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get
    i32.ne
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#onlyOwner
  (local $0 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $0
  i32.load offset=24
  i32.eqz
  if
   i32.const 10768
   i32.const 5264
   i32.const 145
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=24
  local.tee $0
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 147
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contractDeployer
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  i32.eqz
  if
   i32.const 10848
   i32.const 10624
   i32.const 132
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#isLastIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   local.tee $2
   i32.load offset=8
   local.get $1
   i32.load offset=8
   i32.eq
   if
    local.get $1
    i32.load offset=8
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $3
    i32.const 0
    local.set $1
    block $~lib/util/memory/memcmp|inlined.0
     local.get $3
     local.get $2
     i32.load offset=4
     local.tee $2
     i32.eq
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $2
     i32.const 7
     i32.and
     local.get $3
     i32.const 7
     i32.and
     i32.eq
     if
      loop $while-continue|0
       local.get $2
       i32.const 7
       i32.and
       if
        i32.const 0
        local.set $1
        local.get $0
        i32.eqz
        br_if $~lib/util/memory/memcmp|inlined.0
        local.get $2
        i32.load8_u
        local.tee $4
        local.get $3
        i32.load8_u
        local.tee $5
        i32.sub
        local.set $1
        local.get $4
        local.get $5
        i32.ne
        br_if $~lib/util/memory/memcmp|inlined.0
        local.get $0
        i32.const 1
        i32.sub
        local.set $0
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $while-continue|0
       end
      end
      loop $while-continue|1
       local.get $0
       i32.const 8
       i32.ge_u
       if
        local.get $2
        i64.load
        local.get $3
        i64.load
        i64.eq
        if
         local.get $2
         i32.const 8
         i32.add
         local.set $2
         local.get $3
         i32.const 8
         i32.add
         local.set $3
         local.get $0
         i32.const 8
         i32.sub
         local.set $0
         br $while-continue|1
        end
       end
      end
     end
     loop $while-continue|2
      local.get $0
      local.tee $1
      i32.const 1
      i32.sub
      local.set $0
      local.get $1
      if
       local.get $2
       i32.load8_u
       local.tee $4
       local.get $3
       i32.load8_u
       local.tee $5
       i32.sub
       local.set $1
       local.get $4
       local.get $5
       i32.ne
       br_if $~lib/util/memory/memcmp|inlined.0
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|2
      end
     end
     i32.const 0
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     i32.const 1
     return
    end
   end
  end
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#isLastIndex
  if
   local.get $0
   i32.load offset=8
   return
  end
  local.get $0
  i32.load
  i32.load offset=12
  local.tee $2
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=8
  local.tee $3
  i32.const 8
  i32.ge_s
  if
   local.get $4
   i64.load
   local.set $10
   local.get $2
   i32.const 1
   i32.sub
   local.set $9
   loop $for-loop|0
    local.get $9
    i32.const 0
    i32.ge_s
    if
     block $for-continue|0
      local.get $0
      i32.load
      local.get $9
      call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
      local.tee $2
      i32.load offset=8
      local.get $3
      i32.ne
      br_if $for-continue|0
      local.get $2
      i32.load offset=4
      i64.load
      local.get $10
      i64.ne
      br_if $for-continue|0
      local.get $3
      local.set $1
      i32.const 0
      local.set $8
      block $~lib/util/memory/memcmp|inlined.1
       local.get $2
       i32.load offset=4
       local.tee $7
       local.get $4
       local.tee $2
       i32.eq
       br_if $~lib/util/memory/memcmp|inlined.1
       local.get $7
       i32.const 7
       i32.and
       local.get $2
       i32.const 7
       i32.and
       i32.eq
       if
        loop $while-continue|1
         local.get $7
         i32.const 7
         i32.and
         if
          i32.const 0
          local.set $8
          local.get $1
          i32.eqz
          br_if $~lib/util/memory/memcmp|inlined.1
          local.get $7
          i32.load8_u
          local.tee $6
          local.get $2
          i32.load8_u
          local.tee $5
          i32.sub
          local.set $8
          local.get $5
          local.get $6
          i32.ne
          br_if $~lib/util/memory/memcmp|inlined.1
          local.get $1
          i32.const 1
          i32.sub
          local.set $1
          local.get $7
          i32.const 1
          i32.add
          local.set $7
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|1
         end
        end
        loop $while-continue|2
         local.get $1
         i32.const 8
         i32.ge_u
         if
          local.get $7
          i64.load
          local.get $2
          i64.load
          i64.eq
          if
           local.get $7
           i32.const 8
           i32.add
           local.set $7
           local.get $2
           i32.const 8
           i32.add
           local.set $2
           local.get $1
           i32.const 8
           i32.sub
           local.set $1
           br $while-continue|2
          end
         end
        end
       end
       loop $while-continue|3
        local.get $1
        local.tee $5
        i32.const 1
        i32.sub
        local.set $1
        local.get $5
        if
         local.get $7
         i32.load8_u
         local.tee $6
         local.get $2
         i32.load8_u
         local.tee $5
         i32.sub
         local.set $8
         local.get $5
         local.get $6
         i32.ne
         br_if $~lib/util/memory/memcmp|inlined.1
         local.get $7
         i32.const 1
         i32.add
         local.set $7
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $while-continue|3
        end
       end
       i32.const 0
       local.set $8
      end
      local.get $8
      i32.eqz
      if
       local.get $0
       local.get $9
       i32.store offset=8
       local.get $9
       return
      end
     end
     local.get $9
     i32.const 1
     i32.sub
     local.set $9
     br $for-loop|0
    end
   end
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $9
   loop $for-loop|4
    local.get $9
    i32.const 0
    i32.ge_s
    if
     local.get $3
     local.get $0
     i32.load
     local.get $9
     call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
     local.tee $2
     i32.load offset=8
     i32.eq
     if
      local.get $3
      local.set $1
      i32.const 0
      local.set $8
      block $~lib/util/memory/memcmp|inlined.2
       local.get $2
       i32.load offset=4
       local.tee $7
       local.get $4
       local.tee $2
       i32.eq
       br_if $~lib/util/memory/memcmp|inlined.2
       local.get $7
       i32.const 7
       i32.and
       local.get $2
       i32.const 7
       i32.and
       i32.eq
       if
        loop $while-continue|5
         local.get $7
         i32.const 7
         i32.and
         if
          i32.const 0
          local.set $8
          local.get $1
          i32.eqz
          br_if $~lib/util/memory/memcmp|inlined.2
          local.get $7
          i32.load8_u
          local.tee $6
          local.get $2
          i32.load8_u
          local.tee $5
          i32.sub
          local.set $8
          local.get $5
          local.get $6
          i32.ne
          br_if $~lib/util/memory/memcmp|inlined.2
          local.get $1
          i32.const 1
          i32.sub
          local.set $1
          local.get $7
          i32.const 1
          i32.add
          local.set $7
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|5
         end
        end
        loop $while-continue|6
         local.get $1
         i32.const 8
         i32.ge_u
         if
          local.get $7
          i64.load
          local.get $2
          i64.load
          i64.eq
          if
           local.get $7
           i32.const 8
           i32.add
           local.set $7
           local.get $2
           i32.const 8
           i32.add
           local.set $2
           local.get $1
           i32.const 8
           i32.sub
           local.set $1
           br $while-continue|6
          end
         end
        end
       end
       loop $while-continue|7
        local.get $1
        local.tee $5
        i32.const 1
        i32.sub
        local.set $1
        local.get $5
        if
         local.get $7
         i32.load8_u
         local.tee $6
         local.get $2
         i32.load8_u
         local.tee $5
         i32.sub
         local.set $8
         local.get $5
         local.get $6
         i32.ne
         br_if $~lib/util/memory/memcmp|inlined.2
         local.get $7
         i32.const 1
         i32.add
         local.set $7
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $while-continue|7
        end
       end
       i32.const 0
       local.set $8
      end
      local.get $8
      i32.eqz
      if
       local.get $0
       local.get $9
       i32.store offset=8
       local.get $9
       return
      end
     end
     local.get $9
     i32.const 1
     i32.sub
     local.set $9
     br $for-loop|4
    end
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
  local.tee $3
  i32.const -1
  i32.eq
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
   local.get $0
   i32.load offset=4
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
   local.get $0
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.store offset=8
  else
   local.get $3
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.load offset=12
   i32.ge_u
   if
    local.get $3
    i32.const 0
    i32.lt_s
    if
     i32.const 2624
     i32.const 4064
     i32.const 130
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $3
    i32.const 1
    i32.add
    local.tee $1
    i32.const 2
    call $~lib/array/ensureCapacity
    local.get $4
    local.get $1
    i32.store offset=12
   end
   local.get $4
   i32.load offset=4
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 11296
   i32.const 5264
   i32.const 1334
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $2
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 32
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.load offset=4
   local.get $2
   i32.load offset=4
   local.get $2
   i32.load offset=8
   i32.const 32
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load offset=8
   else
    i32.const 32
   end
   memory.copy
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#set
  local.get $1
  i32.load
  local.get $3
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/storePointer
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  local.get $0
  i32.load offset=12
  local.set $1
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.load offset=4
  local.tee $0
  local.get $1
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $0
  local.get $1
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $0
  local.get $1
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $0
  local.get $1
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#hasPointerStorageHash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 32
  i32.ne
  if
   i32.const 11296
   i32.const 5264
   i32.const 1361
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
  i32.const -1
  i32.ne
  if
   return
  end
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/loadPointer
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.set $2
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#set
  local.get $2
  i32.load offset=8
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER
  local.tee $1
  i32.load offset=8
  i32.eq
  if
   local.get $2
   i32.load offset=8
   local.set $0
   block $~lib/util/memory/memcmp|inlined.3
    local.get $2
    i32.load offset=4
    local.tee $2
    local.get $1
    i32.load offset=4
    local.tee $3
    i32.eq
    br_if $~lib/util/memory/memcmp|inlined.3
    local.get $2
    i32.const 7
    i32.and
    local.get $3
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $2
      i32.const 7
      i32.and
      if
       local.get $0
       i32.eqz
       br_if $~lib/util/memory/memcmp|inlined.3
       local.get $3
       i32.load8_u
       local.get $2
       i32.load8_u
       i32.ne
       br_if $~lib/util/memory/memcmp|inlined.3
       local.get $0
       i32.const 1
       i32.sub
       local.set $0
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $0
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i64.load
       local.get $3
       i64.load
       i64.eq
       if
        local.get $2
        i32.const 8
        i32.add
        local.set $2
        local.get $3
        i32.const 8
        i32.add
        local.set $3
        local.get $0
        i32.const 8
        i32.sub
        local.set $0
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $0
     local.tee $1
     i32.const 1
     i32.sub
     local.set $0
     local.get $1
     if
      local.get $3
      i32.load8_u
      local.get $2
      i32.load8_u
      i32.ne
      br_if $~lib/util/memory/memcmp|inlined.3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|2
     end
    end
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#hasPointerStorageHash
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load offset=4
   local.tee $0
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
   local.tee $1
   i32.const -1
   i32.eq
   if
    i32.const 11632
    i32.const 11728
    i32.const 118
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   return
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2624
    i32.const 4064
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 3
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load8_u offset=8
  i32.eqz
  if
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.get $0
   i32.load
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
   local.set $1
   local.get $0
   i32.load offset=4
   i32.const 0
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
   call $~lib/array/Array<u64>#__set
   local.get $0
   i32.load offset=4
   i32.const 1
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
   call $~lib/array/Array<u64>#__set
   local.get $0
   i32.load offset=4
   i32.const 2
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
   call $~lib/array/Array<u64>#__set
   local.get $0
   i32.load offset=4
   i32.const 3
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
   call $~lib/array/Array<u64>#__set
   local.get $0
   i32.const 1
   i32.store8 offset=8
  end
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2624
   i32.const 4064
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $0
  i32.load
  local.tee $2
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.load offset=8
  local.get $2
  i32.const 8
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2624
   i32.const 8208
   i32.const 174
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  i32.load offset=4
  i32.add
  local.get $1
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $0
  local.get $0
  i32.load
  i32.const 8
  i32.add
  i32.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#save (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load8_u offset=9
  if
   i32.const 32
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
   local.tee $1
   local.get $0
   i32.load offset=4
   i32.const 0
   call $~lib/array/Array<u64>#__get
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
   local.get $1
   local.get $0
   i32.load offset=4
   i32.const 1
   call $~lib/array/Array<u64>#__get
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
   local.get $1
   local.get $0
   i32.load offset=4
   i32.const 2
   call $~lib/array/Array<u64>#__get
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
   local.get $1
   local.get $0
   i32.load offset=4
   i32.const 3
   call $~lib/array/Array<u64>#__get
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.get $0
   i32.load
   local.get $1
   i32.load offset=8
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
   local.get $0
   i32.const 0
   i32.store8 offset=9
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#get:value (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $1
  i32.load offset=8
  local.tee $3
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.load offset=8
  i32.gt_s
  if
   i32.const 2624
   i32.const 2688
   i32.const 1902
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $3
  memory.copy
  local.get $0
  i32.load offset=8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#set:value (param $0 i32) (param $1 i32)
  local.get $1
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   return
  end
  local.get $0
  local.get $1
  i32.store offset=8
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=8
  i32.const 0
  local.get $1
  i32.eqz
  i32.eqz
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.tee $2
  local.get $1
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $2
  local.get $1
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $2
  local.get $1
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $2
  local.get $1
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 32
   i32.lt_s
   if
    local.get $0
    local.get $3
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 45
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store
  local.get $2
  i32.load offset=4
  i32.load offset=8
  i32.const 352
  i32.gt_u
  if
   i32.const 11872
   i32.const 11984
   i32.const 14
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.load offset=8
  i32.store
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 12176
   i32.const 11984
   i32.const 22
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.load offset=8
  i32.const 352
  i32.gt_u
  if
   i32.const 11872
   i32.const 10624
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 12176
   i32.const 11984
   i32.const 30
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $6
  call $~lib/string/String.UTF8.byteLength
  local.set $5
  i32.const 0
  local.get $1
  i32.load offset=8
  local.get $5
  i32.const 8
  i32.add
  i32.add
  local.tee $2
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.tee $0
  local.get $5
  call $~lib/polyfills/bswap<u32>
  i32.store
  local.get $6
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $4
  i32.const 3
  global.set $~argumentsLength
  local.get $6
  local.get $4
  local.get $0
  i32.const 4
  i32.add
  call $~lib/string/String.UTF8.encodeUnsafe
  local.get $5
  i32.const 4
  i32.add
  local.get $0
  i32.add
  local.tee $0
  local.get $1
  i32.load offset=8
  call $~lib/polyfills/bswap<u32>
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  memory.copy
  local.get $3
  i32.load
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/emit
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#createRound (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 32
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $4
  loop $for-loop|0
   local.get $3
   i32.const 32
   i32.lt_s
   if
    local.get $4
    local.get $3
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $4
  i32.load offset=12
  i32.const 32
  i32.ne
  if
   i32.const 2240
   i32.const 5760
   i32.const 186
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  local.tee $3
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $3
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $3
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $3
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $2
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $1
  local.get $3
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $3
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  if
   i32.const 10944
   i32.const 11056
   i32.const 165
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.eqz
  if
   i32.const 11136
   i32.const 11056
   i32.const 168
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $1
  i32.load offset=20
  i32.eqz
  if
   i32.const 11232
   i32.const 5264
   i32.const 118
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.tee $1
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 120
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i64.load offset=8
  i64.add
  local.set $2
  local.get $0
  i32.load offset=24
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=28
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
  local.get $1
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<u64>#__get
  local.get $2
  i64.ne
  if
   local.get $1
   i32.load offset=4
   i32.const 0
   local.get $2
   call $~lib/array/Array<u64>#__set
   local.get $1
   i32.const 1
   i32.store8 offset=9
  end
  local.get $0
  i32.load offset=28
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#save
  local.get $0
  i32.load offset=32
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=36
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=40
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#set:value
  local.get $0
  i32.load offset=44
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
  local.get $0
  i32.load offset=48
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
  local.get $0
  i32.load offset=52
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
  i32.const 12
  i32.const 46
  call $~lib/rt/stub/__new
  i32.const 40
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $1
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
  i32.const 12128
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2240
   i32.const 5760
   i32.const 220
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=4
  local.tee $1
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $1
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $1
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $1
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  i32.store offset=12
  local.get $0
  i32.load offset=12
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.shl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  i32.const 0
  i32.le_s
  if
   local.get $1
   if (result i32)
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   else
    local.get $0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
   end
   return
  end
  local.get $1
  i32.const 256
  i32.ge_s
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $1
  i32.const 255
  i32.and
  local.tee $8
  i32.const 6
  i32.shr_u
  local.set $1
  i32.const 64
  local.get $8
  i32.const 63
  i32.and
  local.tee $8
  i32.sub
  local.set $9
  local.get $0
  i64.load
  local.set $10
  local.get $0
  i64.load offset=8
  local.set $2
  local.get $0
  i64.load offset=16
  local.set $3
  local.get $0
  i64.load offset=24
  local.set $6
  local.get $1
  if (result i64)
   local.get $1
   i32.const 1
   i32.eq
   if (result i64)
    local.get $10
    local.get $8
    i64.extend_i32_s
    i64.shl
    local.set $5
    local.get $2
    local.get $8
    i64.extend_i32_s
    i64.shl
    local.get $10
    local.get $9
    i64.extend_i32_s
    i64.shr_u
    i64.const 0
    local.get $8
    select
    i64.or
    local.set $4
    local.get $3
    local.get $8
    i64.extend_i32_s
    i64.shl
    local.get $2
    local.get $9
    i64.extend_i32_s
    i64.shr_u
    i64.const 0
    local.get $8
    select
    i64.or
   else
    local.get $1
    i32.const 2
    i32.eq
    if (result i64)
     local.get $10
     local.get $8
     i64.extend_i32_s
     i64.shl
     local.set $4
     local.get $2
     local.get $8
     i64.extend_i32_s
     i64.shl
     local.get $10
     local.get $9
     i64.extend_i32_s
     i64.shr_u
     i64.const 0
     local.get $8
     select
     i64.or
    else
     local.get $10
     local.get $8
     i64.extend_i32_s
     i64.shl
     i64.const 0
     local.get $1
     i32.const 3
     i32.eq
     select
    end
   end
  else
   local.get $10
   local.get $8
   i64.extend_i32_s
   i64.shl
   local.set $7
   local.get $2
   local.get $8
   i64.extend_i32_s
   i64.shl
   local.get $10
   local.get $9
   i64.extend_i32_s
   i64.shr_u
   i64.const 0
   local.get $8
   select
   i64.or
   local.set $5
   local.get $3
   local.get $8
   i64.extend_i32_s
   i64.shl
   local.get $2
   local.get $9
   i64.extend_i32_s
   i64.shr_u
   i64.const 0
   local.get $8
   select
   i64.or
   local.set $4
   local.get $6
   local.get $8
   i64.extend_i32_s
   i64.shl
   local.get $3
   local.get $9
   i64.extend_i32_s
   i64.shr_u
   i64.const 0
   local.get $8
   select
   i64.or
  end
  local.set $2
  local.get $7
  local.get $5
  local.get $4
  local.get $2
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load
  local.tee $3
  local.get $1
  i64.load
  i64.add
  local.set $2
  local.get $2
  local.get $3
  i64.lt_u
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $0
  i64.load offset=8
  local.tee $3
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  i64.add
  local.tee $4
  local.get $1
  i64.load offset=8
  i64.add
  local.set $5
  local.get $3
  local.get $4
  i64.gt_u
  local.get $4
  local.get $5
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $0
  i64.load offset=16
  local.tee $3
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  i64.add
  local.tee $4
  local.get $1
  i64.load offset=16
  i64.add
  local.set $6
  local.get $3
  local.get $4
  i64.gt_u
  local.get $4
  local.get $6
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $0
  i64.load offset=24
  local.tee $4
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  i64.add
  local.tee $3
  local.get $1
  i64.load offset=24
  i64.add
  local.set $7
  local.get $3
  local.get $4
  i64.lt_u
  local.get $3
  local.get $7
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $2
  local.get $5
  local.get $6
  local.get $7
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/globals/__mul256 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64) (result i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $8
  i32.const 4
  i32.const 3
  i32.const 37
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $10
  i32.const 0
  local.get $0
  call $~lib/array/Array<u64>#__set
  local.get $10
  i32.const 1
  local.get $1
  call $~lib/array/Array<u64>#__set
  local.get $10
  i32.const 2
  local.get $2
  call $~lib/array/Array<u64>#__set
  local.get $10
  i32.const 3
  local.get $3
  call $~lib/array/Array<u64>#__set
  i32.const 4
  i32.const 3
  i32.const 37
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $11
  i32.const 0
  local.get $4
  call $~lib/array/Array<u64>#__set
  local.get $11
  i32.const 1
  local.get $5
  call $~lib/array/Array<u64>#__set
  local.get $11
  i32.const 2
  local.get $6
  call $~lib/array/Array<u64>#__set
  local.get $11
  i32.const 3
  local.get $7
  call $~lib/array/Array<u64>#__set
  loop $for-loop|0
   local.get $12
   i32.const 4
   i32.lt_s
   if
    i32.const 0
    local.set $9
    loop $for-loop|1
     local.get $9
     i32.const 4
     i32.lt_s
     if
      local.get $9
      local.get $12
      i32.add
      i32.const 6
      i32.shl
      local.tee $13
      i32.const 256
      i32.lt_s
      if
       local.get $10
       local.get $12
       call $~lib/array/Array<u64>#__get
       local.tee $0
       i64.const 32
       i64.shr_u
       local.set $1
       local.get $11
       local.get $9
       call $~lib/array/Array<u64>#__get
       local.tee $2
       i64.const 4294967295
       i64.and
       local.tee $3
       local.get $0
       i64.const 4294967295
       i64.and
       local.tee $0
       i64.mul
       local.set $4
       local.get $2
       i64.const 32
       i64.shr_u
       local.tee $2
       local.get $0
       i64.mul
       local.get $1
       local.get $3
       i64.mul
       local.get $4
       i64.const 32
       i64.shr_u
       i64.add
       local.tee $0
       i64.const 4294967295
       i64.and
       i64.add
       local.set $3
       local.get $1
       local.get $2
       i64.mul
       local.get $0
       i64.const 32
       i64.shr_u
       i64.add
       local.get $3
       i64.const 32
       i64.shr_u
       i64.add
       global.set $~lib/@btc-vision/as-bignum/assembly/globals/__res128_hi
       local.get $4
       i64.const 4294967295
       i64.and
       local.get $3
       i64.const 32
       i64.shl
       i64.or
       global.get $~lib/@btc-vision/as-bignum/assembly/globals/__res128_hi
       call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
       local.tee $14
       i64.load
       local.get $14
       i64.load offset=8
       i64.const 0
       i64.const 0
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
       local.set $14
       local.get $8
       local.get $13
       if (result i32)
        local.get $14
        local.get $13
        call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.shl
       else
        local.get $14
       end
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.add
       local.set $8
      end
      local.get $9
      i32.const 1
      i32.add
      local.set $9
      br $for-loop|1
     end
    end
    local.get $12
    i32.const 1
    i32.add
    local.set $12
    br $for-loop|0
   end
  end
  local.get $8
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.ne
  if
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.lt_u
   return
  end
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.ne
  if
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.lt_u
   return
  end
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.ne
  if
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.lt_u
   return
  end
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.lt_u
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.div (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  local.get $1
  i64.load offset=24
  local.get $1
  i64.load offset=16
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 12656
   i32.const 5760
   i32.const 353
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if (result i32)
   i32.const 1
  else
   local.get $0
   local.get $1
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  end
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  if
   i64.const 1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
  local.set $5
  local.get $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
  local.set $0
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
  local.set $3
  local.get $0
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0 (result i32)
   local.get $0
   i64.load offset=24
   i64.const 0
   i64.ne
   if
    local.get $0
    i64.load offset=24
    i64.clz
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   local.get $0
   i64.load offset=16
   i64.const 0
   i64.ne
   if
    local.get $0
    i64.load offset=16
    i64.clz
    i64.const -64
    i64.sub
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   local.get $0
   i64.load offset=8
   i64.const 0
   i64.ne
   if
    local.get $0
    i64.load offset=8
    i64.clz
    i64.const 128
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   local.get $0
   i64.load
   i64.const 0
   i64.ne
   if
    local.get $0
    i64.load
    i64.clz
    i64.const 192
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   i32.const 256
  end
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1 (result i32)
   local.get $5
   i64.load offset=24
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load offset=24
    i64.clz
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   local.get $5
   i64.load offset=16
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load offset=16
    i64.clz
    i64.const -64
    i64.sub
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   local.get $5
   i64.load offset=8
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load offset=8
    i64.clz
    i64.const 128
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   local.get $5
   i64.load
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load
    i64.clz
    i64.const 192
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   i32.const 256
  end
  i32.sub
  local.tee $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.shl
  local.set $0
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    local.get $5
    local.get $0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
    i32.eqz
    if
     local.get $5
     i64.load
     local.tee $2
     local.get $0
     i64.load
     i64.sub
     local.tee $6
     local.get $6
     i64.lt_u
     local.get $2
     local.get $6
     i64.lt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     i64.load offset=8
     local.tee $2
     local.get $0
     i64.load offset=8
     i64.sub
     local.tee $7
     global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     i64.sub
     local.set $8
     local.get $7
     local.get $8
     i64.lt_u
     local.get $2
     local.get $7
     i64.lt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     i64.load offset=16
     local.tee $2
     local.get $0
     i64.load offset=16
     i64.sub
     local.tee $7
     global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     i64.sub
     local.set $9
     local.get $7
     local.get $9
     i64.lt_u
     local.get $2
     local.get $7
     i64.lt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     i64.load offset=24
     local.tee $7
     local.get $0
     i64.load offset=24
     i64.sub
     local.tee $10
     global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     i64.sub
     local.set $2
     local.get $7
     local.get $10
     i64.lt_u
     local.get $2
     local.get $10
     i64.gt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     local.get $6
     i64.store
     local.get $5
     local.get $8
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $2
     i64.store offset=24
     i64.const 1
     local.get $1
     i32.const 64
     i32.rem_s
     i64.extend_i32_s
     i64.shl
     local.set $2
     local.get $1
     i32.const 64
     i32.div_s
     local.tee $4
     if
      local.get $4
      i32.const 1
      i32.eq
      if
       local.get $3
       local.get $3
       i64.load offset=8
       local.get $2
       i64.or
       i64.store offset=8
      else
       local.get $4
       i32.const 2
       i32.eq
       if
        local.get $3
        local.get $3
        i64.load offset=16
        local.get $2
        i64.or
        i64.store offset=16
       else
        local.get $4
        i32.const 3
        i32.eq
        if
         local.get $3
         local.get $3
         i64.load offset=24
         local.get $2
         i64.or
         i64.store offset=24
        end
       end
      end
     else
      local.get $3
      local.get $3
      i64.load
      local.get $2
      i64.or
      i64.store
     end
    end
    local.get $0
    local.get $0
    i64.load offset=8
    i64.const 63
    i64.shl
    local.get $0
    i64.load
    i64.const 1
    i64.shr_u
    i64.or
    i64.store
    local.get $0
    local.get $0
    i64.load offset=16
    i64.const 63
    i64.shl
    local.get $0
    i64.load offset=8
    i64.const 1
    i64.shr_u
    i64.or
    i64.store offset=8
    local.get $0
    local.get $0
    i64.load offset=24
    i64.const 63
    i64.shl
    local.get $0
    i64.load offset=16
    i64.const 1
    i64.shr_u
    i64.or
    i64.store offset=16
    local.get $0
    local.get $0
    i64.load offset=24
    i64.const 1
    i64.shr_u
    i64.store offset=24
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.mul (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if (result i64)
   i64.const 0
  else
   local.get $1
   i64.load offset=24
   local.get $1
   i64.load offset=16
   local.get $1
   i64.load
   local.get $1
   i64.load offset=8
   i64.or
   i64.or
   i64.or
  end
  i64.eqz
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  local.get $1
  i64.load offset=16
  local.get $1
  i64.load offset=24
  call $~lib/@btc-vision/as-bignum/assembly/globals/__mul256
  local.tee $2
  local.get $0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.div
  local.tee $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 12720
   i32.const 12816
   i32.const 190
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.add
  local.tee $1
  local.get $0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  if
   i32.const 12944
   i32.const 12816
   i32.const 55
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 64
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $2
  local.get $0
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
  i32.load16_u
  local.get $2
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  i32.const 0
  i32.const 1120
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#buyTickets (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  local.tee $8
  i32.eqz
  if
   i32.const 12240
   i32.const 11056
   i32.const 210
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=24
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.set $1
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $4
  local.get $1
  i64.load
  local.get $4
  i64.load
  i64.eq
  if (result i32)
   local.get $1
   i64.load offset=8
   local.get $4
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i64.load offset=16
   local.get $4
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i64.load offset=24
   local.get $4
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  if
   i32.const 12320
   i32.const 11056
   i32.const 215
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=28
  local.tee $4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
  local.get $4
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<u64>#__get
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $4
  i32.load offset=20
  i32.eqz
  if
   i32.const 11232
   i32.const 5264
   i32.const 118
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=20
  local.tee $4
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 120
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i64.load offset=8
  i64.le_u
  if
   i32.const 12448
   i32.const 11056
   i32.const 220
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=44
  local.tee $4
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $4
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $4
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  if
   i32.const 12528
   i32.const 11056
   i32.const 224
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.1 (result i32)
   local.get $8
   i64.extend_i32_u
   local.tee $2
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.1
   end
   local.get $2
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.1
   end
   local.get $2
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.mul
  local.set $9
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $1
  i32.load offset=24
  i32.eqz
  if
   i32.const 10768
   i32.const 5264
   i32.const 145
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=24
  local.tee $1
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 147
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $10
  local.get $0
  i32.load offset=32
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.set $5
  local.get $10
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2240
   i32.const 5760
   i32.const 203
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  i32.load offset=4
  local.tee $1
  i64.load
  local.get $1
  i64.load offset=8
  local.get $1
  i64.load offset=16
  local.get $1
  i64.load offset=24
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $6
  loop $for-loop|0
   local.get $3
   local.get $8
   i32.lt_u
   if
    local.get $5
    block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.2 (result i32)
     local.get $3
     i64.extend_i32_u
     local.tee $2
     i64.eqz
     if
      i64.const 0
      i64.const 0
      i64.const 0
      i64.const 0
      call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
      br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.2
     end
     local.get $2
     i64.const 1
     i64.eq
     if
      i64.const 1
      i64.const 0
      i64.const 0
      i64.const 0
      call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
      br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.2
     end
     local.get $2
     i64.const 0
     i64.const 0
     i64.const 0
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    end
    call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
    local.set $1
    local.get $0
    i32.load offset=60
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer
    local.set $11
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    i32.const 0
    i32.const 32
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $4
    i32.load offset=4
    local.tee $7
    local.get $6
    i64.load offset=24
    call $~lib/polyfills/bswap<u64>
    i64.store
    local.get $7
    local.get $6
    i64.load offset=16
    call $~lib/polyfills/bswap<u64>
    i64.store offset=8
    local.get $7
    local.get $6
    i64.load offset=8
    call $~lib/polyfills/bswap<u64>
    i64.store offset=16
    local.get $7
    local.get $6
    i64.load
    call $~lib/polyfills/bswap<u64>
    i64.store offset=24
    local.get $11
    local.get $4
    call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  i32.load offset=32
  local.get $5
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.3 (result i32)
   local.get $8
   i64.extend_i32_u
   local.tee $2
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.3
   end
   local.get $2
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.3
   end
   local.get $2
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=36
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.get $9
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  i32.const 12
  i32.const 47
  call $~lib/rt/stub/__new
  i32.const 68
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $1
  local.get $10
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $1
  i32.const 4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load
  local.get $8
  call $~lib/dataview/DataView#setUint32
  local.get $1
  local.get $1
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $1
  local.get $9
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  i32.const 13024
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $0
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load
  local.tee $3
  local.get $1
  i64.load
  i64.sub
  local.tee $2
  local.get $2
  i64.lt_u
  local.get $2
  local.get $3
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $0
  i64.load offset=8
  local.tee $3
  local.get $1
  i64.load offset=8
  i64.sub
  local.tee $4
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  i64.sub
  local.set $5
  local.get $4
  local.get $5
  i64.lt_u
  local.get $3
  local.get $4
  i64.lt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $0
  i64.load offset=16
  local.tee $3
  local.get $1
  i64.load offset=16
  i64.sub
  local.tee $4
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  i64.sub
  local.set $6
  local.get $4
  local.get $6
  i64.lt_u
  local.get $3
  local.get $4
  i64.lt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $0
  i64.load offset=24
  local.tee $4
  local.get $1
  i64.load offset=24
  i64.sub
  local.tee $3
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  i64.sub
  local.set $7
  local.get $3
  local.get $7
  i64.lt_u
  local.get $3
  local.get $4
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $2
  local.get $5
  local.get $6
  local.get $7
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#drawWinner (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=44
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  if
   i32.const 13072
   i32.const 11056
   i32.const 272
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=28
  local.tee $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
  local.get $2
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<u64>#__get
  local.set $1
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.tee $2
     i32.load offset=20
     i32.eqz
     br_if $folding-inner0
     local.get $2
     i32.load offset=20
     local.tee $2
     i32.eqz
     br_if $folding-inner1
     local.get $2
     i64.load offset=8
     local.get $1
     i64.const 2
     i64.add
     i64.lt_u
     if
      i32.const 13168
      i32.const 11056
      i32.const 279
      i32.const 13
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.load offset=32
     call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
     local.set $2
     i64.const 0
     i64.const 0
     i64.const 0
     i64.const 0
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     local.set $3
     local.get $2
     i64.load
     local.get $3
     i64.load
     i64.eq
     if (result i32)
      local.get $2
      i64.load offset=8
      local.get $3
      i64.load offset=8
      i64.eq
     else
      i32.const 0
     end
     if (result i32)
      local.get $2
      i64.load offset=16
      local.get $3
      i64.load offset=16
      i64.eq
     else
      i32.const 0
     end
     if (result i32)
      local.get $2
      i64.load offset=24
      local.get $3
      i64.load offset=24
      i64.eq
     else
      i32.const 0
     end
     if
      i32.const 13296
      i32.const 11056
      i32.const 284
      i32.const 13
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.tee $3
     i32.load offset=24
     i32.eqz
     if
      i32.const 10768
      i32.const 5264
      i32.const 145
      i32.const 13
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     i32.load offset=24
     local.tee $3
     i32.eqz
     if
      i32.const 8944
      i32.const 5264
      i32.const 147
      i32.const 16
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     i32.load offset=16
     local.tee $3
     i32.load offset=8
     i32.const 32
     i32.ne
     br_if $folding-inner2
     local.get $3
     i32.load offset=4
     local.tee $3
     i64.load offset=24
     call $~lib/polyfills/bswap<u64>
     local.get $3
     i64.load offset=16
     call $~lib/polyfills/bswap<u64>
     local.get $3
     i64.load offset=8
     call $~lib/polyfills/bswap<u64>
     local.get $3
     i64.load
     call $~lib/polyfills/bswap<u64>
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     local.set $3
     block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.4 (result i32)
      global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
      local.tee $4
      i32.load offset=20
      i32.eqz
      br_if $folding-inner0
      local.get $4
      i32.load offset=20
      local.tee $4
      i32.eqz
      br_if $folding-inner1
      local.get $4
      i64.load offset=8
      local.tee $1
      i64.eqz
      if
       i64.const 0
       i64.const 0
       i64.const 0
       i64.const 0
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
       br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.4
      end
      local.get $1
      i64.const 1
      i64.eq
      if
       i64.const 1
       i64.const 0
       i64.const 0
       i64.const 0
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
       br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.4
      end
      local.get $1
      i64.const 0
      i64.const 0
      i64.const 0
      call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     end
     local.set $4
     local.get $3
     i64.load
     local.get $4
     i64.load
     i64.xor
     local.get $3
     i64.load offset=8
     local.get $4
     i64.load offset=8
     i64.xor
     local.get $3
     i64.load offset=16
     local.get $4
     i64.load offset=16
     i64.xor
     local.get $3
     i64.load offset=24
     local.get $4
     i64.load offset=24
     i64.xor
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     local.tee $3
     i64.load
     local.get $2
     i64.load
     i64.xor
     local.get $3
     i64.load offset=8
     local.get $2
     i64.load offset=8
     i64.xor
     local.get $3
     i64.load offset=16
     local.get $2
     i64.load offset=16
     i64.xor
     local.get $3
     i64.load offset=24
     local.get $2
     i64.load offset=24
     i64.xor
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     local.set $3
     local.get $2
     i64.load offset=24
     local.get $2
     i64.load offset=16
     local.get $2
     i64.load
     local.get $2
     i64.load offset=8
     i64.or
     i64.or
     i64.or
     i64.eqz
     if
      i32.const 13408
      i32.const 12816
      i32.const 354
      i32.const 13
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     local.get $3
     local.get $2
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.div
     local.tee $3
     i64.load
     local.get $3
     i64.load offset=8
     local.get $3
     i64.load offset=16
     local.get $3
     i64.load offset=24
     local.get $2
     i64.load
     local.get $2
     i64.load offset=8
     local.get $2
     i64.load offset=16
     local.get $2
     i64.load offset=24
     call $~lib/@btc-vision/as-bignum/assembly/globals/__mul256
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.sub
     local.set $2
     local.get $0
     i32.load offset=60
     local.get $2
     call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer
     local.set $2
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.get $2
     call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
     local.tee $2
     i32.load offset=8
     i32.const 32
     i32.ne
     br_if $folding-inner2
     local.get $2
     i32.load offset=4
     local.tee $2
     i64.load offset=24
     call $~lib/polyfills/bswap<u64>
     local.get $2
     i64.load offset=16
     call $~lib/polyfills/bswap<u64>
     local.get $2
     i64.load offset=8
     call $~lib/polyfills/bswap<u64>
     local.get $2
     i64.load
     call $~lib/polyfills/bswap<u64>
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     local.set $2
     i32.const 32
     call $~lib/array/Array<u8>#constructor
     local.tee $3
     i32.load offset=4
     local.tee $4
     local.get $2
     i64.load
     i64.store
     local.get $4
     local.get $2
     i64.load offset=8
     i64.store offset=8
     local.get $4
     local.get $2
     i64.load offset=16
     i64.store offset=16
     local.get $4
     local.get $2
     i64.load offset=24
     i64.store offset=24
     i32.const 0
     local.get $3
     call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
     local.set $2
     local.get $0
     i32.load offset=40
     local.get $2
     call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#set:value
     local.get $0
     i32.load offset=44
     i32.const 1
     call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
     local.get $0
     i32.load offset=36
     call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
     local.set $0
     i32.const 12
     i32.const 48
     call $~lib/rt/stub/__new
     i32.const 64
     call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
     local.tee $4
     local.get $2
     call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
     local.get $4
     local.get $0
     call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
     i32.const 13488
     local.get $4
     call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
     call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
     i32.const 1
     call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
     local.tee $0
     i32.const 1
     call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
     local.get $0
     return
    end
    i32.const 11232
    i32.const 5264
    i32.const 118
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8944
   i32.const 5264
   i32.const 120
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2240
  i32.const 5760
  i32.const 220
  i32.const 30
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.div (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i64.load offset=24
  local.get $1
  i64.load offset=16
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 13824
   i32.const 12816
   i32.const 265
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  local.get $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.div
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#claimPrize (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=44
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 13536
   i32.const 11056
   i32.const 341
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=48
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  if
   i32.const 13632
   i32.const 11056
   i32.const 346
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=40
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#get:value
  local.set $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $3
  i32.load offset=24
  i32.eqz
  if
   i32.const 10768
   i32.const 5264
   i32.const 145
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=24
  local.tee $3
  i32.eqz
  if
   i32.const 8944
   i32.const 5264
   i32.const 147
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  i32.eqz
  if
   i32.const 13728
   i32.const 11056
   i32.const 352
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=36
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.tee $3
  local.get $3
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.5 (result i32)
   local.get $0
   i32.load offset=28
   local.tee $4
   call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
   local.get $4
   i32.load offset=4
   i32.const 1
   call $~lib/array/Array<u64>#__get
   local.tee $1
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.5
   end
   local.get $1
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.5
   end
   local.get $1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.mul
  i64.const 100
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.div
  local.tee $4
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  if
   i32.const 13904
   i32.const 12816
   i32.const 125
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.sub
  local.set $3
  local.get $0
  i32.load offset=48
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
  i32.const 12
  i32.const 49
  call $~lib/rt/stub/__new
  i32.const 64
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $4
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  i32.const 14000
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#withdrawFee (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=44
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 14048
   i32.const 11056
   i32.const 389
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=48
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 14144
   i32.const 11056
   i32.const 392
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=52
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  if
   i32.const 14256
   i32.const 11056
   i32.const 395
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=36
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.7 (result i32)
   local.get $0
   i32.load offset=28
   local.tee $2
   call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
   local.get $2
   i32.load offset=4
   i32.const 1
   call $~lib/array/Array<u64>#__get
   local.tee $1
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.7
   end
   local.get $1
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.7
   end
   local.get $1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.mul
  i64.const 100
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.div
  local.set $2
  local.get $0
  i32.load offset=52
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
  local.get $0
  i32.load offset=56
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#get:value
  local.set $3
  i32.const 12
  i32.const 50
  call $~lib/rt/stub/__new
  i32.const 64
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $0
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  i32.const 14352
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
 )
 (func $src/contracts/VibeRaffle/VibeRaffle#getRoundInfo (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 179
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $1
  local.get $0
  i32.load offset=24
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
  i32.load offset=28
  local.tee $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
  local.get $1
  local.get $2
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<u64>#__get
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
  local.get $1
  local.get $0
  i32.load offset=32
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $1
  local.get $0
  i32.load offset=36
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
  i32.load offset=44
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $1
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $0
  i32.load offset=48
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $1
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $0
  i32.load offset=52
  local.tee $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  i32.store offset=8
  local.get $1
  local.get $2
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $1
  local.get $0
  i32.load offset=40
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $0
  i32.load offset=28
  local.tee $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU64/StoredU64#ensureValues
  local.get $1
  local.get $2
  i32.load offset=4
  i32.const 1
  call $~lib/array/Array<u64>#__get
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
  local.get $1
  local.get $0
  i32.load offset=56
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredAddress/StoredAddress#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $1
 )
 (func $~start
  (local $0 i32)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:~lib/@btc-vision/btc-runtime/runtime/index
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $0
  i32.const 7920
  i32.store offset=28
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#createContractIfNotExists
 )
)
