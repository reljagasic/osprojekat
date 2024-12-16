
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7a813103          	ld	sp,1960(sp) # 800057a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	675010ef          	jal	ra,80001e90 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256 // stek raste ka nizim adresama
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256 // stek raste ka nizim adresama
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	0b1000ef          	jal	ra,80001a34 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001224:	fe010113          	addi	sp,sp,-32
    80001228:	00113c23          	sd	ra,24(sp)
    8000122c:	00813823          	sd	s0,16(sp)
    80001230:	00913423          	sd	s1,8(sp)
    80001234:	01213023          	sd	s2,0(sp)
    80001238:	02010413          	addi	s0,sp,32
    8000123c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001240:	00100793          	li	a5,1
    80001244:	02a7f663          	bgeu	a5,a0,80001270 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    80001248:	00357793          	andi	a5,a0,3
    8000124c:	02078e63          	beqz	a5,80001288 <_ZL9fibonaccim+0x64>
        TCB::yield();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001250:	fff48513          	addi	a0,s1,-1
    80001254:	00000097          	auipc	ra,0x0
    80001258:	fd0080e7          	jalr	-48(ra) # 80001224 <_ZL9fibonaccim>
    8000125c:	00050913          	mv	s2,a0
    80001260:	ffe48513          	addi	a0,s1,-2
    80001264:	00000097          	auipc	ra,0x0
    80001268:	fc0080e7          	jalr	-64(ra) # 80001224 <_ZL9fibonaccim>
    8000126c:	00a90533          	add	a0,s2,a0
}
    80001270:	01813083          	ld	ra,24(sp)
    80001274:	01013403          	ld	s0,16(sp)
    80001278:	00813483          	ld	s1,8(sp)
    8000127c:	00013903          	ld	s2,0(sp)
    80001280:	02010113          	addi	sp,sp,32
    80001284:	00008067          	ret
        TCB::yield();
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	610080e7          	jalr	1552(ra) # 80001898 <_ZN3TCB5yieldEv>
    80001290:	fc1ff06f          	j	80001250 <_ZL9fibonaccim+0x2c>

0000000080001294 <_Z11workerBodyAv>:
void workerBodyA(){
    80001294:	fe010113          	addi	sp,sp,-32
    80001298:	00113c23          	sd	ra,24(sp)
    8000129c:	00813823          	sd	s0,16(sp)
    800012a0:	00913423          	sd	s1,8(sp)
    800012a4:	02010413          	addi	s0,sp,32
    for(uint64 i = 0; i < 10; i++){
    800012a8:	00000493          	li	s1,0
    800012ac:	0300006f          	j	800012dc <_Z11workerBodyAv+0x48>
        for(uint64 j = 0; j < 10000; j++){
    800012b0:	00168693          	addi	a3,a3,1
    800012b4:	000027b7          	lui	a5,0x2
    800012b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012bc:	00d7ee63          	bltu	a5,a3,800012d8 <_Z11workerBodyAv+0x44>
            for(uint64 k = 0;k<30000;k++){
    800012c0:	00000713          	li	a4,0
    800012c4:	000077b7          	lui	a5,0x7
    800012c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012cc:	fee7e2e3          	bltu	a5,a4,800012b0 <_Z11workerBodyAv+0x1c>
    800012d0:	00170713          	addi	a4,a4,1
    800012d4:	ff1ff06f          	j	800012c4 <_Z11workerBodyAv+0x30>
    for(uint64 i = 0; i < 10; i++){
    800012d8:	00148493          	addi	s1,s1,1
    800012dc:	00900793          	li	a5,9
    800012e0:	0497e063          	bltu	a5,s1,80001320 <_Z11workerBodyAv+0x8c>
        printString("A: i=");
    800012e4:	00004517          	auipc	a0,0x4
    800012e8:	d1c50513          	addi	a0,a0,-740 # 80005000 <kvmincrease+0xd70>
    800012ec:	00001097          	auipc	ra,0x1
    800012f0:	a48080e7          	jalr	-1464(ra) # 80001d34 <_Z11printStringPKc>
        printInt(i);
    800012f4:	00000613          	li	a2,0
    800012f8:	00a00593          	li	a1,10
    800012fc:	0004851b          	sext.w	a0,s1
    80001300:	00001097          	auipc	ra,0x1
    80001304:	aa4080e7          	jalr	-1372(ra) # 80001da4 <_Z8printIntiii>
        printString("\n");
    80001308:	00004517          	auipc	a0,0x4
    8000130c:	dc850513          	addi	a0,a0,-568 # 800050d0 <kvmincrease+0xe40>
    80001310:	00001097          	auipc	ra,0x1
    80001314:	a24080e7          	jalr	-1500(ra) # 80001d34 <_Z11printStringPKc>
        for(uint64 j = 0; j < 10000; j++){
    80001318:	00000693          	li	a3,0
    8000131c:	f99ff06f          	j	800012b4 <_Z11workerBodyAv+0x20>
}
    80001320:	01813083          	ld	ra,24(sp)
    80001324:	01013403          	ld	s0,16(sp)
    80001328:	00813483          	ld	s1,8(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret

0000000080001334 <_Z11workerBodyBv>:
void workerBodyB(){
    80001334:	fe010113          	addi	sp,sp,-32
    80001338:	00113c23          	sd	ra,24(sp)
    8000133c:	00813823          	sd	s0,16(sp)
    80001340:	00913423          	sd	s1,8(sp)
    80001344:	02010413          	addi	s0,sp,32
    for(uint64 i = 0; i < 10; i++){
    80001348:	00000493          	li	s1,0
    8000134c:	0300006f          	j	8000137c <_Z11workerBodyBv+0x48>
        for(uint64 j = 0; j < 10000; j++){
    80001350:	00168693          	addi	a3,a3,1
    80001354:	000027b7          	lui	a5,0x2
    80001358:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000135c:	00d7ee63          	bltu	a5,a3,80001378 <_Z11workerBodyBv+0x44>
            for(uint64 k = 0;k<30000;k++){
    80001360:	00000713          	li	a4,0
    80001364:	000077b7          	lui	a5,0x7
    80001368:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000136c:	fee7e2e3          	bltu	a5,a4,80001350 <_Z11workerBodyBv+0x1c>
    80001370:	00170713          	addi	a4,a4,1
    80001374:	ff1ff06f          	j	80001364 <_Z11workerBodyBv+0x30>
    for(uint64 i = 0; i < 10; i++){
    80001378:	00148493          	addi	s1,s1,1
    8000137c:	00900793          	li	a5,9
    80001380:	0497e063          	bltu	a5,s1,800013c0 <_Z11workerBodyBv+0x8c>
        printString("B: i=");
    80001384:	00004517          	auipc	a0,0x4
    80001388:	c8450513          	addi	a0,a0,-892 # 80005008 <kvmincrease+0xd78>
    8000138c:	00001097          	auipc	ra,0x1
    80001390:	9a8080e7          	jalr	-1624(ra) # 80001d34 <_Z11printStringPKc>
        printInt(i);
    80001394:	00000613          	li	a2,0
    80001398:	00a00593          	li	a1,10
    8000139c:	0004851b          	sext.w	a0,s1
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	a04080e7          	jalr	-1532(ra) # 80001da4 <_Z8printIntiii>
        printString("\n");
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	d2850513          	addi	a0,a0,-728 # 800050d0 <kvmincrease+0xe40>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	984080e7          	jalr	-1660(ra) # 80001d34 <_Z11printStringPKc>
        for(uint64 j = 0; j < 10000; j++){
    800013b8:	00000693          	li	a3,0
    800013bc:	f99ff06f          	j	80001354 <_Z11workerBodyBv+0x20>
}
    800013c0:	01813083          	ld	ra,24(sp)
    800013c4:	01013403          	ld	s0,16(sp)
    800013c8:	00813483          	ld	s1,8(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret

00000000800013d4 <_Z11workerBodyCv>:

void workerBodyC()
{
    800013d4:	fe010113          	addi	sp,sp,-32
    800013d8:	00113c23          	sd	ra,24(sp)
    800013dc:	00813823          	sd	s0,16(sp)
    800013e0:	00913423          	sd	s1,8(sp)
    800013e4:	01213023          	sd	s2,0(sp)
    800013e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013ec:	00000493          	li	s1,0
    800013f0:	0400006f          	j	80001430 <_Z11workerBodyCv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	c1c50513          	addi	a0,a0,-996 # 80005010 <kvmincrease+0xd80>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	938080e7          	jalr	-1736(ra) # 80001d34 <_Z11printStringPKc>
        printInt(i);
    80001404:	00000613          	li	a2,0
    80001408:	00a00593          	li	a1,10
    8000140c:	00048513          	mv	a0,s1
    80001410:	00001097          	auipc	ra,0x1
    80001414:	994080e7          	jalr	-1644(ra) # 80001da4 <_Z8printIntiii>
        printString("\n");
    80001418:	00004517          	auipc	a0,0x4
    8000141c:	cb850513          	addi	a0,a0,-840 # 800050d0 <kvmincrease+0xe40>
    80001420:	00001097          	auipc	ra,0x1
    80001424:	914080e7          	jalr	-1772(ra) # 80001d34 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001428:	0014849b          	addiw	s1,s1,1
    8000142c:	0ff4f493          	andi	s1,s1,255
    80001430:	00200793          	li	a5,2
    80001434:	fc97f0e3          	bgeu	a5,s1,800013f4 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001438:	00004517          	auipc	a0,0x4
    8000143c:	be050513          	addi	a0,a0,-1056 # 80005018 <kvmincrease+0xd88>
    80001440:	00001097          	auipc	ra,0x1
    80001444:	8f4080e7          	jalr	-1804(ra) # 80001d34 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001448:	00700313          	li	t1,7
    TCB::yield();
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	44c080e7          	jalr	1100(ra) # 80001898 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001454:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001458:	00004517          	auipc	a0,0x4
    8000145c:	bd050513          	addi	a0,a0,-1072 # 80005028 <kvmincrease+0xd98>
    80001460:	00001097          	auipc	ra,0x1
    80001464:	8d4080e7          	jalr	-1836(ra) # 80001d34 <_Z11printStringPKc>
    printInt(t1);
    80001468:	00000613          	li	a2,0
    8000146c:	00a00593          	li	a1,10
    80001470:	0009051b          	sext.w	a0,s2
    80001474:	00001097          	auipc	ra,0x1
    80001478:	930080e7          	jalr	-1744(ra) # 80001da4 <_Z8printIntiii>
    printString("\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	c5450513          	addi	a0,a0,-940 # 800050d0 <kvmincrease+0xe40>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	8b0080e7          	jalr	-1872(ra) # 80001d34 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    8000148c:	01400513          	li	a0,20
    80001490:	00000097          	auipc	ra,0x0
    80001494:	d94080e7          	jalr	-620(ra) # 80001224 <_ZL9fibonaccim>
    80001498:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	b9450513          	addi	a0,a0,-1132 # 80005030 <kvmincrease+0xda0>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	890080e7          	jalr	-1904(ra) # 80001d34 <_Z11printStringPKc>
    printInt(result);
    800014ac:	00000613          	li	a2,0
    800014b0:	00a00593          	li	a1,10
    800014b4:	0009051b          	sext.w	a0,s2
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	8ec080e7          	jalr	-1812(ra) # 80001da4 <_Z8printIntiii>
    printString("\n");
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	c1050513          	addi	a0,a0,-1008 # 800050d0 <kvmincrease+0xe40>
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	86c080e7          	jalr	-1940(ra) # 80001d34 <_Z11printStringPKc>
    800014d0:	0400006f          	j	80001510 <_Z11workerBodyCv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800014d4:	00004517          	auipc	a0,0x4
    800014d8:	b3c50513          	addi	a0,a0,-1220 # 80005010 <kvmincrease+0xd80>
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	858080e7          	jalr	-1960(ra) # 80001d34 <_Z11printStringPKc>
        printInt(i);
    800014e4:	00000613          	li	a2,0
    800014e8:	00a00593          	li	a1,10
    800014ec:	00048513          	mv	a0,s1
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	8b4080e7          	jalr	-1868(ra) # 80001da4 <_Z8printIntiii>
        printString("\n");
    800014f8:	00004517          	auipc	a0,0x4
    800014fc:	bd850513          	addi	a0,a0,-1064 # 800050d0 <kvmincrease+0xe40>
    80001500:	00001097          	auipc	ra,0x1
    80001504:	834080e7          	jalr	-1996(ra) # 80001d34 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001508:	0014849b          	addiw	s1,s1,1
    8000150c:	0ff4f493          	andi	s1,s1,255
    80001510:	00500793          	li	a5,5
    80001514:	fc97f0e3          	bgeu	a5,s1,800014d4 <_Z11workerBodyCv+0x100>
    }


    //TCB::yield

}
    80001518:	01813083          	ld	ra,24(sp)
    8000151c:	01013403          	ld	s0,16(sp)
    80001520:	00813483          	ld	s1,8(sp)
    80001524:	00013903          	ld	s2,0(sp)
    80001528:	02010113          	addi	sp,sp,32
    8000152c:	00008067          	ret

0000000080001530 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	01213023          	sd	s2,0(sp)
    80001544:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001548:	00a00493          	li	s1,10
    8000154c:	0400006f          	j	8000158c <_Z11workerBodyDv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001550:	00004517          	auipc	a0,0x4
    80001554:	af050513          	addi	a0,a0,-1296 # 80005040 <kvmincrease+0xdb0>
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	7dc080e7          	jalr	2012(ra) # 80001d34 <_Z11printStringPKc>
        printInt(i);
    80001560:	00000613          	li	a2,0
    80001564:	00a00593          	li	a1,10
    80001568:	00048513          	mv	a0,s1
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	838080e7          	jalr	-1992(ra) # 80001da4 <_Z8printIntiii>
        printString("\n");
    80001574:	00004517          	auipc	a0,0x4
    80001578:	b5c50513          	addi	a0,a0,-1188 # 800050d0 <kvmincrease+0xe40>
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	7b8080e7          	jalr	1976(ra) # 80001d34 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001584:	0014849b          	addiw	s1,s1,1
    80001588:	0ff4f493          	andi	s1,s1,255
    8000158c:	00c00793          	li	a5,12
    80001590:	fc97f0e3          	bgeu	a5,s1,80001550 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001594:	00004517          	auipc	a0,0x4
    80001598:	ab450513          	addi	a0,a0,-1356 # 80005048 <kvmincrease+0xdb8>
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	798080e7          	jalr	1944(ra) # 80001d34 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015a4:	00500313          	li	t1,5
    TCB::yield();
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	2f0080e7          	jalr	752(ra) # 80001898 <_ZN3TCB5yieldEv>


    uint64 result = fibonacci(23);
    800015b0:	01700513          	li	a0,23
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c70080e7          	jalr	-912(ra) # 80001224 <_ZL9fibonaccim>
    800015bc:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	a9850513          	addi	a0,a0,-1384 # 80005058 <kvmincrease+0xdc8>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	76c080e7          	jalr	1900(ra) # 80001d34 <_Z11printStringPKc>
    printInt(result);
    800015d0:	00000613          	li	a2,0
    800015d4:	00a00593          	li	a1,10
    800015d8:	0009051b          	sext.w	a0,s2
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	7c8080e7          	jalr	1992(ra) # 80001da4 <_Z8printIntiii>
    printString("\n");
    800015e4:	00004517          	auipc	a0,0x4
    800015e8:	aec50513          	addi	a0,a0,-1300 # 800050d0 <kvmincrease+0xe40>
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	748080e7          	jalr	1864(ra) # 80001d34 <_Z11printStringPKc>
    800015f4:	0400006f          	j	80001634 <_Z11workerBodyDv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800015f8:	00004517          	auipc	a0,0x4
    800015fc:	a4850513          	addi	a0,a0,-1464 # 80005040 <kvmincrease+0xdb0>
    80001600:	00000097          	auipc	ra,0x0
    80001604:	734080e7          	jalr	1844(ra) # 80001d34 <_Z11printStringPKc>
        printInt(i);
    80001608:	00000613          	li	a2,0
    8000160c:	00a00593          	li	a1,10
    80001610:	00048513          	mv	a0,s1
    80001614:	00000097          	auipc	ra,0x0
    80001618:	790080e7          	jalr	1936(ra) # 80001da4 <_Z8printIntiii>
        printString("\n");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	ab450513          	addi	a0,a0,-1356 # 800050d0 <kvmincrease+0xe40>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	710080e7          	jalr	1808(ra) # 80001d34 <_Z11printStringPKc>
    for (; i < 16; i++)
    8000162c:	0014849b          	addiw	s1,s1,1
    80001630:	0ff4f493          	andi	s1,s1,255
    80001634:	00f00793          	li	a5,15
    80001638:	fc97f0e3          	bgeu	a5,s1,800015f8 <_Z11workerBodyDv+0xc8>
    }

    //TCB::yield;

}
    8000163c:	01813083          	ld	ra,24(sp)
    80001640:	01013403          	ld	s0,16(sp)
    80001644:	00813483          	ld	s1,8(sp)
    80001648:	00013903          	ld	s2,0(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret

0000000080001654 <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main(){
    80001654:	fb010113          	addi	sp,sp,-80
    80001658:	04113423          	sd	ra,72(sp)
    8000165c:	04813023          	sd	s0,64(sp)
    80001660:	02913c23          	sd	s1,56(sp)
    80001664:	03213823          	sd	s2,48(sp)
    80001668:	05010413          	addi	s0,sp,80

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    8000166c:	00000513          	li	a0,0
    80001670:	00000097          	auipc	ra,0x0
    80001674:	160080e7          	jalr	352(ra) # 800017d0 <_ZN3TCB12createThreadEPFvvE>
    80001678:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000167c:	00004797          	auipc	a5,0x4
    80001680:	1347b783          	ld	a5,308(a5) # 800057b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001684:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001688:	00004517          	auipc	a0,0x4
    8000168c:	11853503          	ld	a0,280(a0) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	140080e7          	jalr	320(ra) # 800017d0 <_ZN3TCB12createThreadEPFvvE>
    80001698:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	9cc50513          	addi	a0,a0,-1588 # 80005068 <kvmincrease+0xdd8>
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	690080e7          	jalr	1680(ra) # 80001d34 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    800016ac:	00004517          	auipc	a0,0x4
    800016b0:	0e453503          	ld	a0,228(a0) # 80005790 <_GLOBAL_OFFSET_TABLE_+0x10>
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	11c080e7          	jalr	284(ra) # 800017d0 <_ZN3TCB12createThreadEPFvvE>
    800016bc:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    800016c0:	00004517          	auipc	a0,0x4
    800016c4:	9c050513          	addi	a0,a0,-1600 # 80005080 <kvmincrease+0xdf0>
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	66c080e7          	jalr	1644(ra) # 80001d34 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	0e853503          	ld	a0,232(a0) # 800057b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	0f8080e7          	jalr	248(ra) # 800017d0 <_ZN3TCB12createThreadEPFvvE>
    800016e0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800016e4:	00004517          	auipc	a0,0x4
    800016e8:	9b450513          	addi	a0,a0,-1612 # 80005098 <kvmincrease+0xe08>
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	648080e7          	jalr	1608(ra) # 80001d34 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	0cc53503          	ld	a0,204(a0) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	0d4080e7          	jalr	212(ra) # 800017d0 <_ZN3TCB12createThreadEPFvvE>
    80001704:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80001708:	00004517          	auipc	a0,0x4
    8000170c:	9a850513          	addi	a0,a0,-1624 # 800050b0 <kvmincrease+0xe20>
    80001710:	00000097          	auipc	ra,0x0
    80001714:	624080e7          	jalr	1572(ra) # 80001d34 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001718:	00004797          	auipc	a5,0x4
    8000171c:	0707b783          	ld	a5,112(a5) # 80005788 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001720:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001724:	00200793          	li	a5,2
    80001728:	1007a073          	csrs	sstatus,a5
}
    8000172c:	00c0006f          	j	80001738 <main+0xe4>
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    while (!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())){
        TCB::yield();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	168080e7          	jalr	360(ra) # 80001898 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())){
    80001738:	fc043783          	ld	a5,-64(s0)

class TCB{
public:
    ~TCB(){ delete [] stack; }

    bool isFinished() const {return finished; }
    8000173c:	0287c783          	lbu	a5,40(a5)
    80001740:	fe0788e3          	beqz	a5,80001730 <main+0xdc>
    80001744:	fc843783          	ld	a5,-56(s0)
    80001748:	0287c783          	lbu	a5,40(a5)
    8000174c:	fe0782e3          	beqz	a5,80001730 <main+0xdc>
    80001750:	fd043783          	ld	a5,-48(s0)
    80001754:	0287c783          	lbu	a5,40(a5)
    80001758:	fc078ce3          	beqz	a5,80001730 <main+0xdc>
    8000175c:	fd843783          	ld	a5,-40(s0)
    80001760:	0287c783          	lbu	a5,40(a5)
    80001764:	fc0786e3          	beqz	a5,80001730 <main+0xdc>
    80001768:	fb840493          	addi	s1,s0,-72
    8000176c:	0140006f          	j	80001780 <main+0x12c>
    }

    for(auto &thread:threads ){
        delete thread;
    80001770:	00090513          	mv	a0,s2
    80001774:	00000097          	auipc	ra,0x0
    80001778:	250080e7          	jalr	592(ra) # 800019c4 <_ZdlPv>
    for(auto &thread:threads ){
    8000177c:	00848493          	addi	s1,s1,8
    80001780:	fe040793          	addi	a5,s0,-32
    80001784:	02f48063          	beq	s1,a5,800017a4 <main+0x150>
        delete thread;
    80001788:	0004b903          	ld	s2,0(s1)
    8000178c:	fe0908e3          	beqz	s2,8000177c <main+0x128>
    ~TCB(){ delete [] stack; }
    80001790:	00893503          	ld	a0,8(s2)
    80001794:	fc050ee3          	beqz	a0,80001770 <main+0x11c>
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	254080e7          	jalr	596(ra) # 800019ec <_ZdaPv>
    800017a0:	fd1ff06f          	j	80001770 <main+0x11c>
    }

    printString("Finished\n");
    800017a4:	00004517          	auipc	a0,0x4
    800017a8:	92450513          	addi	a0,a0,-1756 # 800050c8 <kvmincrease+0xe38>
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	588080e7          	jalr	1416(ra) # 80001d34 <_Z11printStringPKc>

    return 0;

}
    800017b4:	00000513          	li	a0,0
    800017b8:	04813083          	ld	ra,72(sp)
    800017bc:	04013403          	ld	s0,64(sp)
    800017c0:	03813483          	ld	s1,56(sp)
    800017c4:	03013903          	ld	s2,48(sp)
    800017c8:	05010113          	addi	sp,sp,80
    800017cc:	00008067          	ret

00000000800017d0 <_ZN3TCB12createThreadEPFvvE>:
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createThread(Body body) {
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	01213023          	sd	s2,0(sp)
    800017e4:	02010413          	addi	s0,sp,32
    800017e8:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800017ec:	03000513          	li	a0,48
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	184080e7          	jalr	388(ra) # 80001974 <_Znwm>
    800017f8:	00050493          	mv	s1,a0
                stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
                context({(uint64) &threadWrapper,
                         stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
                        }),
                timeSlice(timeSlice),
                finished(false) {
    800017fc:	01253023          	sd	s2,0(a0)
                stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001800:	00090a63          	beqz	s2,80001814 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001804:	00002537          	lui	a0,0x2
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	194080e7          	jalr	404(ra) # 8000199c <_Znam>
    80001810:	0080006f          	j	80001818 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001814:	00000513          	li	a0,0
                finished(false) {
    80001818:	00a4b423          	sd	a0,8(s1)
    8000181c:	00000797          	auipc	a5,0x0
    80001820:	09878793          	addi	a5,a5,152 # 800018b4 <_ZN3TCB13threadWrapperEv>
    80001824:	00f4b823          	sd	a5,16(s1)
                         stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
    80001828:	02050863          	beqz	a0,80001858 <_ZN3TCB12createThreadEPFvvE+0x88>
    8000182c:	000027b7          	lui	a5,0x2
    80001830:	00f507b3          	add	a5,a0,a5
                finished(false) {
    80001834:	00f4bc23          	sd	a5,24(s1)
    80001838:	00200793          	li	a5,2
    8000183c:	02f4b023          	sd	a5,32(s1)
    80001840:	02048423          	sb	zero,40(s1)
         if (body != nullptr ) Scheduler::put(this);
    80001844:	02090c63          	beqz	s2,8000187c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001848:	00048513          	mv	a0,s1
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	414080e7          	jalr	1044(ra) # 80001c60 <_ZN9Scheduler3putEP3TCB>
    80001854:	0280006f          	j	8000187c <_ZN3TCB12createThreadEPFvvE+0xac>
                         stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
    80001858:	00000793          	li	a5,0
    8000185c:	fd9ff06f          	j	80001834 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001860:	00050913          	mv	s2,a0
    80001864:	00048513          	mv	a0,s1
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	15c080e7          	jalr	348(ra) # 800019c4 <_ZdlPv>
    80001870:	00090513          	mv	a0,s2
    80001874:	00005097          	auipc	ra,0x5
    80001878:	094080e7          	jalr	148(ra) # 80006908 <_Unwind_Resume>
}
    8000187c:	00048513          	mv	a0,s1
    80001880:	01813083          	ld	ra,24(sp)
    80001884:	01013403          	ld	s0,16(sp)
    80001888:	00813483          	ld	s1,8(sp)
    8000188c:	00013903          	ld	s2,0(sp)
    80001890:	02010113          	addi	sp,sp,32
    80001894:	00008067          	ret

0000000080001898 <_ZN3TCB5yieldEv>:

uint64 TCB::timeSliceCounter = 0;


void TCB::yield(){
    80001898:	ff010113          	addi	sp,sp,-16
    8000189c:	00813423          	sd	s0,8(sp)
    800018a0:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800018a4:	00000073          	ecall

}
    800018a8:	00813403          	ld	s0,8(sp)
    800018ac:	01010113          	addi	sp,sp,16
    800018b0:	00008067          	ret

00000000800018b4 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper() {
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	14c080e7          	jalr	332(ra) # 80001a14 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800018d0:	00004497          	auipc	s1,0x4
    800018d4:	f5048493          	addi	s1,s1,-176 # 80005820 <_ZN3TCB7runningE>
    800018d8:	0004b783          	ld	a5,0(s1)
    800018dc:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800018e0:	000780e7          	jalr	a5
    running->setFinished(true);
    800018e4:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished) { TCB::finished = finished;}
    800018e8:	00100713          	li	a4,1
    800018ec:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	fa8080e7          	jalr	-88(ra) # 80001898 <_ZN3TCB5yieldEv>

}
    800018f8:	01813083          	ld	ra,24(sp)
    800018fc:	01013403          	ld	s0,16(sp)
    80001900:	00813483          	ld	s1,8(sp)
    80001904:	02010113          	addi	sp,sp,32
    80001908:	00008067          	ret

000000008000190c <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	00913423          	sd	s1,8(sp)
    8000191c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001920:	00004497          	auipc	s1,0x4
    80001924:	f004b483          	ld	s1,-256(s1) # 80005820 <_ZN3TCB7runningE>
    bool isFinished() const {return finished; }
    80001928:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()){
    8000192c:	02078c63          	beqz	a5,80001964 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001930:	00000097          	auipc	ra,0x0
    80001934:	2c8080e7          	jalr	712(ra) # 80001bf8 <_ZN9Scheduler3getEv>
    80001938:	00004797          	auipc	a5,0x4
    8000193c:	eea7b423          	sd	a0,-280(a5) # 80005820 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001940:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001944:	01048513          	addi	a0,s1,16
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	8c8080e7          	jalr	-1848(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001950:	01813083          	ld	ra,24(sp)
    80001954:	01013403          	ld	s0,16(sp)
    80001958:	00813483          	ld	s1,8(sp)
    8000195c:	02010113          	addi	sp,sp,32
    80001960:	00008067          	ret
        Scheduler::put(old);
    80001964:	00048513          	mv	a0,s1
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	2f8080e7          	jalr	760(ra) # 80001c60 <_ZN9Scheduler3putEP3TCB>
    80001970:	fc1ff06f          	j	80001930 <_ZN3TCB8dispatchEv+0x24>

0000000080001974 <_Znwm>:
#include "../lib/mem.h"

void *operator new (uint64 n){
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00113423          	sd	ra,8(sp)
    8000197c:	00813023          	sd	s0,0(sp)
    80001980:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001984:	00002097          	auipc	ra,0x2
    80001988:	694080e7          	jalr	1684(ra) # 80004018 <__mem_alloc>
}
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_Znam>:

void *operator new[] (uint64 n){
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	66c080e7          	jalr	1644(ra) # 80004018 <__mem_alloc>
}
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZdlPv>:

void operator delete (void *p) noexcept{
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	578080e7          	jalr	1400(ra) # 80003f4c <__mem_free>
}
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	550080e7          	jalr	1360(ra) # 80003f4c <__mem_free>
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie(){
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00813423          	sd	s0,8(sp)
    80001a1c:	01010413          	addi	s0,sp,16

    __asm__ volatile("csrw sepc, ra");
    80001a20:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001a24:	10200073          	sret
}
    80001a28:	00813403          	ld	s0,8(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001a34:	fb010113          	addi	sp,sp,-80
    80001a38:	04113423          	sd	ra,72(sp)
    80001a3c:	04813023          	sd	s0,64(sp)
    80001a40:	02913c23          	sd	s1,56(sp)
    80001a44:	03213823          	sd	s2,48(sp)
    80001a48:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a4c:	142027f3          	csrr	a5,scause
    80001a50:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001a54:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000009UL){
    80001a58:	00900793          	li	a5,9
    80001a5c:	02f70e63          	beq	a4,a5,80001a98 <_ZN5Riscv20handleSupervisorTrapEv+0x64>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);

    }else if (scause == 0x8000000000000001UL){
    80001a60:	fff00793          	li	a5,-1
    80001a64:	03f79793          	slli	a5,a5,0x3f
    80001a68:	00178793          	addi	a5,a5,1
    80001a6c:	06f70463          	beq	a4,a5,80001ad4 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);

    } else if (scause == 0x8000000000000009UL){
    80001a70:	fff00793          	li	a5,-1
    80001a74:	03f79793          	slli	a5,a5,0x3f
    80001a78:	00978793          	addi	a5,a5,9
    80001a7c:	0cf70263          	beq	a4,a5,80001b40 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
        // print stval

    }


}
    80001a80:	04813083          	ld	ra,72(sp)
    80001a84:	04013403          	ld	s0,64(sp)
    80001a88:	03813483          	ld	s1,56(sp)
    80001a8c:	03013903          	ld	s2,48(sp)
    80001a90:	05010113          	addi	sp,sp,80
    80001a94:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a98:	141027f3          	csrr	a5,sepc
    80001a9c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001aa0:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4; // ecall vraca na sebe a ne na seldecu funkciju zato pisemo + 4, instrukcije su 4 bajta
    80001aa4:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001aa8:	100027f3          	csrr	a5,sstatus
    80001aac:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001ab0:	fc043903          	ld	s2,-64(s0)
        TCB::timeSliceCounter = 0;
    80001ab4:	00004797          	auipc	a5,0x4
    80001ab8:	ce47b783          	ld	a5,-796(a5) # 80005798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001abc:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	e4c080e7          	jalr	-436(ra) # 8000190c <_ZN3TCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ac8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001acc:	14149073          	csrw	sepc,s1
}
    80001ad0:	fb1ff06f          	j	80001a80 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
        TCB::timeSliceCounter++;
    80001ad4:	00004717          	auipc	a4,0x4
    80001ad8:	cc473703          	ld	a4,-828(a4) # 80005798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001adc:	00073783          	ld	a5,0(a4)
    80001ae0:	00178793          	addi	a5,a5,1
    80001ae4:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80001ae8:	00004717          	auipc	a4,0x4
    80001aec:	cc873703          	ld	a4,-824(a4) # 800057b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001af0:	00073703          	ld	a4,0(a4)
        return timeSlice;
    80001af4:	02073703          	ld	a4,32(a4)
    80001af8:	00e7f863          	bgeu	a5,a4,80001b08 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001afc:	00200793          	li	a5,2
    80001b00:	1447b073          	csrc	sip,a5
}
    80001b04:	f7dff06f          	j	80001a80 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b08:	141027f3          	csrr	a5,sepc
    80001b0c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001b10:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b14:	100027f3          	csrr	a5,sstatus
    80001b18:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001b1c:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter = 0;
    80001b20:	00004797          	auipc	a5,0x4
    80001b24:	c787b783          	ld	a5,-904(a5) # 80005798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b28:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	de0080e7          	jalr	-544(ra) # 8000190c <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b34:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b38:	14149073          	csrw	sepc,s1
}
    80001b3c:	fc1ff06f          	j	80001afc <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
        console_handler();
    80001b40:	00002097          	auipc	ra,0x2
    80001b44:	6a4080e7          	jalr	1700(ra) # 800041e4 <console_handler>
}
    80001b48:	f39ff06f          	j	80001a80 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

0000000080001b4c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    80001b4c:	00100793          	li	a5,1
    80001b50:	00f50c63          	beq	a0,a5,80001b68 <_Z41__static_initialization_and_destruction_0ii+0x1c>
List<TCB> Scheduler::readyThreadQueue;
    80001b54:	00051863          	bnez	a0,80001b64 <_Z41__static_initialization_and_destruction_0ii+0x18>
    80001b58:	000107b7          	lui	a5,0x10
    80001b5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b60:	06f58863          	beq	a1,a5,80001bd0 <_Z41__static_initialization_and_destruction_0ii+0x84>
    80001b64:	00008067          	ret
}
    80001b68:	000107b7          	lui	a5,0x10
    80001b6c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b70:	fef592e3          	bne	a1,a5,80001b54 <_Z41__static_initialization_and_destruction_0ii+0x8>
            removeFirst();
        }
    }

public:
    List() : head(0), tail(0) {}
    80001b74:	00004797          	auipc	a5,0x4
    80001b78:	cbc78793          	addi	a5,a5,-836 # 80005830 <_ZN9Scheduler16readyThreadQueueE>
    80001b7c:	0007b023          	sd	zero,0(a5)
    80001b80:	0007b423          	sd	zero,8(a5)
    80001b84:	fd1ff06f          	j	80001b54 <_Z41__static_initialization_and_destruction_0ii+0x8>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001b88:	00004797          	auipc	a5,0x4
    80001b8c:	ca07b823          	sd	zero,-848(a5) # 80005838 <_ZN9Scheduler16readyThreadQueueE+0x8>

        T *ret = elem->data;
        delete elem;
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	e34080e7          	jalr	-460(ra) # 800019c4 <_ZdlPv>
        while(head){
    80001b98:	00004797          	auipc	a5,0x4
    80001b9c:	c987b783          	ld	a5,-872(a5) # 80005830 <_ZN9Scheduler16readyThreadQueueE>
    80001ba0:	02078063          	beqz	a5,80001bc0 <_Z41__static_initialization_and_destruction_0ii+0x74>
        if (!head) { return 0; }
    80001ba4:	00078513          	mv	a0,a5
    80001ba8:	fe0788e3          	beqz	a5,80001b98 <_Z41__static_initialization_and_destruction_0ii+0x4c>
        head = head->next;
    80001bac:	00853783          	ld	a5,8(a0)
    80001bb0:	00004717          	auipc	a4,0x4
    80001bb4:	c8f73023          	sd	a5,-896(a4) # 80005830 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001bb8:	fc079ce3          	bnez	a5,80001b90 <_Z41__static_initialization_and_destruction_0ii+0x44>
    80001bbc:	fcdff06f          	j	80001b88 <_Z41__static_initialization_and_destruction_0ii+0x3c>
    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret
        while(head){
    80001bd0:	00004797          	auipc	a5,0x4
    80001bd4:	c607b783          	ld	a5,-928(a5) # 80005830 <_ZN9Scheduler16readyThreadQueueE>
    80001bd8:	f80786e3          	beqz	a5,80001b64 <_Z41__static_initialization_and_destruction_0ii+0x18>
        if (!head) { return 0; }
    80001bdc:	00078513          	mv	a0,a5
    80001be0:	fe0788e3          	beqz	a5,80001bd0 <_Z41__static_initialization_and_destruction_0ii+0x84>
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	00813023          	sd	s0,0(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    80001bf4:	fb9ff06f          	j	80001bac <_Z41__static_initialization_and_destruction_0ii+0x60>

0000000080001bf8 <_ZN9Scheduler3getEv>:
{
    80001bf8:	fe010113          	addi	sp,sp,-32
    80001bfc:	00113c23          	sd	ra,24(sp)
    80001c00:	00813823          	sd	s0,16(sp)
    80001c04:	00913423          	sd	s1,8(sp)
    80001c08:	02010413          	addi	s0,sp,32
    80001c0c:	00004517          	auipc	a0,0x4
    80001c10:	c2453503          	ld	a0,-988(a0) # 80005830 <_ZN9Scheduler16readyThreadQueueE>
    80001c14:	04050263          	beqz	a0,80001c58 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001c18:	00853783          	ld	a5,8(a0)
    80001c1c:	00004717          	auipc	a4,0x4
    80001c20:	c0f73a23          	sd	a5,-1004(a4) # 80005830 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001c24:	02078463          	beqz	a5,80001c4c <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001c28:	00053483          	ld	s1,0(a0)
        delete elem;
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	d98080e7          	jalr	-616(ra) # 800019c4 <_ZdlPv>
}
    80001c34:	00048513          	mv	a0,s1
    80001c38:	01813083          	ld	ra,24(sp)
    80001c3c:	01013403          	ld	s0,16(sp)
    80001c40:	00813483          	ld	s1,8(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret
        if (!head) { tail = 0; }
    80001c4c:	00004797          	auipc	a5,0x4
    80001c50:	be07b623          	sd	zero,-1044(a5) # 80005838 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c54:	fd5ff06f          	j	80001c28 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001c58:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001c5c:	fd9ff06f          	j	80001c34 <_ZN9Scheduler3getEv+0x3c>

0000000080001c60 <_ZN9Scheduler3putEP3TCB>:
{
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	02010413          	addi	s0,sp,32
    80001c74:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001c78:	01000513          	li	a0,16
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	cf8080e7          	jalr	-776(ra) # 80001974 <_Znwm>
        Elem(T *data, Elem *next= 0) : data(data), next(next) {}
    80001c84:	00953023          	sd	s1,0(a0)
    80001c88:	00053423          	sd	zero,8(a0)
        if (tail)
    80001c8c:	00004797          	auipc	a5,0x4
    80001c90:	bac7b783          	ld	a5,-1108(a5) # 80005838 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c94:	02078263          	beqz	a5,80001cb8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001c98:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c9c:	00004797          	auipc	a5,0x4
    80001ca0:	b8a7be23          	sd	a0,-1124(a5) # 80005838 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001ca4:	01813083          	ld	ra,24(sp)
    80001ca8:	01013403          	ld	s0,16(sp)
    80001cac:	00813483          	ld	s1,8(sp)
    80001cb0:	02010113          	addi	sp,sp,32
    80001cb4:	00008067          	ret
            head = tail = elem;
    80001cb8:	00004797          	auipc	a5,0x4
    80001cbc:	b7878793          	addi	a5,a5,-1160 # 80005830 <_ZN9Scheduler16readyThreadQueueE>
    80001cc0:	00a7b423          	sd	a0,8(a5)
    80001cc4:	00a7b023          	sd	a0,0(a5)
    80001cc8:	fddff06f          	j	80001ca4 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001ccc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00113423          	sd	ra,8(sp)
    80001cd4:	00813023          	sd	s0,0(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	000105b7          	lui	a1,0x10
    80001ce0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ce4:	00100513          	li	a0,1
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	e64080e7          	jalr	-412(ra) # 80001b4c <_Z41__static_initialization_and_destruction_0ii>
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_GLOBAL__sub_D__ZN9Scheduler16readyThreadQueueE>:
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	000105b7          	lui	a1,0x10
    80001d14:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001d18:	00000513          	li	a0,0
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	e30080e7          	jalr	-464(ra) # 80001b4c <_Z41__static_initialization_and_destruction_0ii>
    80001d24:	00813083          	ld	ra,8(sp)
    80001d28:	00013403          	ld	s0,0(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(char const *string)
{
    80001d34:	fd010113          	addi	sp,sp,-48
    80001d38:	02113423          	sd	ra,40(sp)
    80001d3c:	02813023          	sd	s0,32(sp)
    80001d40:	00913c23          	sd	s1,24(sp)
    80001d44:	01213823          	sd	s2,16(sp)
    80001d48:	03010413          	addi	s0,sp,48
    80001d4c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d50:	100027f3          	csrr	a5,sstatus
    80001d54:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001d58:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d5c:	00200793          	li	a5,2
    80001d60:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001d64:	0004c503          	lbu	a0,0(s1)
    80001d68:	00050a63          	beqz	a0,80001d7c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	404080e7          	jalr	1028(ra) # 80004170 <__putc>
        string++;
    80001d74:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001d78:	fedff06f          	j	80001d64 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001d7c:	0009091b          	sext.w	s2,s2
    80001d80:	00297913          	andi	s2,s2,2
    80001d84:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d88:	10092073          	csrs	sstatus,s2

}
    80001d8c:	02813083          	ld	ra,40(sp)
    80001d90:	02013403          	ld	s0,32(sp)
    80001d94:	01813483          	ld	s1,24(sp)
    80001d98:	01013903          	ld	s2,16(sp)
    80001d9c:	03010113          	addi	sp,sp,48
    80001da0:	00008067          	ret

0000000080001da4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001da4:	fc010113          	addi	sp,sp,-64
    80001da8:	02113c23          	sd	ra,56(sp)
    80001dac:	02813823          	sd	s0,48(sp)
    80001db0:	02913423          	sd	s1,40(sp)
    80001db4:	03213023          	sd	s2,32(sp)
    80001db8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001dbc:	100027f3          	csrr	a5,sstatus
    80001dc0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001dc4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001dc8:	00200793          	li	a5,2
    80001dcc:	1007b073          	csrc	sstatus,a5
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001dd0:	00060463          	beqz	a2,80001dd8 <_Z8printIntiii+0x34>
    80001dd4:	08054463          	bltz	a0,80001e5c <_Z8printIntiii+0xb8>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001dd8:	0005051b          	sext.w	a0,a0
    neg = 0;
    80001ddc:	00000813          	li	a6,0
    }

    i = 0;
    80001de0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001de4:	0005879b          	sext.w	a5,a1
    80001de8:	02b5773b          	remuw	a4,a0,a1
    80001dec:	00048613          	mv	a2,s1
    80001df0:	0014849b          	addiw	s1,s1,1
    80001df4:	02071693          	slli	a3,a4,0x20
    80001df8:	0206d693          	srli	a3,a3,0x20
    80001dfc:	00004717          	auipc	a4,0x4
    80001e00:	96c70713          	addi	a4,a4,-1684 # 80005768 <digits>
    80001e04:	00d70733          	add	a4,a4,a3
    80001e08:	00074683          	lbu	a3,0(a4)
    80001e0c:	fe040713          	addi	a4,s0,-32
    80001e10:	00c70733          	add	a4,a4,a2
    80001e14:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001e18:	0005071b          	sext.w	a4,a0
    80001e1c:	02b5553b          	divuw	a0,a0,a1
    80001e20:	fcf772e3          	bgeu	a4,a5,80001de4 <_Z8printIntiii+0x40>
    if(neg)
    80001e24:	00080c63          	beqz	a6,80001e3c <_Z8printIntiii+0x98>
        buf[i++] = '-';
    80001e28:	fe040793          	addi	a5,s0,-32
    80001e2c:	009784b3          	add	s1,a5,s1
    80001e30:	02d00793          	li	a5,45
    80001e34:	fef48823          	sb	a5,-16(s1)
    80001e38:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001e3c:	fff4849b          	addiw	s1,s1,-1
    80001e40:	0204c463          	bltz	s1,80001e68 <_Z8printIntiii+0xc4>
        __putc(buf[i]);
    80001e44:	fe040793          	addi	a5,s0,-32
    80001e48:	009787b3          	add	a5,a5,s1
    80001e4c:	ff07c503          	lbu	a0,-16(a5)
    80001e50:	00002097          	auipc	ra,0x2
    80001e54:	320080e7          	jalr	800(ra) # 80004170 <__putc>
    80001e58:	fe5ff06f          	j	80001e3c <_Z8printIntiii+0x98>
        x = -xx;
    80001e5c:	40a0053b          	negw	a0,a0
        neg = 1;
    80001e60:	00100813          	li	a6,1
        x = -xx;
    80001e64:	f7dff06f          	j	80001de0 <_Z8printIntiii+0x3c>


    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e68:	0009091b          	sext.w	s2,s2
    80001e6c:	00297913          	andi	s2,s2,2
    80001e70:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e74:	10092073          	csrs	sstatus,s2


    80001e78:	03813083          	ld	ra,56(sp)
    80001e7c:	03013403          	ld	s0,48(sp)
    80001e80:	02813483          	ld	s1,40(sp)
    80001e84:	02013903          	ld	s2,32(sp)
    80001e88:	04010113          	addi	sp,sp,64
    80001e8c:	00008067          	ret

0000000080001e90 <start>:
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
    80001e9c:	300027f3          	csrr	a5,mstatus
    80001ea0:	ffffe737          	lui	a4,0xffffe
    80001ea4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d4f>
    80001ea8:	00e7f7b3          	and	a5,a5,a4
    80001eac:	00001737          	lui	a4,0x1
    80001eb0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001eb4:	00e7e7b3          	or	a5,a5,a4
    80001eb8:	30079073          	csrw	mstatus,a5
    80001ebc:	00000797          	auipc	a5,0x0
    80001ec0:	16078793          	addi	a5,a5,352 # 8000201c <system_main>
    80001ec4:	34179073          	csrw	mepc,a5
    80001ec8:	00000793          	li	a5,0
    80001ecc:	18079073          	csrw	satp,a5
    80001ed0:	000107b7          	lui	a5,0x10
    80001ed4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ed8:	30279073          	csrw	medeleg,a5
    80001edc:	30379073          	csrw	mideleg,a5
    80001ee0:	104027f3          	csrr	a5,sie
    80001ee4:	2227e793          	ori	a5,a5,546
    80001ee8:	10479073          	csrw	sie,a5
    80001eec:	fff00793          	li	a5,-1
    80001ef0:	00a7d793          	srli	a5,a5,0xa
    80001ef4:	3b079073          	csrw	pmpaddr0,a5
    80001ef8:	00f00793          	li	a5,15
    80001efc:	3a079073          	csrw	pmpcfg0,a5
    80001f00:	f14027f3          	csrr	a5,mhartid
    80001f04:	0200c737          	lui	a4,0x200c
    80001f08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f0c:	0007869b          	sext.w	a3,a5
    80001f10:	00269713          	slli	a4,a3,0x2
    80001f14:	000f4637          	lui	a2,0xf4
    80001f18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f1c:	00d70733          	add	a4,a4,a3
    80001f20:	0037979b          	slliw	a5,a5,0x3
    80001f24:	020046b7          	lui	a3,0x2004
    80001f28:	00d787b3          	add	a5,a5,a3
    80001f2c:	00c585b3          	add	a1,a1,a2
    80001f30:	00371693          	slli	a3,a4,0x3
    80001f34:	00004717          	auipc	a4,0x4
    80001f38:	90c70713          	addi	a4,a4,-1780 # 80005840 <timer_scratch>
    80001f3c:	00b7b023          	sd	a1,0(a5)
    80001f40:	00d70733          	add	a4,a4,a3
    80001f44:	00f73c23          	sd	a5,24(a4)
    80001f48:	02c73023          	sd	a2,32(a4)
    80001f4c:	34071073          	csrw	mscratch,a4
    80001f50:	00000797          	auipc	a5,0x0
    80001f54:	6e078793          	addi	a5,a5,1760 # 80002630 <timervec>
    80001f58:	30579073          	csrw	mtvec,a5
    80001f5c:	300027f3          	csrr	a5,mstatus
    80001f60:	0087e793          	ori	a5,a5,8
    80001f64:	30079073          	csrw	mstatus,a5
    80001f68:	304027f3          	csrr	a5,mie
    80001f6c:	0807e793          	ori	a5,a5,128
    80001f70:	30479073          	csrw	mie,a5
    80001f74:	f14027f3          	csrr	a5,mhartid
    80001f78:	0007879b          	sext.w	a5,a5
    80001f7c:	00078213          	mv	tp,a5
    80001f80:	30200073          	mret
    80001f84:	00813403          	ld	s0,8(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <timerinit>:
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    80001f9c:	f14027f3          	csrr	a5,mhartid
    80001fa0:	0200c737          	lui	a4,0x200c
    80001fa4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001fa8:	0007869b          	sext.w	a3,a5
    80001fac:	00269713          	slli	a4,a3,0x2
    80001fb0:	000f4637          	lui	a2,0xf4
    80001fb4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fb8:	00d70733          	add	a4,a4,a3
    80001fbc:	0037979b          	slliw	a5,a5,0x3
    80001fc0:	020046b7          	lui	a3,0x2004
    80001fc4:	00d787b3          	add	a5,a5,a3
    80001fc8:	00c585b3          	add	a1,a1,a2
    80001fcc:	00371693          	slli	a3,a4,0x3
    80001fd0:	00004717          	auipc	a4,0x4
    80001fd4:	87070713          	addi	a4,a4,-1936 # 80005840 <timer_scratch>
    80001fd8:	00b7b023          	sd	a1,0(a5)
    80001fdc:	00d70733          	add	a4,a4,a3
    80001fe0:	00f73c23          	sd	a5,24(a4)
    80001fe4:	02c73023          	sd	a2,32(a4)
    80001fe8:	34071073          	csrw	mscratch,a4
    80001fec:	00000797          	auipc	a5,0x0
    80001ff0:	64478793          	addi	a5,a5,1604 # 80002630 <timervec>
    80001ff4:	30579073          	csrw	mtvec,a5
    80001ff8:	300027f3          	csrr	a5,mstatus
    80001ffc:	0087e793          	ori	a5,a5,8
    80002000:	30079073          	csrw	mstatus,a5
    80002004:	304027f3          	csrr	a5,mie
    80002008:	0807e793          	ori	a5,a5,128
    8000200c:	30479073          	csrw	mie,a5
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <system_main>:
    8000201c:	fe010113          	addi	sp,sp,-32
    80002020:	00813823          	sd	s0,16(sp)
    80002024:	00913423          	sd	s1,8(sp)
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	02010413          	addi	s0,sp,32
    80002030:	00000097          	auipc	ra,0x0
    80002034:	0c4080e7          	jalr	196(ra) # 800020f4 <cpuid>
    80002038:	00003497          	auipc	s1,0x3
    8000203c:	7b848493          	addi	s1,s1,1976 # 800057f0 <started>
    80002040:	02050263          	beqz	a0,80002064 <system_main+0x48>
    80002044:	0004a783          	lw	a5,0(s1)
    80002048:	0007879b          	sext.w	a5,a5
    8000204c:	fe078ce3          	beqz	a5,80002044 <system_main+0x28>
    80002050:	0ff0000f          	fence
    80002054:	00003517          	auipc	a0,0x3
    80002058:	0b450513          	addi	a0,a0,180 # 80005108 <kvmincrease+0xe78>
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	a70080e7          	jalr	-1424(ra) # 80002acc <panic>
    80002064:	00001097          	auipc	ra,0x1
    80002068:	9c4080e7          	jalr	-1596(ra) # 80002a28 <consoleinit>
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	150080e7          	jalr	336(ra) # 800031bc <printfinit>
    80002074:	00003517          	auipc	a0,0x3
    80002078:	05c50513          	addi	a0,a0,92 # 800050d0 <kvmincrease+0xe40>
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	aac080e7          	jalr	-1364(ra) # 80002b28 <__printf>
    80002084:	00003517          	auipc	a0,0x3
    80002088:	05450513          	addi	a0,a0,84 # 800050d8 <kvmincrease+0xe48>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	a9c080e7          	jalr	-1380(ra) # 80002b28 <__printf>
    80002094:	00003517          	auipc	a0,0x3
    80002098:	03c50513          	addi	a0,a0,60 # 800050d0 <kvmincrease+0xe40>
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	a8c080e7          	jalr	-1396(ra) # 80002b28 <__printf>
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	4a4080e7          	jalr	1188(ra) # 80003548 <kinit>
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	148080e7          	jalr	328(ra) # 800021f4 <trapinit>
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	16c080e7          	jalr	364(ra) # 80002220 <trapinithart>
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	5b4080e7          	jalr	1460(ra) # 80002670 <plicinit>
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	5d4080e7          	jalr	1492(ra) # 80002698 <plicinithart>
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	078080e7          	jalr	120(ra) # 80002144 <userinit>
    800020d4:	0ff0000f          	fence
    800020d8:	00100793          	li	a5,1
    800020dc:	00003517          	auipc	a0,0x3
    800020e0:	01450513          	addi	a0,a0,20 # 800050f0 <kvmincrease+0xe60>
    800020e4:	00f4a023          	sw	a5,0(s1)
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	a40080e7          	jalr	-1472(ra) # 80002b28 <__printf>
    800020f0:	0000006f          	j	800020f0 <system_main+0xd4>

00000000800020f4 <cpuid>:
    800020f4:	ff010113          	addi	sp,sp,-16
    800020f8:	00813423          	sd	s0,8(sp)
    800020fc:	01010413          	addi	s0,sp,16
    80002100:	00020513          	mv	a0,tp
    80002104:	00813403          	ld	s0,8(sp)
    80002108:	0005051b          	sext.w	a0,a0
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <mycpu>:
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00813423          	sd	s0,8(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	00020793          	mv	a5,tp
    80002124:	00813403          	ld	s0,8(sp)
    80002128:	0007879b          	sext.w	a5,a5
    8000212c:	00779793          	slli	a5,a5,0x7
    80002130:	00004517          	auipc	a0,0x4
    80002134:	74050513          	addi	a0,a0,1856 # 80006870 <cpus>
    80002138:	00f50533          	add	a0,a0,a5
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <userinit>:
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	fffff317          	auipc	t1,0xfffff
    8000215c:	4fc30067          	jr	1276(t1) # 80001654 <main>

0000000080002160 <either_copyout>:
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	00113423          	sd	ra,8(sp)
    8000216c:	01010413          	addi	s0,sp,16
    80002170:	02051663          	bnez	a0,8000219c <either_copyout+0x3c>
    80002174:	00058513          	mv	a0,a1
    80002178:	00060593          	mv	a1,a2
    8000217c:	0006861b          	sext.w	a2,a3
    80002180:	00002097          	auipc	ra,0x2
    80002184:	c54080e7          	jalr	-940(ra) # 80003dd4 <__memmove>
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	00000513          	li	a0,0
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret
    8000219c:	00003517          	auipc	a0,0x3
    800021a0:	f9450513          	addi	a0,a0,-108 # 80005130 <kvmincrease+0xea0>
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	928080e7          	jalr	-1752(ra) # 80002acc <panic>

00000000800021ac <either_copyin>:
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00813023          	sd	s0,0(sp)
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	01010413          	addi	s0,sp,16
    800021bc:	02059463          	bnez	a1,800021e4 <either_copyin+0x38>
    800021c0:	00060593          	mv	a1,a2
    800021c4:	0006861b          	sext.w	a2,a3
    800021c8:	00002097          	auipc	ra,0x2
    800021cc:	c0c080e7          	jalr	-1012(ra) # 80003dd4 <__memmove>
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	00000513          	li	a0,0
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret
    800021e4:	00003517          	auipc	a0,0x3
    800021e8:	f7450513          	addi	a0,a0,-140 # 80005158 <kvmincrease+0xec8>
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	8e0080e7          	jalr	-1824(ra) # 80002acc <panic>

00000000800021f4 <trapinit>:
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00813423          	sd	s0,8(sp)
    800021fc:	01010413          	addi	s0,sp,16
    80002200:	00813403          	ld	s0,8(sp)
    80002204:	00003597          	auipc	a1,0x3
    80002208:	f7c58593          	addi	a1,a1,-132 # 80005180 <kvmincrease+0xef0>
    8000220c:	00004517          	auipc	a0,0x4
    80002210:	6e450513          	addi	a0,a0,1764 # 800068f0 <tickslock>
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00001317          	auipc	t1,0x1
    8000221c:	5c030067          	jr	1472(t1) # 800037d8 <initlock>

0000000080002220 <trapinithart>:
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813423          	sd	s0,8(sp)
    80002228:	01010413          	addi	s0,sp,16
    8000222c:	00000797          	auipc	a5,0x0
    80002230:	2f478793          	addi	a5,a5,756 # 80002520 <kernelvec>
    80002234:	10579073          	csrw	stvec,a5
    80002238:	00813403          	ld	s0,8(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret

0000000080002244 <usertrap>:
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00813423          	sd	s0,8(sp)
    8000224c:	01010413          	addi	s0,sp,16
    80002250:	00813403          	ld	s0,8(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <usertrapret>:
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <kerneltrap>:
    80002274:	fe010113          	addi	sp,sp,-32
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	00913423          	sd	s1,8(sp)
    80002284:	02010413          	addi	s0,sp,32
    80002288:	142025f3          	csrr	a1,scause
    8000228c:	100027f3          	csrr	a5,sstatus
    80002290:	0027f793          	andi	a5,a5,2
    80002294:	10079c63          	bnez	a5,800023ac <kerneltrap+0x138>
    80002298:	142027f3          	csrr	a5,scause
    8000229c:	0207ce63          	bltz	a5,800022d8 <kerneltrap+0x64>
    800022a0:	00003517          	auipc	a0,0x3
    800022a4:	f2850513          	addi	a0,a0,-216 # 800051c8 <kvmincrease+0xf38>
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	880080e7          	jalr	-1920(ra) # 80002b28 <__printf>
    800022b0:	141025f3          	csrr	a1,sepc
    800022b4:	14302673          	csrr	a2,stval
    800022b8:	00003517          	auipc	a0,0x3
    800022bc:	f2050513          	addi	a0,a0,-224 # 800051d8 <kvmincrease+0xf48>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	868080e7          	jalr	-1944(ra) # 80002b28 <__printf>
    800022c8:	00003517          	auipc	a0,0x3
    800022cc:	f2850513          	addi	a0,a0,-216 # 800051f0 <kvmincrease+0xf60>
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	7fc080e7          	jalr	2044(ra) # 80002acc <panic>
    800022d8:	0ff7f713          	andi	a4,a5,255
    800022dc:	00900693          	li	a3,9
    800022e0:	04d70063          	beq	a4,a3,80002320 <kerneltrap+0xac>
    800022e4:	fff00713          	li	a4,-1
    800022e8:	03f71713          	slli	a4,a4,0x3f
    800022ec:	00170713          	addi	a4,a4,1
    800022f0:	fae798e3          	bne	a5,a4,800022a0 <kerneltrap+0x2c>
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	e00080e7          	jalr	-512(ra) # 800020f4 <cpuid>
    800022fc:	06050663          	beqz	a0,80002368 <kerneltrap+0xf4>
    80002300:	144027f3          	csrr	a5,sip
    80002304:	ffd7f793          	andi	a5,a5,-3
    80002308:	14479073          	csrw	sip,a5
    8000230c:	01813083          	ld	ra,24(sp)
    80002310:	01013403          	ld	s0,16(sp)
    80002314:	00813483          	ld	s1,8(sp)
    80002318:	02010113          	addi	sp,sp,32
    8000231c:	00008067          	ret
    80002320:	00000097          	auipc	ra,0x0
    80002324:	3c4080e7          	jalr	964(ra) # 800026e4 <plic_claim>
    80002328:	00a00793          	li	a5,10
    8000232c:	00050493          	mv	s1,a0
    80002330:	06f50863          	beq	a0,a5,800023a0 <kerneltrap+0x12c>
    80002334:	fc050ce3          	beqz	a0,8000230c <kerneltrap+0x98>
    80002338:	00050593          	mv	a1,a0
    8000233c:	00003517          	auipc	a0,0x3
    80002340:	e6c50513          	addi	a0,a0,-404 # 800051a8 <kvmincrease+0xf18>
    80002344:	00000097          	auipc	ra,0x0
    80002348:	7e4080e7          	jalr	2020(ra) # 80002b28 <__printf>
    8000234c:	01013403          	ld	s0,16(sp)
    80002350:	01813083          	ld	ra,24(sp)
    80002354:	00048513          	mv	a0,s1
    80002358:	00813483          	ld	s1,8(sp)
    8000235c:	02010113          	addi	sp,sp,32
    80002360:	00000317          	auipc	t1,0x0
    80002364:	3bc30067          	jr	956(t1) # 8000271c <plic_complete>
    80002368:	00004517          	auipc	a0,0x4
    8000236c:	58850513          	addi	a0,a0,1416 # 800068f0 <tickslock>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	48c080e7          	jalr	1164(ra) # 800037fc <acquire>
    80002378:	00003717          	auipc	a4,0x3
    8000237c:	47c70713          	addi	a4,a4,1148 # 800057f4 <ticks>
    80002380:	00072783          	lw	a5,0(a4)
    80002384:	00004517          	auipc	a0,0x4
    80002388:	56c50513          	addi	a0,a0,1388 # 800068f0 <tickslock>
    8000238c:	0017879b          	addiw	a5,a5,1
    80002390:	00f72023          	sw	a5,0(a4)
    80002394:	00001097          	auipc	ra,0x1
    80002398:	534080e7          	jalr	1332(ra) # 800038c8 <release>
    8000239c:	f65ff06f          	j	80002300 <kerneltrap+0x8c>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	090080e7          	jalr	144(ra) # 80003430 <uartintr>
    800023a8:	fa5ff06f          	j	8000234c <kerneltrap+0xd8>
    800023ac:	00003517          	auipc	a0,0x3
    800023b0:	ddc50513          	addi	a0,a0,-548 # 80005188 <kvmincrease+0xef8>
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	718080e7          	jalr	1816(ra) # 80002acc <panic>

00000000800023bc <clockintr>:
    800023bc:	fe010113          	addi	sp,sp,-32
    800023c0:	00813823          	sd	s0,16(sp)
    800023c4:	00913423          	sd	s1,8(sp)
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	02010413          	addi	s0,sp,32
    800023d0:	00004497          	auipc	s1,0x4
    800023d4:	52048493          	addi	s1,s1,1312 # 800068f0 <tickslock>
    800023d8:	00048513          	mv	a0,s1
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	420080e7          	jalr	1056(ra) # 800037fc <acquire>
    800023e4:	00003717          	auipc	a4,0x3
    800023e8:	41070713          	addi	a4,a4,1040 # 800057f4 <ticks>
    800023ec:	00072783          	lw	a5,0(a4)
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	01813083          	ld	ra,24(sp)
    800023f8:	00048513          	mv	a0,s1
    800023fc:	0017879b          	addiw	a5,a5,1
    80002400:	00813483          	ld	s1,8(sp)
    80002404:	00f72023          	sw	a5,0(a4)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00001317          	auipc	t1,0x1
    80002410:	4bc30067          	jr	1212(t1) # 800038c8 <release>

0000000080002414 <devintr>:
    80002414:	142027f3          	csrr	a5,scause
    80002418:	00000513          	li	a0,0
    8000241c:	0007c463          	bltz	a5,80002424 <devintr+0x10>
    80002420:	00008067          	ret
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00113c23          	sd	ra,24(sp)
    80002430:	00913423          	sd	s1,8(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	0ff7f713          	andi	a4,a5,255
    8000243c:	00900693          	li	a3,9
    80002440:	04d70c63          	beq	a4,a3,80002498 <devintr+0x84>
    80002444:	fff00713          	li	a4,-1
    80002448:	03f71713          	slli	a4,a4,0x3f
    8000244c:	00170713          	addi	a4,a4,1
    80002450:	00e78c63          	beq	a5,a4,80002468 <devintr+0x54>
    80002454:	01813083          	ld	ra,24(sp)
    80002458:	01013403          	ld	s0,16(sp)
    8000245c:	00813483          	ld	s1,8(sp)
    80002460:	02010113          	addi	sp,sp,32
    80002464:	00008067          	ret
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	c8c080e7          	jalr	-884(ra) # 800020f4 <cpuid>
    80002470:	06050663          	beqz	a0,800024dc <devintr+0xc8>
    80002474:	144027f3          	csrr	a5,sip
    80002478:	ffd7f793          	andi	a5,a5,-3
    8000247c:	14479073          	csrw	sip,a5
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	01013403          	ld	s0,16(sp)
    80002488:	00813483          	ld	s1,8(sp)
    8000248c:	00200513          	li	a0,2
    80002490:	02010113          	addi	sp,sp,32
    80002494:	00008067          	ret
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	24c080e7          	jalr	588(ra) # 800026e4 <plic_claim>
    800024a0:	00a00793          	li	a5,10
    800024a4:	00050493          	mv	s1,a0
    800024a8:	06f50663          	beq	a0,a5,80002514 <devintr+0x100>
    800024ac:	00100513          	li	a0,1
    800024b0:	fa0482e3          	beqz	s1,80002454 <devintr+0x40>
    800024b4:	00048593          	mv	a1,s1
    800024b8:	00003517          	auipc	a0,0x3
    800024bc:	cf050513          	addi	a0,a0,-784 # 800051a8 <kvmincrease+0xf18>
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	668080e7          	jalr	1640(ra) # 80002b28 <__printf>
    800024c8:	00048513          	mv	a0,s1
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	250080e7          	jalr	592(ra) # 8000271c <plic_complete>
    800024d4:	00100513          	li	a0,1
    800024d8:	f7dff06f          	j	80002454 <devintr+0x40>
    800024dc:	00004517          	auipc	a0,0x4
    800024e0:	41450513          	addi	a0,a0,1044 # 800068f0 <tickslock>
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	318080e7          	jalr	792(ra) # 800037fc <acquire>
    800024ec:	00003717          	auipc	a4,0x3
    800024f0:	30870713          	addi	a4,a4,776 # 800057f4 <ticks>
    800024f4:	00072783          	lw	a5,0(a4)
    800024f8:	00004517          	auipc	a0,0x4
    800024fc:	3f850513          	addi	a0,a0,1016 # 800068f0 <tickslock>
    80002500:	0017879b          	addiw	a5,a5,1
    80002504:	00f72023          	sw	a5,0(a4)
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	3c0080e7          	jalr	960(ra) # 800038c8 <release>
    80002510:	f65ff06f          	j	80002474 <devintr+0x60>
    80002514:	00001097          	auipc	ra,0x1
    80002518:	f1c080e7          	jalr	-228(ra) # 80003430 <uartintr>
    8000251c:	fadff06f          	j	800024c8 <devintr+0xb4>

0000000080002520 <kernelvec>:
    80002520:	f0010113          	addi	sp,sp,-256
    80002524:	00113023          	sd	ra,0(sp)
    80002528:	00213423          	sd	sp,8(sp)
    8000252c:	00313823          	sd	gp,16(sp)
    80002530:	00413c23          	sd	tp,24(sp)
    80002534:	02513023          	sd	t0,32(sp)
    80002538:	02613423          	sd	t1,40(sp)
    8000253c:	02713823          	sd	t2,48(sp)
    80002540:	02813c23          	sd	s0,56(sp)
    80002544:	04913023          	sd	s1,64(sp)
    80002548:	04a13423          	sd	a0,72(sp)
    8000254c:	04b13823          	sd	a1,80(sp)
    80002550:	04c13c23          	sd	a2,88(sp)
    80002554:	06d13023          	sd	a3,96(sp)
    80002558:	06e13423          	sd	a4,104(sp)
    8000255c:	06f13823          	sd	a5,112(sp)
    80002560:	07013c23          	sd	a6,120(sp)
    80002564:	09113023          	sd	a7,128(sp)
    80002568:	09213423          	sd	s2,136(sp)
    8000256c:	09313823          	sd	s3,144(sp)
    80002570:	09413c23          	sd	s4,152(sp)
    80002574:	0b513023          	sd	s5,160(sp)
    80002578:	0b613423          	sd	s6,168(sp)
    8000257c:	0b713823          	sd	s7,176(sp)
    80002580:	0b813c23          	sd	s8,184(sp)
    80002584:	0d913023          	sd	s9,192(sp)
    80002588:	0da13423          	sd	s10,200(sp)
    8000258c:	0db13823          	sd	s11,208(sp)
    80002590:	0dc13c23          	sd	t3,216(sp)
    80002594:	0fd13023          	sd	t4,224(sp)
    80002598:	0fe13423          	sd	t5,232(sp)
    8000259c:	0ff13823          	sd	t6,240(sp)
    800025a0:	cd5ff0ef          	jal	ra,80002274 <kerneltrap>
    800025a4:	00013083          	ld	ra,0(sp)
    800025a8:	00813103          	ld	sp,8(sp)
    800025ac:	01013183          	ld	gp,16(sp)
    800025b0:	02013283          	ld	t0,32(sp)
    800025b4:	02813303          	ld	t1,40(sp)
    800025b8:	03013383          	ld	t2,48(sp)
    800025bc:	03813403          	ld	s0,56(sp)
    800025c0:	04013483          	ld	s1,64(sp)
    800025c4:	04813503          	ld	a0,72(sp)
    800025c8:	05013583          	ld	a1,80(sp)
    800025cc:	05813603          	ld	a2,88(sp)
    800025d0:	06013683          	ld	a3,96(sp)
    800025d4:	06813703          	ld	a4,104(sp)
    800025d8:	07013783          	ld	a5,112(sp)
    800025dc:	07813803          	ld	a6,120(sp)
    800025e0:	08013883          	ld	a7,128(sp)
    800025e4:	08813903          	ld	s2,136(sp)
    800025e8:	09013983          	ld	s3,144(sp)
    800025ec:	09813a03          	ld	s4,152(sp)
    800025f0:	0a013a83          	ld	s5,160(sp)
    800025f4:	0a813b03          	ld	s6,168(sp)
    800025f8:	0b013b83          	ld	s7,176(sp)
    800025fc:	0b813c03          	ld	s8,184(sp)
    80002600:	0c013c83          	ld	s9,192(sp)
    80002604:	0c813d03          	ld	s10,200(sp)
    80002608:	0d013d83          	ld	s11,208(sp)
    8000260c:	0d813e03          	ld	t3,216(sp)
    80002610:	0e013e83          	ld	t4,224(sp)
    80002614:	0e813f03          	ld	t5,232(sp)
    80002618:	0f013f83          	ld	t6,240(sp)
    8000261c:	10010113          	addi	sp,sp,256
    80002620:	10200073          	sret
    80002624:	00000013          	nop
    80002628:	00000013          	nop
    8000262c:	00000013          	nop

0000000080002630 <timervec>:
    80002630:	34051573          	csrrw	a0,mscratch,a0
    80002634:	00b53023          	sd	a1,0(a0)
    80002638:	00c53423          	sd	a2,8(a0)
    8000263c:	00d53823          	sd	a3,16(a0)
    80002640:	01853583          	ld	a1,24(a0)
    80002644:	02053603          	ld	a2,32(a0)
    80002648:	0005b683          	ld	a3,0(a1)
    8000264c:	00c686b3          	add	a3,a3,a2
    80002650:	00d5b023          	sd	a3,0(a1)
    80002654:	00200593          	li	a1,2
    80002658:	14459073          	csrw	sip,a1
    8000265c:	01053683          	ld	a3,16(a0)
    80002660:	00853603          	ld	a2,8(a0)
    80002664:	00053583          	ld	a1,0(a0)
    80002668:	34051573          	csrrw	a0,mscratch,a0
    8000266c:	30200073          	mret

0000000080002670 <plicinit>:
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00813423          	sd	s0,8(sp)
    80002678:	01010413          	addi	s0,sp,16
    8000267c:	00813403          	ld	s0,8(sp)
    80002680:	0c0007b7          	lui	a5,0xc000
    80002684:	00100713          	li	a4,1
    80002688:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000268c:	00e7a223          	sw	a4,4(a5)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <plicinithart>:
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	a4c080e7          	jalr	-1460(ra) # 800020f4 <cpuid>
    800026b0:	0085171b          	slliw	a4,a0,0x8
    800026b4:	0c0027b7          	lui	a5,0xc002
    800026b8:	00e787b3          	add	a5,a5,a4
    800026bc:	40200713          	li	a4,1026
    800026c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800026c4:	00813083          	ld	ra,8(sp)
    800026c8:	00013403          	ld	s0,0(sp)
    800026cc:	00d5151b          	slliw	a0,a0,0xd
    800026d0:	0c2017b7          	lui	a5,0xc201
    800026d4:	00a78533          	add	a0,a5,a0
    800026d8:	00052023          	sw	zero,0(a0)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <plic_claim>:
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00813023          	sd	s0,0(sp)
    800026ec:	00113423          	sd	ra,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	a00080e7          	jalr	-1536(ra) # 800020f4 <cpuid>
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	00d5151b          	slliw	a0,a0,0xd
    80002708:	0c2017b7          	lui	a5,0xc201
    8000270c:	00a78533          	add	a0,a5,a0
    80002710:	00452503          	lw	a0,4(a0)
    80002714:	01010113          	addi	sp,sp,16
    80002718:	00008067          	ret

000000008000271c <plic_complete>:
    8000271c:	fe010113          	addi	sp,sp,-32
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	02010413          	addi	s0,sp,32
    80002730:	00050493          	mv	s1,a0
    80002734:	00000097          	auipc	ra,0x0
    80002738:	9c0080e7          	jalr	-1600(ra) # 800020f4 <cpuid>
    8000273c:	01813083          	ld	ra,24(sp)
    80002740:	01013403          	ld	s0,16(sp)
    80002744:	00d5179b          	slliw	a5,a0,0xd
    80002748:	0c201737          	lui	a4,0xc201
    8000274c:	00f707b3          	add	a5,a4,a5
    80002750:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002754:	00813483          	ld	s1,8(sp)
    80002758:	02010113          	addi	sp,sp,32
    8000275c:	00008067          	ret

0000000080002760 <consolewrite>:
    80002760:	fb010113          	addi	sp,sp,-80
    80002764:	04813023          	sd	s0,64(sp)
    80002768:	04113423          	sd	ra,72(sp)
    8000276c:	02913c23          	sd	s1,56(sp)
    80002770:	03213823          	sd	s2,48(sp)
    80002774:	03313423          	sd	s3,40(sp)
    80002778:	03413023          	sd	s4,32(sp)
    8000277c:	01513c23          	sd	s5,24(sp)
    80002780:	05010413          	addi	s0,sp,80
    80002784:	06c05c63          	blez	a2,800027fc <consolewrite+0x9c>
    80002788:	00060993          	mv	s3,a2
    8000278c:	00050a13          	mv	s4,a0
    80002790:	00058493          	mv	s1,a1
    80002794:	00000913          	li	s2,0
    80002798:	fff00a93          	li	s5,-1
    8000279c:	01c0006f          	j	800027b8 <consolewrite+0x58>
    800027a0:	fbf44503          	lbu	a0,-65(s0)
    800027a4:	0019091b          	addiw	s2,s2,1
    800027a8:	00148493          	addi	s1,s1,1
    800027ac:	00001097          	auipc	ra,0x1
    800027b0:	a9c080e7          	jalr	-1380(ra) # 80003248 <uartputc>
    800027b4:	03298063          	beq	s3,s2,800027d4 <consolewrite+0x74>
    800027b8:	00048613          	mv	a2,s1
    800027bc:	00100693          	li	a3,1
    800027c0:	000a0593          	mv	a1,s4
    800027c4:	fbf40513          	addi	a0,s0,-65
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	9e4080e7          	jalr	-1564(ra) # 800021ac <either_copyin>
    800027d0:	fd5518e3          	bne	a0,s5,800027a0 <consolewrite+0x40>
    800027d4:	04813083          	ld	ra,72(sp)
    800027d8:	04013403          	ld	s0,64(sp)
    800027dc:	03813483          	ld	s1,56(sp)
    800027e0:	02813983          	ld	s3,40(sp)
    800027e4:	02013a03          	ld	s4,32(sp)
    800027e8:	01813a83          	ld	s5,24(sp)
    800027ec:	00090513          	mv	a0,s2
    800027f0:	03013903          	ld	s2,48(sp)
    800027f4:	05010113          	addi	sp,sp,80
    800027f8:	00008067          	ret
    800027fc:	00000913          	li	s2,0
    80002800:	fd5ff06f          	j	800027d4 <consolewrite+0x74>

0000000080002804 <consoleread>:
    80002804:	f9010113          	addi	sp,sp,-112
    80002808:	06813023          	sd	s0,96(sp)
    8000280c:	04913c23          	sd	s1,88(sp)
    80002810:	05213823          	sd	s2,80(sp)
    80002814:	05313423          	sd	s3,72(sp)
    80002818:	05413023          	sd	s4,64(sp)
    8000281c:	03513c23          	sd	s5,56(sp)
    80002820:	03613823          	sd	s6,48(sp)
    80002824:	03713423          	sd	s7,40(sp)
    80002828:	03813023          	sd	s8,32(sp)
    8000282c:	06113423          	sd	ra,104(sp)
    80002830:	01913c23          	sd	s9,24(sp)
    80002834:	07010413          	addi	s0,sp,112
    80002838:	00060b93          	mv	s7,a2
    8000283c:	00050913          	mv	s2,a0
    80002840:	00058c13          	mv	s8,a1
    80002844:	00060b1b          	sext.w	s6,a2
    80002848:	00004497          	auipc	s1,0x4
    8000284c:	0d048493          	addi	s1,s1,208 # 80006918 <cons>
    80002850:	00400993          	li	s3,4
    80002854:	fff00a13          	li	s4,-1
    80002858:	00a00a93          	li	s5,10
    8000285c:	05705e63          	blez	s7,800028b8 <consoleread+0xb4>
    80002860:	09c4a703          	lw	a4,156(s1)
    80002864:	0984a783          	lw	a5,152(s1)
    80002868:	0007071b          	sext.w	a4,a4
    8000286c:	08e78463          	beq	a5,a4,800028f4 <consoleread+0xf0>
    80002870:	07f7f713          	andi	a4,a5,127
    80002874:	00e48733          	add	a4,s1,a4
    80002878:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000287c:	0017869b          	addiw	a3,a5,1
    80002880:	08d4ac23          	sw	a3,152(s1)
    80002884:	00070c9b          	sext.w	s9,a4
    80002888:	0b370663          	beq	a4,s3,80002934 <consoleread+0x130>
    8000288c:	00100693          	li	a3,1
    80002890:	f9f40613          	addi	a2,s0,-97
    80002894:	000c0593          	mv	a1,s8
    80002898:	00090513          	mv	a0,s2
    8000289c:	f8e40fa3          	sb	a4,-97(s0)
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	8c0080e7          	jalr	-1856(ra) # 80002160 <either_copyout>
    800028a8:	01450863          	beq	a0,s4,800028b8 <consoleread+0xb4>
    800028ac:	001c0c13          	addi	s8,s8,1
    800028b0:	fffb8b9b          	addiw	s7,s7,-1
    800028b4:	fb5c94e3          	bne	s9,s5,8000285c <consoleread+0x58>
    800028b8:	000b851b          	sext.w	a0,s7
    800028bc:	06813083          	ld	ra,104(sp)
    800028c0:	06013403          	ld	s0,96(sp)
    800028c4:	05813483          	ld	s1,88(sp)
    800028c8:	05013903          	ld	s2,80(sp)
    800028cc:	04813983          	ld	s3,72(sp)
    800028d0:	04013a03          	ld	s4,64(sp)
    800028d4:	03813a83          	ld	s5,56(sp)
    800028d8:	02813b83          	ld	s7,40(sp)
    800028dc:	02013c03          	ld	s8,32(sp)
    800028e0:	01813c83          	ld	s9,24(sp)
    800028e4:	40ab053b          	subw	a0,s6,a0
    800028e8:	03013b03          	ld	s6,48(sp)
    800028ec:	07010113          	addi	sp,sp,112
    800028f0:	00008067          	ret
    800028f4:	00001097          	auipc	ra,0x1
    800028f8:	1d8080e7          	jalr	472(ra) # 80003acc <push_on>
    800028fc:	0984a703          	lw	a4,152(s1)
    80002900:	09c4a783          	lw	a5,156(s1)
    80002904:	0007879b          	sext.w	a5,a5
    80002908:	fef70ce3          	beq	a4,a5,80002900 <consoleread+0xfc>
    8000290c:	00001097          	auipc	ra,0x1
    80002910:	234080e7          	jalr	564(ra) # 80003b40 <pop_on>
    80002914:	0984a783          	lw	a5,152(s1)
    80002918:	07f7f713          	andi	a4,a5,127
    8000291c:	00e48733          	add	a4,s1,a4
    80002920:	01874703          	lbu	a4,24(a4)
    80002924:	0017869b          	addiw	a3,a5,1
    80002928:	08d4ac23          	sw	a3,152(s1)
    8000292c:	00070c9b          	sext.w	s9,a4
    80002930:	f5371ee3          	bne	a4,s3,8000288c <consoleread+0x88>
    80002934:	000b851b          	sext.w	a0,s7
    80002938:	f96bf2e3          	bgeu	s7,s6,800028bc <consoleread+0xb8>
    8000293c:	08f4ac23          	sw	a5,152(s1)
    80002940:	f7dff06f          	j	800028bc <consoleread+0xb8>

0000000080002944 <consputc>:
    80002944:	10000793          	li	a5,256
    80002948:	00f50663          	beq	a0,a5,80002954 <consputc+0x10>
    8000294c:	00001317          	auipc	t1,0x1
    80002950:	9f430067          	jr	-1548(t1) # 80003340 <uartputc_sync>
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00113423          	sd	ra,8(sp)
    8000295c:	00813023          	sd	s0,0(sp)
    80002960:	01010413          	addi	s0,sp,16
    80002964:	00800513          	li	a0,8
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	9d8080e7          	jalr	-1576(ra) # 80003340 <uartputc_sync>
    80002970:	02000513          	li	a0,32
    80002974:	00001097          	auipc	ra,0x1
    80002978:	9cc080e7          	jalr	-1588(ra) # 80003340 <uartputc_sync>
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	00813083          	ld	ra,8(sp)
    80002984:	00800513          	li	a0,8
    80002988:	01010113          	addi	sp,sp,16
    8000298c:	00001317          	auipc	t1,0x1
    80002990:	9b430067          	jr	-1612(t1) # 80003340 <uartputc_sync>

0000000080002994 <consoleintr>:
    80002994:	fe010113          	addi	sp,sp,-32
    80002998:	00813823          	sd	s0,16(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	01213023          	sd	s2,0(sp)
    800029a4:	00113c23          	sd	ra,24(sp)
    800029a8:	02010413          	addi	s0,sp,32
    800029ac:	00004917          	auipc	s2,0x4
    800029b0:	f6c90913          	addi	s2,s2,-148 # 80006918 <cons>
    800029b4:	00050493          	mv	s1,a0
    800029b8:	00090513          	mv	a0,s2
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	e40080e7          	jalr	-448(ra) # 800037fc <acquire>
    800029c4:	02048c63          	beqz	s1,800029fc <consoleintr+0x68>
    800029c8:	0a092783          	lw	a5,160(s2)
    800029cc:	09892703          	lw	a4,152(s2)
    800029d0:	07f00693          	li	a3,127
    800029d4:	40e7873b          	subw	a4,a5,a4
    800029d8:	02e6e263          	bltu	a3,a4,800029fc <consoleintr+0x68>
    800029dc:	00d00713          	li	a4,13
    800029e0:	04e48063          	beq	s1,a4,80002a20 <consoleintr+0x8c>
    800029e4:	07f7f713          	andi	a4,a5,127
    800029e8:	00e90733          	add	a4,s2,a4
    800029ec:	0017879b          	addiw	a5,a5,1
    800029f0:	0af92023          	sw	a5,160(s2)
    800029f4:	00970c23          	sb	s1,24(a4)
    800029f8:	08f92e23          	sw	a5,156(s2)
    800029fc:	01013403          	ld	s0,16(sp)
    80002a00:	01813083          	ld	ra,24(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	00013903          	ld	s2,0(sp)
    80002a0c:	00004517          	auipc	a0,0x4
    80002a10:	f0c50513          	addi	a0,a0,-244 # 80006918 <cons>
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00001317          	auipc	t1,0x1
    80002a1c:	eb030067          	jr	-336(t1) # 800038c8 <release>
    80002a20:	00a00493          	li	s1,10
    80002a24:	fc1ff06f          	j	800029e4 <consoleintr+0x50>

0000000080002a28 <consoleinit>:
    80002a28:	fe010113          	addi	sp,sp,-32
    80002a2c:	00113c23          	sd	ra,24(sp)
    80002a30:	00813823          	sd	s0,16(sp)
    80002a34:	00913423          	sd	s1,8(sp)
    80002a38:	02010413          	addi	s0,sp,32
    80002a3c:	00004497          	auipc	s1,0x4
    80002a40:	edc48493          	addi	s1,s1,-292 # 80006918 <cons>
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00002597          	auipc	a1,0x2
    80002a4c:	7b858593          	addi	a1,a1,1976 # 80005200 <kvmincrease+0xf70>
    80002a50:	00001097          	auipc	ra,0x1
    80002a54:	d88080e7          	jalr	-632(ra) # 800037d8 <initlock>
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	7ac080e7          	jalr	1964(ra) # 80003204 <uartinit>
    80002a60:	01813083          	ld	ra,24(sp)
    80002a64:	01013403          	ld	s0,16(sp)
    80002a68:	00000797          	auipc	a5,0x0
    80002a6c:	d9c78793          	addi	a5,a5,-612 # 80002804 <consoleread>
    80002a70:	0af4bc23          	sd	a5,184(s1)
    80002a74:	00000797          	auipc	a5,0x0
    80002a78:	cec78793          	addi	a5,a5,-788 # 80002760 <consolewrite>
    80002a7c:	0cf4b023          	sd	a5,192(s1)
    80002a80:	00813483          	ld	s1,8(sp)
    80002a84:	02010113          	addi	sp,sp,32
    80002a88:	00008067          	ret

0000000080002a8c <console_read>:
    80002a8c:	ff010113          	addi	sp,sp,-16
    80002a90:	00813423          	sd	s0,8(sp)
    80002a94:	01010413          	addi	s0,sp,16
    80002a98:	00813403          	ld	s0,8(sp)
    80002a9c:	00004317          	auipc	t1,0x4
    80002aa0:	f3433303          	ld	t1,-204(t1) # 800069d0 <devsw+0x10>
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00030067          	jr	t1

0000000080002aac <console_write>:
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00813423          	sd	s0,8(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	00004317          	auipc	t1,0x4
    80002ac0:	f1c33303          	ld	t1,-228(t1) # 800069d8 <devsw+0x18>
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00030067          	jr	t1

0000000080002acc <panic>:
    80002acc:	fe010113          	addi	sp,sp,-32
    80002ad0:	00113c23          	sd	ra,24(sp)
    80002ad4:	00813823          	sd	s0,16(sp)
    80002ad8:	00913423          	sd	s1,8(sp)
    80002adc:	02010413          	addi	s0,sp,32
    80002ae0:	00050493          	mv	s1,a0
    80002ae4:	00002517          	auipc	a0,0x2
    80002ae8:	72450513          	addi	a0,a0,1828 # 80005208 <kvmincrease+0xf78>
    80002aec:	00004797          	auipc	a5,0x4
    80002af0:	f807a623          	sw	zero,-116(a5) # 80006a78 <pr+0x18>
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	034080e7          	jalr	52(ra) # 80002b28 <__printf>
    80002afc:	00048513          	mv	a0,s1
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	028080e7          	jalr	40(ra) # 80002b28 <__printf>
    80002b08:	00002517          	auipc	a0,0x2
    80002b0c:	5c850513          	addi	a0,a0,1480 # 800050d0 <kvmincrease+0xe40>
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	018080e7          	jalr	24(ra) # 80002b28 <__printf>
    80002b18:	00100793          	li	a5,1
    80002b1c:	00003717          	auipc	a4,0x3
    80002b20:	ccf72e23          	sw	a5,-804(a4) # 800057f8 <panicked>
    80002b24:	0000006f          	j	80002b24 <panic+0x58>

0000000080002b28 <__printf>:
    80002b28:	f3010113          	addi	sp,sp,-208
    80002b2c:	08813023          	sd	s0,128(sp)
    80002b30:	07313423          	sd	s3,104(sp)
    80002b34:	09010413          	addi	s0,sp,144
    80002b38:	05813023          	sd	s8,64(sp)
    80002b3c:	08113423          	sd	ra,136(sp)
    80002b40:	06913c23          	sd	s1,120(sp)
    80002b44:	07213823          	sd	s2,112(sp)
    80002b48:	07413023          	sd	s4,96(sp)
    80002b4c:	05513c23          	sd	s5,88(sp)
    80002b50:	05613823          	sd	s6,80(sp)
    80002b54:	05713423          	sd	s7,72(sp)
    80002b58:	03913c23          	sd	s9,56(sp)
    80002b5c:	03a13823          	sd	s10,48(sp)
    80002b60:	03b13423          	sd	s11,40(sp)
    80002b64:	00004317          	auipc	t1,0x4
    80002b68:	efc30313          	addi	t1,t1,-260 # 80006a60 <pr>
    80002b6c:	01832c03          	lw	s8,24(t1)
    80002b70:	00b43423          	sd	a1,8(s0)
    80002b74:	00c43823          	sd	a2,16(s0)
    80002b78:	00d43c23          	sd	a3,24(s0)
    80002b7c:	02e43023          	sd	a4,32(s0)
    80002b80:	02f43423          	sd	a5,40(s0)
    80002b84:	03043823          	sd	a6,48(s0)
    80002b88:	03143c23          	sd	a7,56(s0)
    80002b8c:	00050993          	mv	s3,a0
    80002b90:	4a0c1663          	bnez	s8,8000303c <__printf+0x514>
    80002b94:	60098c63          	beqz	s3,800031ac <__printf+0x684>
    80002b98:	0009c503          	lbu	a0,0(s3)
    80002b9c:	00840793          	addi	a5,s0,8
    80002ba0:	f6f43c23          	sd	a5,-136(s0)
    80002ba4:	00000493          	li	s1,0
    80002ba8:	22050063          	beqz	a0,80002dc8 <__printf+0x2a0>
    80002bac:	00002a37          	lui	s4,0x2
    80002bb0:	00018ab7          	lui	s5,0x18
    80002bb4:	000f4b37          	lui	s6,0xf4
    80002bb8:	00989bb7          	lui	s7,0x989
    80002bbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002bc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002bc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002bc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002bcc:	00148c9b          	addiw	s9,s1,1
    80002bd0:	02500793          	li	a5,37
    80002bd4:	01998933          	add	s2,s3,s9
    80002bd8:	38f51263          	bne	a0,a5,80002f5c <__printf+0x434>
    80002bdc:	00094783          	lbu	a5,0(s2)
    80002be0:	00078c9b          	sext.w	s9,a5
    80002be4:	1e078263          	beqz	a5,80002dc8 <__printf+0x2a0>
    80002be8:	0024849b          	addiw	s1,s1,2
    80002bec:	07000713          	li	a4,112
    80002bf0:	00998933          	add	s2,s3,s1
    80002bf4:	38e78a63          	beq	a5,a4,80002f88 <__printf+0x460>
    80002bf8:	20f76863          	bltu	a4,a5,80002e08 <__printf+0x2e0>
    80002bfc:	42a78863          	beq	a5,a0,8000302c <__printf+0x504>
    80002c00:	06400713          	li	a4,100
    80002c04:	40e79663          	bne	a5,a4,80003010 <__printf+0x4e8>
    80002c08:	f7843783          	ld	a5,-136(s0)
    80002c0c:	0007a603          	lw	a2,0(a5)
    80002c10:	00878793          	addi	a5,a5,8
    80002c14:	f6f43c23          	sd	a5,-136(s0)
    80002c18:	42064a63          	bltz	a2,8000304c <__printf+0x524>
    80002c1c:	00a00713          	li	a4,10
    80002c20:	02e677bb          	remuw	a5,a2,a4
    80002c24:	00002d97          	auipc	s11,0x2
    80002c28:	60cd8d93          	addi	s11,s11,1548 # 80005230 <digits>
    80002c2c:	00900593          	li	a1,9
    80002c30:	0006051b          	sext.w	a0,a2
    80002c34:	00000c93          	li	s9,0
    80002c38:	02079793          	slli	a5,a5,0x20
    80002c3c:	0207d793          	srli	a5,a5,0x20
    80002c40:	00fd87b3          	add	a5,s11,a5
    80002c44:	0007c783          	lbu	a5,0(a5)
    80002c48:	02e656bb          	divuw	a3,a2,a4
    80002c4c:	f8f40023          	sb	a5,-128(s0)
    80002c50:	14c5d863          	bge	a1,a2,80002da0 <__printf+0x278>
    80002c54:	06300593          	li	a1,99
    80002c58:	00100c93          	li	s9,1
    80002c5c:	02e6f7bb          	remuw	a5,a3,a4
    80002c60:	02079793          	slli	a5,a5,0x20
    80002c64:	0207d793          	srli	a5,a5,0x20
    80002c68:	00fd87b3          	add	a5,s11,a5
    80002c6c:	0007c783          	lbu	a5,0(a5)
    80002c70:	02e6d73b          	divuw	a4,a3,a4
    80002c74:	f8f400a3          	sb	a5,-127(s0)
    80002c78:	12a5f463          	bgeu	a1,a0,80002da0 <__printf+0x278>
    80002c7c:	00a00693          	li	a3,10
    80002c80:	00900593          	li	a1,9
    80002c84:	02d777bb          	remuw	a5,a4,a3
    80002c88:	02079793          	slli	a5,a5,0x20
    80002c8c:	0207d793          	srli	a5,a5,0x20
    80002c90:	00fd87b3          	add	a5,s11,a5
    80002c94:	0007c503          	lbu	a0,0(a5)
    80002c98:	02d757bb          	divuw	a5,a4,a3
    80002c9c:	f8a40123          	sb	a0,-126(s0)
    80002ca0:	48e5f263          	bgeu	a1,a4,80003124 <__printf+0x5fc>
    80002ca4:	06300513          	li	a0,99
    80002ca8:	02d7f5bb          	remuw	a1,a5,a3
    80002cac:	02059593          	slli	a1,a1,0x20
    80002cb0:	0205d593          	srli	a1,a1,0x20
    80002cb4:	00bd85b3          	add	a1,s11,a1
    80002cb8:	0005c583          	lbu	a1,0(a1)
    80002cbc:	02d7d7bb          	divuw	a5,a5,a3
    80002cc0:	f8b401a3          	sb	a1,-125(s0)
    80002cc4:	48e57263          	bgeu	a0,a4,80003148 <__printf+0x620>
    80002cc8:	3e700513          	li	a0,999
    80002ccc:	02d7f5bb          	remuw	a1,a5,a3
    80002cd0:	02059593          	slli	a1,a1,0x20
    80002cd4:	0205d593          	srli	a1,a1,0x20
    80002cd8:	00bd85b3          	add	a1,s11,a1
    80002cdc:	0005c583          	lbu	a1,0(a1)
    80002ce0:	02d7d7bb          	divuw	a5,a5,a3
    80002ce4:	f8b40223          	sb	a1,-124(s0)
    80002ce8:	46e57663          	bgeu	a0,a4,80003154 <__printf+0x62c>
    80002cec:	02d7f5bb          	remuw	a1,a5,a3
    80002cf0:	02059593          	slli	a1,a1,0x20
    80002cf4:	0205d593          	srli	a1,a1,0x20
    80002cf8:	00bd85b3          	add	a1,s11,a1
    80002cfc:	0005c583          	lbu	a1,0(a1)
    80002d00:	02d7d7bb          	divuw	a5,a5,a3
    80002d04:	f8b402a3          	sb	a1,-123(s0)
    80002d08:	46ea7863          	bgeu	s4,a4,80003178 <__printf+0x650>
    80002d0c:	02d7f5bb          	remuw	a1,a5,a3
    80002d10:	02059593          	slli	a1,a1,0x20
    80002d14:	0205d593          	srli	a1,a1,0x20
    80002d18:	00bd85b3          	add	a1,s11,a1
    80002d1c:	0005c583          	lbu	a1,0(a1)
    80002d20:	02d7d7bb          	divuw	a5,a5,a3
    80002d24:	f8b40323          	sb	a1,-122(s0)
    80002d28:	3eeaf863          	bgeu	s5,a4,80003118 <__printf+0x5f0>
    80002d2c:	02d7f5bb          	remuw	a1,a5,a3
    80002d30:	02059593          	slli	a1,a1,0x20
    80002d34:	0205d593          	srli	a1,a1,0x20
    80002d38:	00bd85b3          	add	a1,s11,a1
    80002d3c:	0005c583          	lbu	a1,0(a1)
    80002d40:	02d7d7bb          	divuw	a5,a5,a3
    80002d44:	f8b403a3          	sb	a1,-121(s0)
    80002d48:	42eb7e63          	bgeu	s6,a4,80003184 <__printf+0x65c>
    80002d4c:	02d7f5bb          	remuw	a1,a5,a3
    80002d50:	02059593          	slli	a1,a1,0x20
    80002d54:	0205d593          	srli	a1,a1,0x20
    80002d58:	00bd85b3          	add	a1,s11,a1
    80002d5c:	0005c583          	lbu	a1,0(a1)
    80002d60:	02d7d7bb          	divuw	a5,a5,a3
    80002d64:	f8b40423          	sb	a1,-120(s0)
    80002d68:	42ebfc63          	bgeu	s7,a4,800031a0 <__printf+0x678>
    80002d6c:	02079793          	slli	a5,a5,0x20
    80002d70:	0207d793          	srli	a5,a5,0x20
    80002d74:	00fd8db3          	add	s11,s11,a5
    80002d78:	000dc703          	lbu	a4,0(s11)
    80002d7c:	00a00793          	li	a5,10
    80002d80:	00900c93          	li	s9,9
    80002d84:	f8e404a3          	sb	a4,-119(s0)
    80002d88:	00065c63          	bgez	a2,80002da0 <__printf+0x278>
    80002d8c:	f9040713          	addi	a4,s0,-112
    80002d90:	00f70733          	add	a4,a4,a5
    80002d94:	02d00693          	li	a3,45
    80002d98:	fed70823          	sb	a3,-16(a4)
    80002d9c:	00078c93          	mv	s9,a5
    80002da0:	f8040793          	addi	a5,s0,-128
    80002da4:	01978cb3          	add	s9,a5,s9
    80002da8:	f7f40d13          	addi	s10,s0,-129
    80002dac:	000cc503          	lbu	a0,0(s9)
    80002db0:	fffc8c93          	addi	s9,s9,-1
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	b90080e7          	jalr	-1136(ra) # 80002944 <consputc>
    80002dbc:	ffac98e3          	bne	s9,s10,80002dac <__printf+0x284>
    80002dc0:	00094503          	lbu	a0,0(s2)
    80002dc4:	e00514e3          	bnez	a0,80002bcc <__printf+0xa4>
    80002dc8:	1a0c1663          	bnez	s8,80002f74 <__printf+0x44c>
    80002dcc:	08813083          	ld	ra,136(sp)
    80002dd0:	08013403          	ld	s0,128(sp)
    80002dd4:	07813483          	ld	s1,120(sp)
    80002dd8:	07013903          	ld	s2,112(sp)
    80002ddc:	06813983          	ld	s3,104(sp)
    80002de0:	06013a03          	ld	s4,96(sp)
    80002de4:	05813a83          	ld	s5,88(sp)
    80002de8:	05013b03          	ld	s6,80(sp)
    80002dec:	04813b83          	ld	s7,72(sp)
    80002df0:	04013c03          	ld	s8,64(sp)
    80002df4:	03813c83          	ld	s9,56(sp)
    80002df8:	03013d03          	ld	s10,48(sp)
    80002dfc:	02813d83          	ld	s11,40(sp)
    80002e00:	0d010113          	addi	sp,sp,208
    80002e04:	00008067          	ret
    80002e08:	07300713          	li	a4,115
    80002e0c:	1ce78a63          	beq	a5,a4,80002fe0 <__printf+0x4b8>
    80002e10:	07800713          	li	a4,120
    80002e14:	1ee79e63          	bne	a5,a4,80003010 <__printf+0x4e8>
    80002e18:	f7843783          	ld	a5,-136(s0)
    80002e1c:	0007a703          	lw	a4,0(a5)
    80002e20:	00878793          	addi	a5,a5,8
    80002e24:	f6f43c23          	sd	a5,-136(s0)
    80002e28:	28074263          	bltz	a4,800030ac <__printf+0x584>
    80002e2c:	00002d97          	auipc	s11,0x2
    80002e30:	404d8d93          	addi	s11,s11,1028 # 80005230 <digits>
    80002e34:	00f77793          	andi	a5,a4,15
    80002e38:	00fd87b3          	add	a5,s11,a5
    80002e3c:	0007c683          	lbu	a3,0(a5)
    80002e40:	00f00613          	li	a2,15
    80002e44:	0007079b          	sext.w	a5,a4
    80002e48:	f8d40023          	sb	a3,-128(s0)
    80002e4c:	0047559b          	srliw	a1,a4,0x4
    80002e50:	0047569b          	srliw	a3,a4,0x4
    80002e54:	00000c93          	li	s9,0
    80002e58:	0ee65063          	bge	a2,a4,80002f38 <__printf+0x410>
    80002e5c:	00f6f693          	andi	a3,a3,15
    80002e60:	00dd86b3          	add	a3,s11,a3
    80002e64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e68:	0087d79b          	srliw	a5,a5,0x8
    80002e6c:	00100c93          	li	s9,1
    80002e70:	f8d400a3          	sb	a3,-127(s0)
    80002e74:	0cb67263          	bgeu	a2,a1,80002f38 <__printf+0x410>
    80002e78:	00f7f693          	andi	a3,a5,15
    80002e7c:	00dd86b3          	add	a3,s11,a3
    80002e80:	0006c583          	lbu	a1,0(a3)
    80002e84:	00f00613          	li	a2,15
    80002e88:	0047d69b          	srliw	a3,a5,0x4
    80002e8c:	f8b40123          	sb	a1,-126(s0)
    80002e90:	0047d593          	srli	a1,a5,0x4
    80002e94:	28f67e63          	bgeu	a2,a5,80003130 <__printf+0x608>
    80002e98:	00f6f693          	andi	a3,a3,15
    80002e9c:	00dd86b3          	add	a3,s11,a3
    80002ea0:	0006c503          	lbu	a0,0(a3)
    80002ea4:	0087d813          	srli	a6,a5,0x8
    80002ea8:	0087d69b          	srliw	a3,a5,0x8
    80002eac:	f8a401a3          	sb	a0,-125(s0)
    80002eb0:	28b67663          	bgeu	a2,a1,8000313c <__printf+0x614>
    80002eb4:	00f6f693          	andi	a3,a3,15
    80002eb8:	00dd86b3          	add	a3,s11,a3
    80002ebc:	0006c583          	lbu	a1,0(a3)
    80002ec0:	00c7d513          	srli	a0,a5,0xc
    80002ec4:	00c7d69b          	srliw	a3,a5,0xc
    80002ec8:	f8b40223          	sb	a1,-124(s0)
    80002ecc:	29067a63          	bgeu	a2,a6,80003160 <__printf+0x638>
    80002ed0:	00f6f693          	andi	a3,a3,15
    80002ed4:	00dd86b3          	add	a3,s11,a3
    80002ed8:	0006c583          	lbu	a1,0(a3)
    80002edc:	0107d813          	srli	a6,a5,0x10
    80002ee0:	0107d69b          	srliw	a3,a5,0x10
    80002ee4:	f8b402a3          	sb	a1,-123(s0)
    80002ee8:	28a67263          	bgeu	a2,a0,8000316c <__printf+0x644>
    80002eec:	00f6f693          	andi	a3,a3,15
    80002ef0:	00dd86b3          	add	a3,s11,a3
    80002ef4:	0006c683          	lbu	a3,0(a3)
    80002ef8:	0147d79b          	srliw	a5,a5,0x14
    80002efc:	f8d40323          	sb	a3,-122(s0)
    80002f00:	21067663          	bgeu	a2,a6,8000310c <__printf+0x5e4>
    80002f04:	02079793          	slli	a5,a5,0x20
    80002f08:	0207d793          	srli	a5,a5,0x20
    80002f0c:	00fd8db3          	add	s11,s11,a5
    80002f10:	000dc683          	lbu	a3,0(s11)
    80002f14:	00800793          	li	a5,8
    80002f18:	00700c93          	li	s9,7
    80002f1c:	f8d403a3          	sb	a3,-121(s0)
    80002f20:	00075c63          	bgez	a4,80002f38 <__printf+0x410>
    80002f24:	f9040713          	addi	a4,s0,-112
    80002f28:	00f70733          	add	a4,a4,a5
    80002f2c:	02d00693          	li	a3,45
    80002f30:	fed70823          	sb	a3,-16(a4)
    80002f34:	00078c93          	mv	s9,a5
    80002f38:	f8040793          	addi	a5,s0,-128
    80002f3c:	01978cb3          	add	s9,a5,s9
    80002f40:	f7f40d13          	addi	s10,s0,-129
    80002f44:	000cc503          	lbu	a0,0(s9)
    80002f48:	fffc8c93          	addi	s9,s9,-1
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	9f8080e7          	jalr	-1544(ra) # 80002944 <consputc>
    80002f54:	ff9d18e3          	bne	s10,s9,80002f44 <__printf+0x41c>
    80002f58:	0100006f          	j	80002f68 <__printf+0x440>
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	9e8080e7          	jalr	-1560(ra) # 80002944 <consputc>
    80002f64:	000c8493          	mv	s1,s9
    80002f68:	00094503          	lbu	a0,0(s2)
    80002f6c:	c60510e3          	bnez	a0,80002bcc <__printf+0xa4>
    80002f70:	e40c0ee3          	beqz	s8,80002dcc <__printf+0x2a4>
    80002f74:	00004517          	auipc	a0,0x4
    80002f78:	aec50513          	addi	a0,a0,-1300 # 80006a60 <pr>
    80002f7c:	00001097          	auipc	ra,0x1
    80002f80:	94c080e7          	jalr	-1716(ra) # 800038c8 <release>
    80002f84:	e49ff06f          	j	80002dcc <__printf+0x2a4>
    80002f88:	f7843783          	ld	a5,-136(s0)
    80002f8c:	03000513          	li	a0,48
    80002f90:	01000d13          	li	s10,16
    80002f94:	00878713          	addi	a4,a5,8
    80002f98:	0007bc83          	ld	s9,0(a5)
    80002f9c:	f6e43c23          	sd	a4,-136(s0)
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	9a4080e7          	jalr	-1628(ra) # 80002944 <consputc>
    80002fa8:	07800513          	li	a0,120
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	998080e7          	jalr	-1640(ra) # 80002944 <consputc>
    80002fb4:	00002d97          	auipc	s11,0x2
    80002fb8:	27cd8d93          	addi	s11,s11,636 # 80005230 <digits>
    80002fbc:	03ccd793          	srli	a5,s9,0x3c
    80002fc0:	00fd87b3          	add	a5,s11,a5
    80002fc4:	0007c503          	lbu	a0,0(a5)
    80002fc8:	fffd0d1b          	addiw	s10,s10,-1
    80002fcc:	004c9c93          	slli	s9,s9,0x4
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	974080e7          	jalr	-1676(ra) # 80002944 <consputc>
    80002fd8:	fe0d12e3          	bnez	s10,80002fbc <__printf+0x494>
    80002fdc:	f8dff06f          	j	80002f68 <__printf+0x440>
    80002fe0:	f7843783          	ld	a5,-136(s0)
    80002fe4:	0007bc83          	ld	s9,0(a5)
    80002fe8:	00878793          	addi	a5,a5,8
    80002fec:	f6f43c23          	sd	a5,-136(s0)
    80002ff0:	000c9a63          	bnez	s9,80003004 <__printf+0x4dc>
    80002ff4:	1080006f          	j	800030fc <__printf+0x5d4>
    80002ff8:	001c8c93          	addi	s9,s9,1
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	948080e7          	jalr	-1720(ra) # 80002944 <consputc>
    80003004:	000cc503          	lbu	a0,0(s9)
    80003008:	fe0518e3          	bnez	a0,80002ff8 <__printf+0x4d0>
    8000300c:	f5dff06f          	j	80002f68 <__printf+0x440>
    80003010:	02500513          	li	a0,37
    80003014:	00000097          	auipc	ra,0x0
    80003018:	930080e7          	jalr	-1744(ra) # 80002944 <consputc>
    8000301c:	000c8513          	mv	a0,s9
    80003020:	00000097          	auipc	ra,0x0
    80003024:	924080e7          	jalr	-1756(ra) # 80002944 <consputc>
    80003028:	f41ff06f          	j	80002f68 <__printf+0x440>
    8000302c:	02500513          	li	a0,37
    80003030:	00000097          	auipc	ra,0x0
    80003034:	914080e7          	jalr	-1772(ra) # 80002944 <consputc>
    80003038:	f31ff06f          	j	80002f68 <__printf+0x440>
    8000303c:	00030513          	mv	a0,t1
    80003040:	00000097          	auipc	ra,0x0
    80003044:	7bc080e7          	jalr	1980(ra) # 800037fc <acquire>
    80003048:	b4dff06f          	j	80002b94 <__printf+0x6c>
    8000304c:	40c0053b          	negw	a0,a2
    80003050:	00a00713          	li	a4,10
    80003054:	02e576bb          	remuw	a3,a0,a4
    80003058:	00002d97          	auipc	s11,0x2
    8000305c:	1d8d8d93          	addi	s11,s11,472 # 80005230 <digits>
    80003060:	ff700593          	li	a1,-9
    80003064:	02069693          	slli	a3,a3,0x20
    80003068:	0206d693          	srli	a3,a3,0x20
    8000306c:	00dd86b3          	add	a3,s11,a3
    80003070:	0006c683          	lbu	a3,0(a3)
    80003074:	02e557bb          	divuw	a5,a0,a4
    80003078:	f8d40023          	sb	a3,-128(s0)
    8000307c:	10b65e63          	bge	a2,a1,80003198 <__printf+0x670>
    80003080:	06300593          	li	a1,99
    80003084:	02e7f6bb          	remuw	a3,a5,a4
    80003088:	02069693          	slli	a3,a3,0x20
    8000308c:	0206d693          	srli	a3,a3,0x20
    80003090:	00dd86b3          	add	a3,s11,a3
    80003094:	0006c683          	lbu	a3,0(a3)
    80003098:	02e7d73b          	divuw	a4,a5,a4
    8000309c:	00200793          	li	a5,2
    800030a0:	f8d400a3          	sb	a3,-127(s0)
    800030a4:	bca5ece3          	bltu	a1,a0,80002c7c <__printf+0x154>
    800030a8:	ce5ff06f          	j	80002d8c <__printf+0x264>
    800030ac:	40e007bb          	negw	a5,a4
    800030b0:	00002d97          	auipc	s11,0x2
    800030b4:	180d8d93          	addi	s11,s11,384 # 80005230 <digits>
    800030b8:	00f7f693          	andi	a3,a5,15
    800030bc:	00dd86b3          	add	a3,s11,a3
    800030c0:	0006c583          	lbu	a1,0(a3)
    800030c4:	ff100613          	li	a2,-15
    800030c8:	0047d69b          	srliw	a3,a5,0x4
    800030cc:	f8b40023          	sb	a1,-128(s0)
    800030d0:	0047d59b          	srliw	a1,a5,0x4
    800030d4:	0ac75e63          	bge	a4,a2,80003190 <__printf+0x668>
    800030d8:	00f6f693          	andi	a3,a3,15
    800030dc:	00dd86b3          	add	a3,s11,a3
    800030e0:	0006c603          	lbu	a2,0(a3)
    800030e4:	00f00693          	li	a3,15
    800030e8:	0087d79b          	srliw	a5,a5,0x8
    800030ec:	f8c400a3          	sb	a2,-127(s0)
    800030f0:	d8b6e4e3          	bltu	a3,a1,80002e78 <__printf+0x350>
    800030f4:	00200793          	li	a5,2
    800030f8:	e2dff06f          	j	80002f24 <__printf+0x3fc>
    800030fc:	00002c97          	auipc	s9,0x2
    80003100:	114c8c93          	addi	s9,s9,276 # 80005210 <kvmincrease+0xf80>
    80003104:	02800513          	li	a0,40
    80003108:	ef1ff06f          	j	80002ff8 <__printf+0x4d0>
    8000310c:	00700793          	li	a5,7
    80003110:	00600c93          	li	s9,6
    80003114:	e0dff06f          	j	80002f20 <__printf+0x3f8>
    80003118:	00700793          	li	a5,7
    8000311c:	00600c93          	li	s9,6
    80003120:	c69ff06f          	j	80002d88 <__printf+0x260>
    80003124:	00300793          	li	a5,3
    80003128:	00200c93          	li	s9,2
    8000312c:	c5dff06f          	j	80002d88 <__printf+0x260>
    80003130:	00300793          	li	a5,3
    80003134:	00200c93          	li	s9,2
    80003138:	de9ff06f          	j	80002f20 <__printf+0x3f8>
    8000313c:	00400793          	li	a5,4
    80003140:	00300c93          	li	s9,3
    80003144:	dddff06f          	j	80002f20 <__printf+0x3f8>
    80003148:	00400793          	li	a5,4
    8000314c:	00300c93          	li	s9,3
    80003150:	c39ff06f          	j	80002d88 <__printf+0x260>
    80003154:	00500793          	li	a5,5
    80003158:	00400c93          	li	s9,4
    8000315c:	c2dff06f          	j	80002d88 <__printf+0x260>
    80003160:	00500793          	li	a5,5
    80003164:	00400c93          	li	s9,4
    80003168:	db9ff06f          	j	80002f20 <__printf+0x3f8>
    8000316c:	00600793          	li	a5,6
    80003170:	00500c93          	li	s9,5
    80003174:	dadff06f          	j	80002f20 <__printf+0x3f8>
    80003178:	00600793          	li	a5,6
    8000317c:	00500c93          	li	s9,5
    80003180:	c09ff06f          	j	80002d88 <__printf+0x260>
    80003184:	00800793          	li	a5,8
    80003188:	00700c93          	li	s9,7
    8000318c:	bfdff06f          	j	80002d88 <__printf+0x260>
    80003190:	00100793          	li	a5,1
    80003194:	d91ff06f          	j	80002f24 <__printf+0x3fc>
    80003198:	00100793          	li	a5,1
    8000319c:	bf1ff06f          	j	80002d8c <__printf+0x264>
    800031a0:	00900793          	li	a5,9
    800031a4:	00800c93          	li	s9,8
    800031a8:	be1ff06f          	j	80002d88 <__printf+0x260>
    800031ac:	00002517          	auipc	a0,0x2
    800031b0:	06c50513          	addi	a0,a0,108 # 80005218 <kvmincrease+0xf88>
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	918080e7          	jalr	-1768(ra) # 80002acc <panic>

00000000800031bc <printfinit>:
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	00113c23          	sd	ra,24(sp)
    800031cc:	02010413          	addi	s0,sp,32
    800031d0:	00004497          	auipc	s1,0x4
    800031d4:	89048493          	addi	s1,s1,-1904 # 80006a60 <pr>
    800031d8:	00048513          	mv	a0,s1
    800031dc:	00002597          	auipc	a1,0x2
    800031e0:	04c58593          	addi	a1,a1,76 # 80005228 <kvmincrease+0xf98>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	5f4080e7          	jalr	1524(ra) # 800037d8 <initlock>
    800031ec:	01813083          	ld	ra,24(sp)
    800031f0:	01013403          	ld	s0,16(sp)
    800031f4:	0004ac23          	sw	zero,24(s1)
    800031f8:	00813483          	ld	s1,8(sp)
    800031fc:	02010113          	addi	sp,sp,32
    80003200:	00008067          	ret

0000000080003204 <uartinit>:
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00813423          	sd	s0,8(sp)
    8000320c:	01010413          	addi	s0,sp,16
    80003210:	100007b7          	lui	a5,0x10000
    80003214:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003218:	f8000713          	li	a4,-128
    8000321c:	00e781a3          	sb	a4,3(a5)
    80003220:	00300713          	li	a4,3
    80003224:	00e78023          	sb	a4,0(a5)
    80003228:	000780a3          	sb	zero,1(a5)
    8000322c:	00e781a3          	sb	a4,3(a5)
    80003230:	00700693          	li	a3,7
    80003234:	00d78123          	sb	a3,2(a5)
    80003238:	00e780a3          	sb	a4,1(a5)
    8000323c:	00813403          	ld	s0,8(sp)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret

0000000080003248 <uartputc>:
    80003248:	00002797          	auipc	a5,0x2
    8000324c:	5b07a783          	lw	a5,1456(a5) # 800057f8 <panicked>
    80003250:	00078463          	beqz	a5,80003258 <uartputc+0x10>
    80003254:	0000006f          	j	80003254 <uartputc+0xc>
    80003258:	fd010113          	addi	sp,sp,-48
    8000325c:	02813023          	sd	s0,32(sp)
    80003260:	00913c23          	sd	s1,24(sp)
    80003264:	01213823          	sd	s2,16(sp)
    80003268:	01313423          	sd	s3,8(sp)
    8000326c:	02113423          	sd	ra,40(sp)
    80003270:	03010413          	addi	s0,sp,48
    80003274:	00002917          	auipc	s2,0x2
    80003278:	58c90913          	addi	s2,s2,1420 # 80005800 <uart_tx_r>
    8000327c:	00093783          	ld	a5,0(s2)
    80003280:	00002497          	auipc	s1,0x2
    80003284:	58848493          	addi	s1,s1,1416 # 80005808 <uart_tx_w>
    80003288:	0004b703          	ld	a4,0(s1)
    8000328c:	02078693          	addi	a3,a5,32
    80003290:	00050993          	mv	s3,a0
    80003294:	02e69c63          	bne	a3,a4,800032cc <uartputc+0x84>
    80003298:	00001097          	auipc	ra,0x1
    8000329c:	834080e7          	jalr	-1996(ra) # 80003acc <push_on>
    800032a0:	00093783          	ld	a5,0(s2)
    800032a4:	0004b703          	ld	a4,0(s1)
    800032a8:	02078793          	addi	a5,a5,32
    800032ac:	00e79463          	bne	a5,a4,800032b4 <uartputc+0x6c>
    800032b0:	0000006f          	j	800032b0 <uartputc+0x68>
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	88c080e7          	jalr	-1908(ra) # 80003b40 <pop_on>
    800032bc:	00093783          	ld	a5,0(s2)
    800032c0:	0004b703          	ld	a4,0(s1)
    800032c4:	02078693          	addi	a3,a5,32
    800032c8:	fce688e3          	beq	a3,a4,80003298 <uartputc+0x50>
    800032cc:	01f77693          	andi	a3,a4,31
    800032d0:	00003597          	auipc	a1,0x3
    800032d4:	7b058593          	addi	a1,a1,1968 # 80006a80 <uart_tx_buf>
    800032d8:	00d586b3          	add	a3,a1,a3
    800032dc:	00170713          	addi	a4,a4,1
    800032e0:	01368023          	sb	s3,0(a3)
    800032e4:	00e4b023          	sd	a4,0(s1)
    800032e8:	10000637          	lui	a2,0x10000
    800032ec:	02f71063          	bne	a4,a5,8000330c <uartputc+0xc4>
    800032f0:	0340006f          	j	80003324 <uartputc+0xdc>
    800032f4:	00074703          	lbu	a4,0(a4)
    800032f8:	00f93023          	sd	a5,0(s2)
    800032fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003300:	00093783          	ld	a5,0(s2)
    80003304:	0004b703          	ld	a4,0(s1)
    80003308:	00f70e63          	beq	a4,a5,80003324 <uartputc+0xdc>
    8000330c:	00564683          	lbu	a3,5(a2)
    80003310:	01f7f713          	andi	a4,a5,31
    80003314:	00e58733          	add	a4,a1,a4
    80003318:	0206f693          	andi	a3,a3,32
    8000331c:	00178793          	addi	a5,a5,1
    80003320:	fc069ae3          	bnez	a3,800032f4 <uartputc+0xac>
    80003324:	02813083          	ld	ra,40(sp)
    80003328:	02013403          	ld	s0,32(sp)
    8000332c:	01813483          	ld	s1,24(sp)
    80003330:	01013903          	ld	s2,16(sp)
    80003334:	00813983          	ld	s3,8(sp)
    80003338:	03010113          	addi	sp,sp,48
    8000333c:	00008067          	ret

0000000080003340 <uartputc_sync>:
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00813423          	sd	s0,8(sp)
    80003348:	01010413          	addi	s0,sp,16
    8000334c:	00002717          	auipc	a4,0x2
    80003350:	4ac72703          	lw	a4,1196(a4) # 800057f8 <panicked>
    80003354:	02071663          	bnez	a4,80003380 <uartputc_sync+0x40>
    80003358:	00050793          	mv	a5,a0
    8000335c:	100006b7          	lui	a3,0x10000
    80003360:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003364:	02077713          	andi	a4,a4,32
    80003368:	fe070ce3          	beqz	a4,80003360 <uartputc_sync+0x20>
    8000336c:	0ff7f793          	andi	a5,a5,255
    80003370:	00f68023          	sb	a5,0(a3)
    80003374:	00813403          	ld	s0,8(sp)
    80003378:	01010113          	addi	sp,sp,16
    8000337c:	00008067          	ret
    80003380:	0000006f          	j	80003380 <uartputc_sync+0x40>

0000000080003384 <uartstart>:
    80003384:	ff010113          	addi	sp,sp,-16
    80003388:	00813423          	sd	s0,8(sp)
    8000338c:	01010413          	addi	s0,sp,16
    80003390:	00002617          	auipc	a2,0x2
    80003394:	47060613          	addi	a2,a2,1136 # 80005800 <uart_tx_r>
    80003398:	00002517          	auipc	a0,0x2
    8000339c:	47050513          	addi	a0,a0,1136 # 80005808 <uart_tx_w>
    800033a0:	00063783          	ld	a5,0(a2)
    800033a4:	00053703          	ld	a4,0(a0)
    800033a8:	04f70263          	beq	a4,a5,800033ec <uartstart+0x68>
    800033ac:	100005b7          	lui	a1,0x10000
    800033b0:	00003817          	auipc	a6,0x3
    800033b4:	6d080813          	addi	a6,a6,1744 # 80006a80 <uart_tx_buf>
    800033b8:	01c0006f          	j	800033d4 <uartstart+0x50>
    800033bc:	0006c703          	lbu	a4,0(a3)
    800033c0:	00f63023          	sd	a5,0(a2)
    800033c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033c8:	00063783          	ld	a5,0(a2)
    800033cc:	00053703          	ld	a4,0(a0)
    800033d0:	00f70e63          	beq	a4,a5,800033ec <uartstart+0x68>
    800033d4:	01f7f713          	andi	a4,a5,31
    800033d8:	00e806b3          	add	a3,a6,a4
    800033dc:	0055c703          	lbu	a4,5(a1)
    800033e0:	00178793          	addi	a5,a5,1
    800033e4:	02077713          	andi	a4,a4,32
    800033e8:	fc071ae3          	bnez	a4,800033bc <uartstart+0x38>
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <uartgetc>:
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00813423          	sd	s0,8(sp)
    80003400:	01010413          	addi	s0,sp,16
    80003404:	10000737          	lui	a4,0x10000
    80003408:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000340c:	0017f793          	andi	a5,a5,1
    80003410:	00078c63          	beqz	a5,80003428 <uartgetc+0x30>
    80003414:	00074503          	lbu	a0,0(a4)
    80003418:	0ff57513          	andi	a0,a0,255
    8000341c:	00813403          	ld	s0,8(sp)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret
    80003428:	fff00513          	li	a0,-1
    8000342c:	ff1ff06f          	j	8000341c <uartgetc+0x24>

0000000080003430 <uartintr>:
    80003430:	100007b7          	lui	a5,0x10000
    80003434:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003438:	0017f793          	andi	a5,a5,1
    8000343c:	0a078463          	beqz	a5,800034e4 <uartintr+0xb4>
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	00113c23          	sd	ra,24(sp)
    80003450:	02010413          	addi	s0,sp,32
    80003454:	100004b7          	lui	s1,0x10000
    80003458:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000345c:	0ff57513          	andi	a0,a0,255
    80003460:	fffff097          	auipc	ra,0xfffff
    80003464:	534080e7          	jalr	1332(ra) # 80002994 <consoleintr>
    80003468:	0054c783          	lbu	a5,5(s1)
    8000346c:	0017f793          	andi	a5,a5,1
    80003470:	fe0794e3          	bnez	a5,80003458 <uartintr+0x28>
    80003474:	00002617          	auipc	a2,0x2
    80003478:	38c60613          	addi	a2,a2,908 # 80005800 <uart_tx_r>
    8000347c:	00002517          	auipc	a0,0x2
    80003480:	38c50513          	addi	a0,a0,908 # 80005808 <uart_tx_w>
    80003484:	00063783          	ld	a5,0(a2)
    80003488:	00053703          	ld	a4,0(a0)
    8000348c:	04f70263          	beq	a4,a5,800034d0 <uartintr+0xa0>
    80003490:	100005b7          	lui	a1,0x10000
    80003494:	00003817          	auipc	a6,0x3
    80003498:	5ec80813          	addi	a6,a6,1516 # 80006a80 <uart_tx_buf>
    8000349c:	01c0006f          	j	800034b8 <uartintr+0x88>
    800034a0:	0006c703          	lbu	a4,0(a3)
    800034a4:	00f63023          	sd	a5,0(a2)
    800034a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034ac:	00063783          	ld	a5,0(a2)
    800034b0:	00053703          	ld	a4,0(a0)
    800034b4:	00f70e63          	beq	a4,a5,800034d0 <uartintr+0xa0>
    800034b8:	01f7f713          	andi	a4,a5,31
    800034bc:	00e806b3          	add	a3,a6,a4
    800034c0:	0055c703          	lbu	a4,5(a1)
    800034c4:	00178793          	addi	a5,a5,1
    800034c8:	02077713          	andi	a4,a4,32
    800034cc:	fc071ae3          	bnez	a4,800034a0 <uartintr+0x70>
    800034d0:	01813083          	ld	ra,24(sp)
    800034d4:	01013403          	ld	s0,16(sp)
    800034d8:	00813483          	ld	s1,8(sp)
    800034dc:	02010113          	addi	sp,sp,32
    800034e0:	00008067          	ret
    800034e4:	00002617          	auipc	a2,0x2
    800034e8:	31c60613          	addi	a2,a2,796 # 80005800 <uart_tx_r>
    800034ec:	00002517          	auipc	a0,0x2
    800034f0:	31c50513          	addi	a0,a0,796 # 80005808 <uart_tx_w>
    800034f4:	00063783          	ld	a5,0(a2)
    800034f8:	00053703          	ld	a4,0(a0)
    800034fc:	04f70263          	beq	a4,a5,80003540 <uartintr+0x110>
    80003500:	100005b7          	lui	a1,0x10000
    80003504:	00003817          	auipc	a6,0x3
    80003508:	57c80813          	addi	a6,a6,1404 # 80006a80 <uart_tx_buf>
    8000350c:	01c0006f          	j	80003528 <uartintr+0xf8>
    80003510:	0006c703          	lbu	a4,0(a3)
    80003514:	00f63023          	sd	a5,0(a2)
    80003518:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000351c:	00063783          	ld	a5,0(a2)
    80003520:	00053703          	ld	a4,0(a0)
    80003524:	02f70063          	beq	a4,a5,80003544 <uartintr+0x114>
    80003528:	01f7f713          	andi	a4,a5,31
    8000352c:	00e806b3          	add	a3,a6,a4
    80003530:	0055c703          	lbu	a4,5(a1)
    80003534:	00178793          	addi	a5,a5,1
    80003538:	02077713          	andi	a4,a4,32
    8000353c:	fc071ae3          	bnez	a4,80003510 <uartintr+0xe0>
    80003540:	00008067          	ret
    80003544:	00008067          	ret

0000000080003548 <kinit>:
    80003548:	fc010113          	addi	sp,sp,-64
    8000354c:	02913423          	sd	s1,40(sp)
    80003550:	fffff7b7          	lui	a5,0xfffff
    80003554:	00004497          	auipc	s1,0x4
    80003558:	55b48493          	addi	s1,s1,1371 # 80007aaf <end+0xfff>
    8000355c:	02813823          	sd	s0,48(sp)
    80003560:	01313c23          	sd	s3,24(sp)
    80003564:	00f4f4b3          	and	s1,s1,a5
    80003568:	02113c23          	sd	ra,56(sp)
    8000356c:	03213023          	sd	s2,32(sp)
    80003570:	01413823          	sd	s4,16(sp)
    80003574:	01513423          	sd	s5,8(sp)
    80003578:	04010413          	addi	s0,sp,64
    8000357c:	000017b7          	lui	a5,0x1
    80003580:	01100993          	li	s3,17
    80003584:	00f487b3          	add	a5,s1,a5
    80003588:	01b99993          	slli	s3,s3,0x1b
    8000358c:	06f9e063          	bltu	s3,a5,800035ec <kinit+0xa4>
    80003590:	00003a97          	auipc	s5,0x3
    80003594:	520a8a93          	addi	s5,s5,1312 # 80006ab0 <end>
    80003598:	0754ec63          	bltu	s1,s5,80003610 <kinit+0xc8>
    8000359c:	0734fa63          	bgeu	s1,s3,80003610 <kinit+0xc8>
    800035a0:	00088a37          	lui	s4,0x88
    800035a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800035a8:	00002917          	auipc	s2,0x2
    800035ac:	26890913          	addi	s2,s2,616 # 80005810 <kmem>
    800035b0:	00ca1a13          	slli	s4,s4,0xc
    800035b4:	0140006f          	j	800035c8 <kinit+0x80>
    800035b8:	000017b7          	lui	a5,0x1
    800035bc:	00f484b3          	add	s1,s1,a5
    800035c0:	0554e863          	bltu	s1,s5,80003610 <kinit+0xc8>
    800035c4:	0534f663          	bgeu	s1,s3,80003610 <kinit+0xc8>
    800035c8:	00001637          	lui	a2,0x1
    800035cc:	00100593          	li	a1,1
    800035d0:	00048513          	mv	a0,s1
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	5e4080e7          	jalr	1508(ra) # 80003bb8 <__memset>
    800035dc:	00093783          	ld	a5,0(s2)
    800035e0:	00f4b023          	sd	a5,0(s1)
    800035e4:	00993023          	sd	s1,0(s2)
    800035e8:	fd4498e3          	bne	s1,s4,800035b8 <kinit+0x70>
    800035ec:	03813083          	ld	ra,56(sp)
    800035f0:	03013403          	ld	s0,48(sp)
    800035f4:	02813483          	ld	s1,40(sp)
    800035f8:	02013903          	ld	s2,32(sp)
    800035fc:	01813983          	ld	s3,24(sp)
    80003600:	01013a03          	ld	s4,16(sp)
    80003604:	00813a83          	ld	s5,8(sp)
    80003608:	04010113          	addi	sp,sp,64
    8000360c:	00008067          	ret
    80003610:	00002517          	auipc	a0,0x2
    80003614:	c3850513          	addi	a0,a0,-968 # 80005248 <digits+0x18>
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	4b4080e7          	jalr	1204(ra) # 80002acc <panic>

0000000080003620 <freerange>:
    80003620:	fc010113          	addi	sp,sp,-64
    80003624:	000017b7          	lui	a5,0x1
    80003628:	02913423          	sd	s1,40(sp)
    8000362c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003630:	009504b3          	add	s1,a0,s1
    80003634:	fffff537          	lui	a0,0xfffff
    80003638:	02813823          	sd	s0,48(sp)
    8000363c:	02113c23          	sd	ra,56(sp)
    80003640:	03213023          	sd	s2,32(sp)
    80003644:	01313c23          	sd	s3,24(sp)
    80003648:	01413823          	sd	s4,16(sp)
    8000364c:	01513423          	sd	s5,8(sp)
    80003650:	01613023          	sd	s6,0(sp)
    80003654:	04010413          	addi	s0,sp,64
    80003658:	00a4f4b3          	and	s1,s1,a0
    8000365c:	00f487b3          	add	a5,s1,a5
    80003660:	06f5e463          	bltu	a1,a5,800036c8 <freerange+0xa8>
    80003664:	00003a97          	auipc	s5,0x3
    80003668:	44ca8a93          	addi	s5,s5,1100 # 80006ab0 <end>
    8000366c:	0954e263          	bltu	s1,s5,800036f0 <freerange+0xd0>
    80003670:	01100993          	li	s3,17
    80003674:	01b99993          	slli	s3,s3,0x1b
    80003678:	0734fc63          	bgeu	s1,s3,800036f0 <freerange+0xd0>
    8000367c:	00058a13          	mv	s4,a1
    80003680:	00002917          	auipc	s2,0x2
    80003684:	19090913          	addi	s2,s2,400 # 80005810 <kmem>
    80003688:	00002b37          	lui	s6,0x2
    8000368c:	0140006f          	j	800036a0 <freerange+0x80>
    80003690:	000017b7          	lui	a5,0x1
    80003694:	00f484b3          	add	s1,s1,a5
    80003698:	0554ec63          	bltu	s1,s5,800036f0 <freerange+0xd0>
    8000369c:	0534fa63          	bgeu	s1,s3,800036f0 <freerange+0xd0>
    800036a0:	00001637          	lui	a2,0x1
    800036a4:	00100593          	li	a1,1
    800036a8:	00048513          	mv	a0,s1
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	50c080e7          	jalr	1292(ra) # 80003bb8 <__memset>
    800036b4:	00093703          	ld	a4,0(s2)
    800036b8:	016487b3          	add	a5,s1,s6
    800036bc:	00e4b023          	sd	a4,0(s1)
    800036c0:	00993023          	sd	s1,0(s2)
    800036c4:	fcfa76e3          	bgeu	s4,a5,80003690 <freerange+0x70>
    800036c8:	03813083          	ld	ra,56(sp)
    800036cc:	03013403          	ld	s0,48(sp)
    800036d0:	02813483          	ld	s1,40(sp)
    800036d4:	02013903          	ld	s2,32(sp)
    800036d8:	01813983          	ld	s3,24(sp)
    800036dc:	01013a03          	ld	s4,16(sp)
    800036e0:	00813a83          	ld	s5,8(sp)
    800036e4:	00013b03          	ld	s6,0(sp)
    800036e8:	04010113          	addi	sp,sp,64
    800036ec:	00008067          	ret
    800036f0:	00002517          	auipc	a0,0x2
    800036f4:	b5850513          	addi	a0,a0,-1192 # 80005248 <digits+0x18>
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	3d4080e7          	jalr	980(ra) # 80002acc <panic>

0000000080003700 <kfree>:
    80003700:	fe010113          	addi	sp,sp,-32
    80003704:	00813823          	sd	s0,16(sp)
    80003708:	00113c23          	sd	ra,24(sp)
    8000370c:	00913423          	sd	s1,8(sp)
    80003710:	02010413          	addi	s0,sp,32
    80003714:	03451793          	slli	a5,a0,0x34
    80003718:	04079c63          	bnez	a5,80003770 <kfree+0x70>
    8000371c:	00003797          	auipc	a5,0x3
    80003720:	39478793          	addi	a5,a5,916 # 80006ab0 <end>
    80003724:	00050493          	mv	s1,a0
    80003728:	04f56463          	bltu	a0,a5,80003770 <kfree+0x70>
    8000372c:	01100793          	li	a5,17
    80003730:	01b79793          	slli	a5,a5,0x1b
    80003734:	02f57e63          	bgeu	a0,a5,80003770 <kfree+0x70>
    80003738:	00001637          	lui	a2,0x1
    8000373c:	00100593          	li	a1,1
    80003740:	00000097          	auipc	ra,0x0
    80003744:	478080e7          	jalr	1144(ra) # 80003bb8 <__memset>
    80003748:	00002797          	auipc	a5,0x2
    8000374c:	0c878793          	addi	a5,a5,200 # 80005810 <kmem>
    80003750:	0007b703          	ld	a4,0(a5)
    80003754:	01813083          	ld	ra,24(sp)
    80003758:	01013403          	ld	s0,16(sp)
    8000375c:	00e4b023          	sd	a4,0(s1)
    80003760:	0097b023          	sd	s1,0(a5)
    80003764:	00813483          	ld	s1,8(sp)
    80003768:	02010113          	addi	sp,sp,32
    8000376c:	00008067          	ret
    80003770:	00002517          	auipc	a0,0x2
    80003774:	ad850513          	addi	a0,a0,-1320 # 80005248 <digits+0x18>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	354080e7          	jalr	852(ra) # 80002acc <panic>

0000000080003780 <kalloc>:
    80003780:	fe010113          	addi	sp,sp,-32
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	00113c23          	sd	ra,24(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	00002797          	auipc	a5,0x2
    80003798:	07c78793          	addi	a5,a5,124 # 80005810 <kmem>
    8000379c:	0007b483          	ld	s1,0(a5)
    800037a0:	02048063          	beqz	s1,800037c0 <kalloc+0x40>
    800037a4:	0004b703          	ld	a4,0(s1)
    800037a8:	00001637          	lui	a2,0x1
    800037ac:	00500593          	li	a1,5
    800037b0:	00048513          	mv	a0,s1
    800037b4:	00e7b023          	sd	a4,0(a5)
    800037b8:	00000097          	auipc	ra,0x0
    800037bc:	400080e7          	jalr	1024(ra) # 80003bb8 <__memset>
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	00048513          	mv	a0,s1
    800037cc:	00813483          	ld	s1,8(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret

00000000800037d8 <initlock>:
    800037d8:	ff010113          	addi	sp,sp,-16
    800037dc:	00813423          	sd	s0,8(sp)
    800037e0:	01010413          	addi	s0,sp,16
    800037e4:	00813403          	ld	s0,8(sp)
    800037e8:	00b53423          	sd	a1,8(a0)
    800037ec:	00052023          	sw	zero,0(a0)
    800037f0:	00053823          	sd	zero,16(a0)
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00008067          	ret

00000000800037fc <acquire>:
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00813823          	sd	s0,16(sp)
    80003804:	00913423          	sd	s1,8(sp)
    80003808:	00113c23          	sd	ra,24(sp)
    8000380c:	01213023          	sd	s2,0(sp)
    80003810:	02010413          	addi	s0,sp,32
    80003814:	00050493          	mv	s1,a0
    80003818:	10002973          	csrr	s2,sstatus
    8000381c:	100027f3          	csrr	a5,sstatus
    80003820:	ffd7f793          	andi	a5,a5,-3
    80003824:	10079073          	csrw	sstatus,a5
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	8ec080e7          	jalr	-1812(ra) # 80002114 <mycpu>
    80003830:	07852783          	lw	a5,120(a0)
    80003834:	06078e63          	beqz	a5,800038b0 <acquire+0xb4>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	8dc080e7          	jalr	-1828(ra) # 80002114 <mycpu>
    80003840:	07852783          	lw	a5,120(a0)
    80003844:	0004a703          	lw	a4,0(s1)
    80003848:	0017879b          	addiw	a5,a5,1
    8000384c:	06f52c23          	sw	a5,120(a0)
    80003850:	04071063          	bnez	a4,80003890 <acquire+0x94>
    80003854:	00100713          	li	a4,1
    80003858:	00070793          	mv	a5,a4
    8000385c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003860:	0007879b          	sext.w	a5,a5
    80003864:	fe079ae3          	bnez	a5,80003858 <acquire+0x5c>
    80003868:	0ff0000f          	fence
    8000386c:	fffff097          	auipc	ra,0xfffff
    80003870:	8a8080e7          	jalr	-1880(ra) # 80002114 <mycpu>
    80003874:	01813083          	ld	ra,24(sp)
    80003878:	01013403          	ld	s0,16(sp)
    8000387c:	00a4b823          	sd	a0,16(s1)
    80003880:	00013903          	ld	s2,0(sp)
    80003884:	00813483          	ld	s1,8(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret
    80003890:	0104b903          	ld	s2,16(s1)
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	880080e7          	jalr	-1920(ra) # 80002114 <mycpu>
    8000389c:	faa91ce3          	bne	s2,a0,80003854 <acquire+0x58>
    800038a0:	00002517          	auipc	a0,0x2
    800038a4:	9b050513          	addi	a0,a0,-1616 # 80005250 <digits+0x20>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	224080e7          	jalr	548(ra) # 80002acc <panic>
    800038b0:	00195913          	srli	s2,s2,0x1
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	860080e7          	jalr	-1952(ra) # 80002114 <mycpu>
    800038bc:	00197913          	andi	s2,s2,1
    800038c0:	07252e23          	sw	s2,124(a0)
    800038c4:	f75ff06f          	j	80003838 <acquire+0x3c>

00000000800038c8 <release>:
    800038c8:	fe010113          	addi	sp,sp,-32
    800038cc:	00813823          	sd	s0,16(sp)
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00913423          	sd	s1,8(sp)
    800038d8:	01213023          	sd	s2,0(sp)
    800038dc:	02010413          	addi	s0,sp,32
    800038e0:	00052783          	lw	a5,0(a0)
    800038e4:	00079a63          	bnez	a5,800038f8 <release+0x30>
    800038e8:	00002517          	auipc	a0,0x2
    800038ec:	97050513          	addi	a0,a0,-1680 # 80005258 <digits+0x28>
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	1dc080e7          	jalr	476(ra) # 80002acc <panic>
    800038f8:	01053903          	ld	s2,16(a0)
    800038fc:	00050493          	mv	s1,a0
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	814080e7          	jalr	-2028(ra) # 80002114 <mycpu>
    80003908:	fea910e3          	bne	s2,a0,800038e8 <release+0x20>
    8000390c:	0004b823          	sd	zero,16(s1)
    80003910:	0ff0000f          	fence
    80003914:	0f50000f          	fence	iorw,ow
    80003918:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	7f8080e7          	jalr	2040(ra) # 80002114 <mycpu>
    80003924:	100027f3          	csrr	a5,sstatus
    80003928:	0027f793          	andi	a5,a5,2
    8000392c:	04079a63          	bnez	a5,80003980 <release+0xb8>
    80003930:	07852783          	lw	a5,120(a0)
    80003934:	02f05e63          	blez	a5,80003970 <release+0xa8>
    80003938:	fff7871b          	addiw	a4,a5,-1
    8000393c:	06e52c23          	sw	a4,120(a0)
    80003940:	00071c63          	bnez	a4,80003958 <release+0x90>
    80003944:	07c52783          	lw	a5,124(a0)
    80003948:	00078863          	beqz	a5,80003958 <release+0x90>
    8000394c:	100027f3          	csrr	a5,sstatus
    80003950:	0027e793          	ori	a5,a5,2
    80003954:	10079073          	csrw	sstatus,a5
    80003958:	01813083          	ld	ra,24(sp)
    8000395c:	01013403          	ld	s0,16(sp)
    80003960:	00813483          	ld	s1,8(sp)
    80003964:	00013903          	ld	s2,0(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret
    80003970:	00002517          	auipc	a0,0x2
    80003974:	90850513          	addi	a0,a0,-1784 # 80005278 <digits+0x48>
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	154080e7          	jalr	340(ra) # 80002acc <panic>
    80003980:	00002517          	auipc	a0,0x2
    80003984:	8e050513          	addi	a0,a0,-1824 # 80005260 <digits+0x30>
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	144080e7          	jalr	324(ra) # 80002acc <panic>

0000000080003990 <holding>:
    80003990:	00052783          	lw	a5,0(a0)
    80003994:	00079663          	bnez	a5,800039a0 <holding+0x10>
    80003998:	00000513          	li	a0,0
    8000399c:	00008067          	ret
    800039a0:	fe010113          	addi	sp,sp,-32
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	00113c23          	sd	ra,24(sp)
    800039b0:	02010413          	addi	s0,sp,32
    800039b4:	01053483          	ld	s1,16(a0)
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	75c080e7          	jalr	1884(ra) # 80002114 <mycpu>
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	40a48533          	sub	a0,s1,a0
    800039cc:	00153513          	seqz	a0,a0
    800039d0:	00813483          	ld	s1,8(sp)
    800039d4:	02010113          	addi	sp,sp,32
    800039d8:	00008067          	ret

00000000800039dc <push_off>:
    800039dc:	fe010113          	addi	sp,sp,-32
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00113c23          	sd	ra,24(sp)
    800039e8:	00913423          	sd	s1,8(sp)
    800039ec:	02010413          	addi	s0,sp,32
    800039f0:	100024f3          	csrr	s1,sstatus
    800039f4:	100027f3          	csrr	a5,sstatus
    800039f8:	ffd7f793          	andi	a5,a5,-3
    800039fc:	10079073          	csrw	sstatus,a5
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	714080e7          	jalr	1812(ra) # 80002114 <mycpu>
    80003a08:	07852783          	lw	a5,120(a0)
    80003a0c:	02078663          	beqz	a5,80003a38 <push_off+0x5c>
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	704080e7          	jalr	1796(ra) # 80002114 <mycpu>
    80003a18:	07852783          	lw	a5,120(a0)
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	0017879b          	addiw	a5,a5,1
    80003a28:	06f52c23          	sw	a5,120(a0)
    80003a2c:	00813483          	ld	s1,8(sp)
    80003a30:	02010113          	addi	sp,sp,32
    80003a34:	00008067          	ret
    80003a38:	0014d493          	srli	s1,s1,0x1
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	6d8080e7          	jalr	1752(ra) # 80002114 <mycpu>
    80003a44:	0014f493          	andi	s1,s1,1
    80003a48:	06952e23          	sw	s1,124(a0)
    80003a4c:	fc5ff06f          	j	80003a10 <push_off+0x34>

0000000080003a50 <pop_off>:
    80003a50:	ff010113          	addi	sp,sp,-16
    80003a54:	00813023          	sd	s0,0(sp)
    80003a58:	00113423          	sd	ra,8(sp)
    80003a5c:	01010413          	addi	s0,sp,16
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	6b4080e7          	jalr	1716(ra) # 80002114 <mycpu>
    80003a68:	100027f3          	csrr	a5,sstatus
    80003a6c:	0027f793          	andi	a5,a5,2
    80003a70:	04079663          	bnez	a5,80003abc <pop_off+0x6c>
    80003a74:	07852783          	lw	a5,120(a0)
    80003a78:	02f05a63          	blez	a5,80003aac <pop_off+0x5c>
    80003a7c:	fff7871b          	addiw	a4,a5,-1
    80003a80:	06e52c23          	sw	a4,120(a0)
    80003a84:	00071c63          	bnez	a4,80003a9c <pop_off+0x4c>
    80003a88:	07c52783          	lw	a5,124(a0)
    80003a8c:	00078863          	beqz	a5,80003a9c <pop_off+0x4c>
    80003a90:	100027f3          	csrr	a5,sstatus
    80003a94:	0027e793          	ori	a5,a5,2
    80003a98:	10079073          	csrw	sstatus,a5
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret
    80003aac:	00001517          	auipc	a0,0x1
    80003ab0:	7cc50513          	addi	a0,a0,1996 # 80005278 <digits+0x48>
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	018080e7          	jalr	24(ra) # 80002acc <panic>
    80003abc:	00001517          	auipc	a0,0x1
    80003ac0:	7a450513          	addi	a0,a0,1956 # 80005260 <digits+0x30>
    80003ac4:	fffff097          	auipc	ra,0xfffff
    80003ac8:	008080e7          	jalr	8(ra) # 80002acc <panic>

0000000080003acc <push_on>:
    80003acc:	fe010113          	addi	sp,sp,-32
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00113c23          	sd	ra,24(sp)
    80003ad8:	00913423          	sd	s1,8(sp)
    80003adc:	02010413          	addi	s0,sp,32
    80003ae0:	100024f3          	csrr	s1,sstatus
    80003ae4:	100027f3          	csrr	a5,sstatus
    80003ae8:	0027e793          	ori	a5,a5,2
    80003aec:	10079073          	csrw	sstatus,a5
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	624080e7          	jalr	1572(ra) # 80002114 <mycpu>
    80003af8:	07852783          	lw	a5,120(a0)
    80003afc:	02078663          	beqz	a5,80003b28 <push_on+0x5c>
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	614080e7          	jalr	1556(ra) # 80002114 <mycpu>
    80003b08:	07852783          	lw	a5,120(a0)
    80003b0c:	01813083          	ld	ra,24(sp)
    80003b10:	01013403          	ld	s0,16(sp)
    80003b14:	0017879b          	addiw	a5,a5,1
    80003b18:	06f52c23          	sw	a5,120(a0)
    80003b1c:	00813483          	ld	s1,8(sp)
    80003b20:	02010113          	addi	sp,sp,32
    80003b24:	00008067          	ret
    80003b28:	0014d493          	srli	s1,s1,0x1
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	5e8080e7          	jalr	1512(ra) # 80002114 <mycpu>
    80003b34:	0014f493          	andi	s1,s1,1
    80003b38:	06952e23          	sw	s1,124(a0)
    80003b3c:	fc5ff06f          	j	80003b00 <push_on+0x34>

0000000080003b40 <pop_on>:
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00813023          	sd	s0,0(sp)
    80003b48:	00113423          	sd	ra,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	5c4080e7          	jalr	1476(ra) # 80002114 <mycpu>
    80003b58:	100027f3          	csrr	a5,sstatus
    80003b5c:	0027f793          	andi	a5,a5,2
    80003b60:	04078463          	beqz	a5,80003ba8 <pop_on+0x68>
    80003b64:	07852783          	lw	a5,120(a0)
    80003b68:	02f05863          	blez	a5,80003b98 <pop_on+0x58>
    80003b6c:	fff7879b          	addiw	a5,a5,-1
    80003b70:	06f52c23          	sw	a5,120(a0)
    80003b74:	07853783          	ld	a5,120(a0)
    80003b78:	00079863          	bnez	a5,80003b88 <pop_on+0x48>
    80003b7c:	100027f3          	csrr	a5,sstatus
    80003b80:	ffd7f793          	andi	a5,a5,-3
    80003b84:	10079073          	csrw	sstatus,a5
    80003b88:	00813083          	ld	ra,8(sp)
    80003b8c:	00013403          	ld	s0,0(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret
    80003b98:	00001517          	auipc	a0,0x1
    80003b9c:	70850513          	addi	a0,a0,1800 # 800052a0 <digits+0x70>
    80003ba0:	fffff097          	auipc	ra,0xfffff
    80003ba4:	f2c080e7          	jalr	-212(ra) # 80002acc <panic>
    80003ba8:	00001517          	auipc	a0,0x1
    80003bac:	6d850513          	addi	a0,a0,1752 # 80005280 <digits+0x50>
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	f1c080e7          	jalr	-228(ra) # 80002acc <panic>

0000000080003bb8 <__memset>:
    80003bb8:	ff010113          	addi	sp,sp,-16
    80003bbc:	00813423          	sd	s0,8(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    80003bc4:	1a060e63          	beqz	a2,80003d80 <__memset+0x1c8>
    80003bc8:	40a007b3          	neg	a5,a0
    80003bcc:	0077f793          	andi	a5,a5,7
    80003bd0:	00778693          	addi	a3,a5,7
    80003bd4:	00b00813          	li	a6,11
    80003bd8:	0ff5f593          	andi	a1,a1,255
    80003bdc:	fff6071b          	addiw	a4,a2,-1
    80003be0:	1b06e663          	bltu	a3,a6,80003d8c <__memset+0x1d4>
    80003be4:	1cd76463          	bltu	a4,a3,80003dac <__memset+0x1f4>
    80003be8:	1a078e63          	beqz	a5,80003da4 <__memset+0x1ec>
    80003bec:	00b50023          	sb	a1,0(a0)
    80003bf0:	00100713          	li	a4,1
    80003bf4:	1ae78463          	beq	a5,a4,80003d9c <__memset+0x1e4>
    80003bf8:	00b500a3          	sb	a1,1(a0)
    80003bfc:	00200713          	li	a4,2
    80003c00:	1ae78a63          	beq	a5,a4,80003db4 <__memset+0x1fc>
    80003c04:	00b50123          	sb	a1,2(a0)
    80003c08:	00300713          	li	a4,3
    80003c0c:	18e78463          	beq	a5,a4,80003d94 <__memset+0x1dc>
    80003c10:	00b501a3          	sb	a1,3(a0)
    80003c14:	00400713          	li	a4,4
    80003c18:	1ae78263          	beq	a5,a4,80003dbc <__memset+0x204>
    80003c1c:	00b50223          	sb	a1,4(a0)
    80003c20:	00500713          	li	a4,5
    80003c24:	1ae78063          	beq	a5,a4,80003dc4 <__memset+0x20c>
    80003c28:	00b502a3          	sb	a1,5(a0)
    80003c2c:	00700713          	li	a4,7
    80003c30:	18e79e63          	bne	a5,a4,80003dcc <__memset+0x214>
    80003c34:	00b50323          	sb	a1,6(a0)
    80003c38:	00700e93          	li	t4,7
    80003c3c:	00859713          	slli	a4,a1,0x8
    80003c40:	00e5e733          	or	a4,a1,a4
    80003c44:	01059e13          	slli	t3,a1,0x10
    80003c48:	01c76e33          	or	t3,a4,t3
    80003c4c:	01859313          	slli	t1,a1,0x18
    80003c50:	006e6333          	or	t1,t3,t1
    80003c54:	02059893          	slli	a7,a1,0x20
    80003c58:	40f60e3b          	subw	t3,a2,a5
    80003c5c:	011368b3          	or	a7,t1,a7
    80003c60:	02859813          	slli	a6,a1,0x28
    80003c64:	0108e833          	or	a6,a7,a6
    80003c68:	03059693          	slli	a3,a1,0x30
    80003c6c:	003e589b          	srliw	a7,t3,0x3
    80003c70:	00d866b3          	or	a3,a6,a3
    80003c74:	03859713          	slli	a4,a1,0x38
    80003c78:	00389813          	slli	a6,a7,0x3
    80003c7c:	00f507b3          	add	a5,a0,a5
    80003c80:	00e6e733          	or	a4,a3,a4
    80003c84:	000e089b          	sext.w	a7,t3
    80003c88:	00f806b3          	add	a3,a6,a5
    80003c8c:	00e7b023          	sd	a4,0(a5)
    80003c90:	00878793          	addi	a5,a5,8
    80003c94:	fed79ce3          	bne	a5,a3,80003c8c <__memset+0xd4>
    80003c98:	ff8e7793          	andi	a5,t3,-8
    80003c9c:	0007871b          	sext.w	a4,a5
    80003ca0:	01d787bb          	addw	a5,a5,t4
    80003ca4:	0ce88e63          	beq	a7,a4,80003d80 <__memset+0x1c8>
    80003ca8:	00f50733          	add	a4,a0,a5
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	0017871b          	addiw	a4,a5,1
    80003cb4:	0cc77663          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	0027871b          	addiw	a4,a5,2
    80003cc4:	0ac77e63          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	0037871b          	addiw	a4,a5,3
    80003cd4:	0ac77663          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	0047871b          	addiw	a4,a5,4
    80003ce4:	08c77e63          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	0057871b          	addiw	a4,a5,5
    80003cf4:	08c77663          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	0067871b          	addiw	a4,a5,6
    80003d04:	06c77e63          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	0077871b          	addiw	a4,a5,7
    80003d14:	06c77663          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d18:	00e50733          	add	a4,a0,a4
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	0087871b          	addiw	a4,a5,8
    80003d24:	04c77e63          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d28:	00e50733          	add	a4,a0,a4
    80003d2c:	00b70023          	sb	a1,0(a4)
    80003d30:	0097871b          	addiw	a4,a5,9
    80003d34:	04c77663          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d38:	00e50733          	add	a4,a0,a4
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	00a7871b          	addiw	a4,a5,10
    80003d44:	02c77e63          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	00b7871b          	addiw	a4,a5,11
    80003d54:	02c77663          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	00c7871b          	addiw	a4,a5,12
    80003d64:	00c77e63          	bgeu	a4,a2,80003d80 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	00d7879b          	addiw	a5,a5,13
    80003d74:	00c7f663          	bgeu	a5,a2,80003d80 <__memset+0x1c8>
    80003d78:	00f507b3          	add	a5,a0,a5
    80003d7c:	00b78023          	sb	a1,0(a5)
    80003d80:	00813403          	ld	s0,8(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret
    80003d8c:	00b00693          	li	a3,11
    80003d90:	e55ff06f          	j	80003be4 <__memset+0x2c>
    80003d94:	00300e93          	li	t4,3
    80003d98:	ea5ff06f          	j	80003c3c <__memset+0x84>
    80003d9c:	00100e93          	li	t4,1
    80003da0:	e9dff06f          	j	80003c3c <__memset+0x84>
    80003da4:	00000e93          	li	t4,0
    80003da8:	e95ff06f          	j	80003c3c <__memset+0x84>
    80003dac:	00000793          	li	a5,0
    80003db0:	ef9ff06f          	j	80003ca8 <__memset+0xf0>
    80003db4:	00200e93          	li	t4,2
    80003db8:	e85ff06f          	j	80003c3c <__memset+0x84>
    80003dbc:	00400e93          	li	t4,4
    80003dc0:	e7dff06f          	j	80003c3c <__memset+0x84>
    80003dc4:	00500e93          	li	t4,5
    80003dc8:	e75ff06f          	j	80003c3c <__memset+0x84>
    80003dcc:	00600e93          	li	t4,6
    80003dd0:	e6dff06f          	j	80003c3c <__memset+0x84>

0000000080003dd4 <__memmove>:
    80003dd4:	ff010113          	addi	sp,sp,-16
    80003dd8:	00813423          	sd	s0,8(sp)
    80003ddc:	01010413          	addi	s0,sp,16
    80003de0:	0e060863          	beqz	a2,80003ed0 <__memmove+0xfc>
    80003de4:	fff6069b          	addiw	a3,a2,-1
    80003de8:	0006881b          	sext.w	a6,a3
    80003dec:	0ea5e863          	bltu	a1,a0,80003edc <__memmove+0x108>
    80003df0:	00758713          	addi	a4,a1,7
    80003df4:	00a5e7b3          	or	a5,a1,a0
    80003df8:	40a70733          	sub	a4,a4,a0
    80003dfc:	0077f793          	andi	a5,a5,7
    80003e00:	00f73713          	sltiu	a4,a4,15
    80003e04:	00174713          	xori	a4,a4,1
    80003e08:	0017b793          	seqz	a5,a5
    80003e0c:	00e7f7b3          	and	a5,a5,a4
    80003e10:	10078863          	beqz	a5,80003f20 <__memmove+0x14c>
    80003e14:	00900793          	li	a5,9
    80003e18:	1107f463          	bgeu	a5,a6,80003f20 <__memmove+0x14c>
    80003e1c:	0036581b          	srliw	a6,a2,0x3
    80003e20:	fff8081b          	addiw	a6,a6,-1
    80003e24:	02081813          	slli	a6,a6,0x20
    80003e28:	01d85893          	srli	a7,a6,0x1d
    80003e2c:	00858813          	addi	a6,a1,8
    80003e30:	00058793          	mv	a5,a1
    80003e34:	00050713          	mv	a4,a0
    80003e38:	01088833          	add	a6,a7,a6
    80003e3c:	0007b883          	ld	a7,0(a5)
    80003e40:	00878793          	addi	a5,a5,8
    80003e44:	00870713          	addi	a4,a4,8
    80003e48:	ff173c23          	sd	a7,-8(a4)
    80003e4c:	ff0798e3          	bne	a5,a6,80003e3c <__memmove+0x68>
    80003e50:	ff867713          	andi	a4,a2,-8
    80003e54:	02071793          	slli	a5,a4,0x20
    80003e58:	0207d793          	srli	a5,a5,0x20
    80003e5c:	00f585b3          	add	a1,a1,a5
    80003e60:	40e686bb          	subw	a3,a3,a4
    80003e64:	00f507b3          	add	a5,a0,a5
    80003e68:	06e60463          	beq	a2,a4,80003ed0 <__memmove+0xfc>
    80003e6c:	0005c703          	lbu	a4,0(a1)
    80003e70:	00e78023          	sb	a4,0(a5)
    80003e74:	04068e63          	beqz	a3,80003ed0 <__memmove+0xfc>
    80003e78:	0015c603          	lbu	a2,1(a1)
    80003e7c:	00100713          	li	a4,1
    80003e80:	00c780a3          	sb	a2,1(a5)
    80003e84:	04e68663          	beq	a3,a4,80003ed0 <__memmove+0xfc>
    80003e88:	0025c603          	lbu	a2,2(a1)
    80003e8c:	00200713          	li	a4,2
    80003e90:	00c78123          	sb	a2,2(a5)
    80003e94:	02e68e63          	beq	a3,a4,80003ed0 <__memmove+0xfc>
    80003e98:	0035c603          	lbu	a2,3(a1)
    80003e9c:	00300713          	li	a4,3
    80003ea0:	00c781a3          	sb	a2,3(a5)
    80003ea4:	02e68663          	beq	a3,a4,80003ed0 <__memmove+0xfc>
    80003ea8:	0045c603          	lbu	a2,4(a1)
    80003eac:	00400713          	li	a4,4
    80003eb0:	00c78223          	sb	a2,4(a5)
    80003eb4:	00e68e63          	beq	a3,a4,80003ed0 <__memmove+0xfc>
    80003eb8:	0055c603          	lbu	a2,5(a1)
    80003ebc:	00500713          	li	a4,5
    80003ec0:	00c782a3          	sb	a2,5(a5)
    80003ec4:	00e68663          	beq	a3,a4,80003ed0 <__memmove+0xfc>
    80003ec8:	0065c703          	lbu	a4,6(a1)
    80003ecc:	00e78323          	sb	a4,6(a5)
    80003ed0:	00813403          	ld	s0,8(sp)
    80003ed4:	01010113          	addi	sp,sp,16
    80003ed8:	00008067          	ret
    80003edc:	02061713          	slli	a4,a2,0x20
    80003ee0:	02075713          	srli	a4,a4,0x20
    80003ee4:	00e587b3          	add	a5,a1,a4
    80003ee8:	f0f574e3          	bgeu	a0,a5,80003df0 <__memmove+0x1c>
    80003eec:	02069613          	slli	a2,a3,0x20
    80003ef0:	02065613          	srli	a2,a2,0x20
    80003ef4:	fff64613          	not	a2,a2
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00c78633          	add	a2,a5,a2
    80003f00:	fff7c683          	lbu	a3,-1(a5)
    80003f04:	fff78793          	addi	a5,a5,-1
    80003f08:	fff70713          	addi	a4,a4,-1
    80003f0c:	00d70023          	sb	a3,0(a4)
    80003f10:	fec798e3          	bne	a5,a2,80003f00 <__memmove+0x12c>
    80003f14:	00813403          	ld	s0,8(sp)
    80003f18:	01010113          	addi	sp,sp,16
    80003f1c:	00008067          	ret
    80003f20:	02069713          	slli	a4,a3,0x20
    80003f24:	02075713          	srli	a4,a4,0x20
    80003f28:	00170713          	addi	a4,a4,1
    80003f2c:	00e50733          	add	a4,a0,a4
    80003f30:	00050793          	mv	a5,a0
    80003f34:	0005c683          	lbu	a3,0(a1)
    80003f38:	00178793          	addi	a5,a5,1
    80003f3c:	00158593          	addi	a1,a1,1
    80003f40:	fed78fa3          	sb	a3,-1(a5)
    80003f44:	fee798e3          	bne	a5,a4,80003f34 <__memmove+0x160>
    80003f48:	f89ff06f          	j	80003ed0 <__memmove+0xfc>

0000000080003f4c <__mem_free>:
    80003f4c:	ff010113          	addi	sp,sp,-16
    80003f50:	00813423          	sd	s0,8(sp)
    80003f54:	01010413          	addi	s0,sp,16
    80003f58:	00002597          	auipc	a1,0x2
    80003f5c:	8c058593          	addi	a1,a1,-1856 # 80005818 <freep>
    80003f60:	0005b783          	ld	a5,0(a1)
    80003f64:	ff050693          	addi	a3,a0,-16
    80003f68:	0007b703          	ld	a4,0(a5)
    80003f6c:	00d7fc63          	bgeu	a5,a3,80003f84 <__mem_free+0x38>
    80003f70:	00e6ee63          	bltu	a3,a4,80003f8c <__mem_free+0x40>
    80003f74:	00e7fc63          	bgeu	a5,a4,80003f8c <__mem_free+0x40>
    80003f78:	00070793          	mv	a5,a4
    80003f7c:	0007b703          	ld	a4,0(a5)
    80003f80:	fed7e8e3          	bltu	a5,a3,80003f70 <__mem_free+0x24>
    80003f84:	fee7eae3          	bltu	a5,a4,80003f78 <__mem_free+0x2c>
    80003f88:	fee6f8e3          	bgeu	a3,a4,80003f78 <__mem_free+0x2c>
    80003f8c:	ff852803          	lw	a6,-8(a0)
    80003f90:	02081613          	slli	a2,a6,0x20
    80003f94:	01c65613          	srli	a2,a2,0x1c
    80003f98:	00c68633          	add	a2,a3,a2
    80003f9c:	02c70a63          	beq	a4,a2,80003fd0 <__mem_free+0x84>
    80003fa0:	fee53823          	sd	a4,-16(a0)
    80003fa4:	0087a503          	lw	a0,8(a5)
    80003fa8:	02051613          	slli	a2,a0,0x20
    80003fac:	01c65613          	srli	a2,a2,0x1c
    80003fb0:	00c78633          	add	a2,a5,a2
    80003fb4:	04c68263          	beq	a3,a2,80003ff8 <__mem_free+0xac>
    80003fb8:	00813403          	ld	s0,8(sp)
    80003fbc:	00d7b023          	sd	a3,0(a5)
    80003fc0:	00f5b023          	sd	a5,0(a1)
    80003fc4:	00000513          	li	a0,0
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret
    80003fd0:	00872603          	lw	a2,8(a4)
    80003fd4:	00073703          	ld	a4,0(a4)
    80003fd8:	0106083b          	addw	a6,a2,a6
    80003fdc:	ff052c23          	sw	a6,-8(a0)
    80003fe0:	fee53823          	sd	a4,-16(a0)
    80003fe4:	0087a503          	lw	a0,8(a5)
    80003fe8:	02051613          	slli	a2,a0,0x20
    80003fec:	01c65613          	srli	a2,a2,0x1c
    80003ff0:	00c78633          	add	a2,a5,a2
    80003ff4:	fcc692e3          	bne	a3,a2,80003fb8 <__mem_free+0x6c>
    80003ff8:	00813403          	ld	s0,8(sp)
    80003ffc:	0105053b          	addw	a0,a0,a6
    80004000:	00a7a423          	sw	a0,8(a5)
    80004004:	00e7b023          	sd	a4,0(a5)
    80004008:	00f5b023          	sd	a5,0(a1)
    8000400c:	00000513          	li	a0,0
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret

0000000080004018 <__mem_alloc>:
    80004018:	fc010113          	addi	sp,sp,-64
    8000401c:	02813823          	sd	s0,48(sp)
    80004020:	02913423          	sd	s1,40(sp)
    80004024:	03213023          	sd	s2,32(sp)
    80004028:	01513423          	sd	s5,8(sp)
    8000402c:	02113c23          	sd	ra,56(sp)
    80004030:	01313c23          	sd	s3,24(sp)
    80004034:	01413823          	sd	s4,16(sp)
    80004038:	01613023          	sd	s6,0(sp)
    8000403c:	04010413          	addi	s0,sp,64
    80004040:	00001a97          	auipc	s5,0x1
    80004044:	7d8a8a93          	addi	s5,s5,2008 # 80005818 <freep>
    80004048:	00f50913          	addi	s2,a0,15
    8000404c:	000ab683          	ld	a3,0(s5)
    80004050:	00495913          	srli	s2,s2,0x4
    80004054:	0019049b          	addiw	s1,s2,1
    80004058:	00048913          	mv	s2,s1
    8000405c:	0c068c63          	beqz	a3,80004134 <__mem_alloc+0x11c>
    80004060:	0006b503          	ld	a0,0(a3)
    80004064:	00852703          	lw	a4,8(a0)
    80004068:	10977063          	bgeu	a4,s1,80004168 <__mem_alloc+0x150>
    8000406c:	000017b7          	lui	a5,0x1
    80004070:	0009099b          	sext.w	s3,s2
    80004074:	0af4e863          	bltu	s1,a5,80004124 <__mem_alloc+0x10c>
    80004078:	02099a13          	slli	s4,s3,0x20
    8000407c:	01ca5a13          	srli	s4,s4,0x1c
    80004080:	fff00b13          	li	s6,-1
    80004084:	0100006f          	j	80004094 <__mem_alloc+0x7c>
    80004088:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000408c:	00852703          	lw	a4,8(a0)
    80004090:	04977463          	bgeu	a4,s1,800040d8 <__mem_alloc+0xc0>
    80004094:	00050793          	mv	a5,a0
    80004098:	fea698e3          	bne	a3,a0,80004088 <__mem_alloc+0x70>
    8000409c:	000a0513          	mv	a0,s4
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	1f0080e7          	jalr	496(ra) # 80004290 <kvmincrease>
    800040a8:	00050793          	mv	a5,a0
    800040ac:	01050513          	addi	a0,a0,16
    800040b0:	07678e63          	beq	a5,s6,8000412c <__mem_alloc+0x114>
    800040b4:	0137a423          	sw	s3,8(a5)
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	e94080e7          	jalr	-364(ra) # 80003f4c <__mem_free>
    800040c0:	000ab783          	ld	a5,0(s5)
    800040c4:	06078463          	beqz	a5,8000412c <__mem_alloc+0x114>
    800040c8:	0007b503          	ld	a0,0(a5)
    800040cc:	00078693          	mv	a3,a5
    800040d0:	00852703          	lw	a4,8(a0)
    800040d4:	fc9760e3          	bltu	a4,s1,80004094 <__mem_alloc+0x7c>
    800040d8:	08e48263          	beq	s1,a4,8000415c <__mem_alloc+0x144>
    800040dc:	4127073b          	subw	a4,a4,s2
    800040e0:	02071693          	slli	a3,a4,0x20
    800040e4:	01c6d693          	srli	a3,a3,0x1c
    800040e8:	00e52423          	sw	a4,8(a0)
    800040ec:	00d50533          	add	a0,a0,a3
    800040f0:	01252423          	sw	s2,8(a0)
    800040f4:	00fab023          	sd	a5,0(s5)
    800040f8:	01050513          	addi	a0,a0,16
    800040fc:	03813083          	ld	ra,56(sp)
    80004100:	03013403          	ld	s0,48(sp)
    80004104:	02813483          	ld	s1,40(sp)
    80004108:	02013903          	ld	s2,32(sp)
    8000410c:	01813983          	ld	s3,24(sp)
    80004110:	01013a03          	ld	s4,16(sp)
    80004114:	00813a83          	ld	s5,8(sp)
    80004118:	00013b03          	ld	s6,0(sp)
    8000411c:	04010113          	addi	sp,sp,64
    80004120:	00008067          	ret
    80004124:	000019b7          	lui	s3,0x1
    80004128:	f51ff06f          	j	80004078 <__mem_alloc+0x60>
    8000412c:	00000513          	li	a0,0
    80004130:	fcdff06f          	j	800040fc <__mem_alloc+0xe4>
    80004134:	00003797          	auipc	a5,0x3
    80004138:	96c78793          	addi	a5,a5,-1684 # 80006aa0 <base>
    8000413c:	00078513          	mv	a0,a5
    80004140:	00fab023          	sd	a5,0(s5)
    80004144:	00f7b023          	sd	a5,0(a5)
    80004148:	00000713          	li	a4,0
    8000414c:	00003797          	auipc	a5,0x3
    80004150:	9407ae23          	sw	zero,-1700(a5) # 80006aa8 <base+0x8>
    80004154:	00050693          	mv	a3,a0
    80004158:	f11ff06f          	j	80004068 <__mem_alloc+0x50>
    8000415c:	00053703          	ld	a4,0(a0)
    80004160:	00e7b023          	sd	a4,0(a5)
    80004164:	f91ff06f          	j	800040f4 <__mem_alloc+0xdc>
    80004168:	00068793          	mv	a5,a3
    8000416c:	f6dff06f          	j	800040d8 <__mem_alloc+0xc0>

0000000080004170 <__putc>:
    80004170:	fe010113          	addi	sp,sp,-32
    80004174:	00813823          	sd	s0,16(sp)
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	02010413          	addi	s0,sp,32
    80004180:	00050793          	mv	a5,a0
    80004184:	fef40593          	addi	a1,s0,-17
    80004188:	00100613          	li	a2,1
    8000418c:	00000513          	li	a0,0
    80004190:	fef407a3          	sb	a5,-17(s0)
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	918080e7          	jalr	-1768(ra) # 80002aac <console_write>
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	01013403          	ld	s0,16(sp)
    800041a4:	02010113          	addi	sp,sp,32
    800041a8:	00008067          	ret

00000000800041ac <__getc>:
    800041ac:	fe010113          	addi	sp,sp,-32
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00113c23          	sd	ra,24(sp)
    800041b8:	02010413          	addi	s0,sp,32
    800041bc:	fe840593          	addi	a1,s0,-24
    800041c0:	00100613          	li	a2,1
    800041c4:	00000513          	li	a0,0
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	8c4080e7          	jalr	-1852(ra) # 80002a8c <console_read>
    800041d0:	fe844503          	lbu	a0,-24(s0)
    800041d4:	01813083          	ld	ra,24(sp)
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <console_handler>:
    800041e4:	fe010113          	addi	sp,sp,-32
    800041e8:	00813823          	sd	s0,16(sp)
    800041ec:	00113c23          	sd	ra,24(sp)
    800041f0:	00913423          	sd	s1,8(sp)
    800041f4:	02010413          	addi	s0,sp,32
    800041f8:	14202773          	csrr	a4,scause
    800041fc:	100027f3          	csrr	a5,sstatus
    80004200:	0027f793          	andi	a5,a5,2
    80004204:	06079e63          	bnez	a5,80004280 <console_handler+0x9c>
    80004208:	00074c63          	bltz	a4,80004220 <console_handler+0x3c>
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	00813483          	ld	s1,8(sp)
    80004218:	02010113          	addi	sp,sp,32
    8000421c:	00008067          	ret
    80004220:	0ff77713          	andi	a4,a4,255
    80004224:	00900793          	li	a5,9
    80004228:	fef712e3          	bne	a4,a5,8000420c <console_handler+0x28>
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	4b8080e7          	jalr	1208(ra) # 800026e4 <plic_claim>
    80004234:	00a00793          	li	a5,10
    80004238:	00050493          	mv	s1,a0
    8000423c:	02f50c63          	beq	a0,a5,80004274 <console_handler+0x90>
    80004240:	fc0506e3          	beqz	a0,8000420c <console_handler+0x28>
    80004244:	00050593          	mv	a1,a0
    80004248:	00001517          	auipc	a0,0x1
    8000424c:	f6050513          	addi	a0,a0,-160 # 800051a8 <kvmincrease+0xf18>
    80004250:	fffff097          	auipc	ra,0xfffff
    80004254:	8d8080e7          	jalr	-1832(ra) # 80002b28 <__printf>
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	01813083          	ld	ra,24(sp)
    80004260:	00048513          	mv	a0,s1
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	ffffe317          	auipc	t1,0xffffe
    80004270:	4b030067          	jr	1200(t1) # 8000271c <plic_complete>
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	1bc080e7          	jalr	444(ra) # 80003430 <uartintr>
    8000427c:	fddff06f          	j	80004258 <console_handler+0x74>
    80004280:	00001517          	auipc	a0,0x1
    80004284:	02850513          	addi	a0,a0,40 # 800052a8 <digits+0x78>
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	844080e7          	jalr	-1980(ra) # 80002acc <panic>

0000000080004290 <kvmincrease>:
    80004290:	fe010113          	addi	sp,sp,-32
    80004294:	01213023          	sd	s2,0(sp)
    80004298:	00001937          	lui	s2,0x1
    8000429c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00113c23          	sd	ra,24(sp)
    800042a8:	00913423          	sd	s1,8(sp)
    800042ac:	02010413          	addi	s0,sp,32
    800042b0:	01250933          	add	s2,a0,s2
    800042b4:	00c95913          	srli	s2,s2,0xc
    800042b8:	02090863          	beqz	s2,800042e8 <kvmincrease+0x58>
    800042bc:	00000493          	li	s1,0
    800042c0:	00148493          	addi	s1,s1,1
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	4bc080e7          	jalr	1212(ra) # 80003780 <kalloc>
    800042cc:	fe991ae3          	bne	s2,s1,800042c0 <kvmincrease+0x30>
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	01013403          	ld	s0,16(sp)
    800042d8:	00813483          	ld	s1,8(sp)
    800042dc:	00013903          	ld	s2,0(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret
    800042e8:	01813083          	ld	ra,24(sp)
    800042ec:	01013403          	ld	s0,16(sp)
    800042f0:	00813483          	ld	s1,8(sp)
    800042f4:	00013903          	ld	s2,0(sp)
    800042f8:	00000513          	li	a0,0
    800042fc:	02010113          	addi	sp,sp,32
    80004300:	00008067          	ret
	...
