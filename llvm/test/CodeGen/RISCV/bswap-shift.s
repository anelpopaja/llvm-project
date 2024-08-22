	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p1_zbkb1p0"
	.file	"bswap-shift.ll"
	.globl	test_bswap_srli_7_bswap_i16     # -- Begin function test_bswap_srli_7_bswap_i16
	.p2align	2
	.type	test_bswap_srli_7_bswap_i16,@function
test_bswap_srli_7_bswap_i16:            # @test_bswap_srli_7_bswap_i16
# %bb.0:
	lui	a1, 8
	and	a1, a0, a1
	srli	a1, a1, 8
	packh	a0, a1, a0
	srli	a1, a0, 15
	slli	a0, a0, 1
	or	a0, a0, a1
	ret
.Lfunc_end0:
	.size	test_bswap_srli_7_bswap_i16, .Lfunc_end0-test_bswap_srli_7_bswap_i16
                                        # -- End function
	.globl	test_bswap_srli_8_bswap_i16     # -- Begin function test_bswap_srli_8_bswap_i16
	.p2align	2
	.type	test_bswap_srli_8_bswap_i16,@function
test_bswap_srli_8_bswap_i16:            # @test_bswap_srli_8_bswap_i16
# %bb.0:
	slli	a0, a0, 8
	ret
.Lfunc_end1:
	.size	test_bswap_srli_8_bswap_i16, .Lfunc_end1-test_bswap_srli_8_bswap_i16
                                        # -- End function
	.globl	test_bswap_srli_8_bswap_i32     # -- Begin function test_bswap_srli_8_bswap_i32
	.p2align	2
	.type	test_bswap_srli_8_bswap_i32,@function
test_bswap_srli_8_bswap_i32:            # @test_bswap_srli_8_bswap_i32
# %bb.0:
	slli	a0, a0, 8
	ret
.Lfunc_end2:
	.size	test_bswap_srli_8_bswap_i32, .Lfunc_end2-test_bswap_srli_8_bswap_i32
                                        # -- End function
	.globl	test_bswap_srli_16_bswap_i32    # -- Begin function test_bswap_srli_16_bswap_i32
	.p2align	2
	.type	test_bswap_srli_16_bswap_i32,@function
test_bswap_srli_16_bswap_i32:           # @test_bswap_srli_16_bswap_i32
# %bb.0:
	slli	a0, a0, 16
	ret
.Lfunc_end3:
	.size	test_bswap_srli_16_bswap_i32, .Lfunc_end3-test_bswap_srli_16_bswap_i32
                                        # -- End function
	.globl	test_bswap_srli_24_bswap_i32    # -- Begin function test_bswap_srli_24_bswap_i32
	.p2align	2
	.type	test_bswap_srli_24_bswap_i32,@function
test_bswap_srli_24_bswap_i32:           # @test_bswap_srli_24_bswap_i32
# %bb.0:
	slli	a0, a0, 24
	ret
.Lfunc_end4:
	.size	test_bswap_srli_24_bswap_i32, .Lfunc_end4-test_bswap_srli_24_bswap_i32
                                        # -- End function
	.globl	test_bswap_srli_48_bswap_i64    # -- Begin function test_bswap_srli_48_bswap_i64
	.p2align	2
	.type	test_bswap_srli_48_bswap_i64,@function
test_bswap_srli_48_bswap_i64:           # @test_bswap_srli_48_bswap_i64
# %bb.0:
	slli	a1, a0, 16
	li	a0, 0
	ret
.Lfunc_end5:
	.size	test_bswap_srli_48_bswap_i64, .Lfunc_end5-test_bswap_srli_48_bswap_i64
                                        # -- End function
	.globl	test_bswap_shli_7_bswap_i16     # -- Begin function test_bswap_shli_7_bswap_i16
	.p2align	2
	.type	test_bswap_shli_7_bswap_i16,@function
test_bswap_shli_7_bswap_i16:            # @test_bswap_shli_7_bswap_i16
# %bb.0:
	slli	a1, a0, 8
	slli	a0, a0, 16
	srli	a0, a0, 24
	or	a0, a1, a0
	slli	a1, a0, 15
	slli	a0, a0, 23
	srli	a0, a0, 24
	or	a0, a1, a0
	ret
.Lfunc_end6:
	.size	test_bswap_shli_7_bswap_i16, .Lfunc_end6-test_bswap_shli_7_bswap_i16
                                        # -- End function
	.globl	test_bswap_shli_8_bswap_i16     # -- Begin function test_bswap_shli_8_bswap_i16
	.p2align	2
	.type	test_bswap_shli_8_bswap_i16,@function
test_bswap_shli_8_bswap_i16:            # @test_bswap_shli_8_bswap_i16
# %bb.0:
	slli	a0, a0, 16
	srli	a0, a0, 24
	ret
.Lfunc_end7:
	.size	test_bswap_shli_8_bswap_i16, .Lfunc_end7-test_bswap_shli_8_bswap_i16
                                        # -- End function
	.globl	test_bswap_shli_8_bswap_i32     # -- Begin function test_bswap_shli_8_bswap_i32
	.p2align	2
	.type	test_bswap_shli_8_bswap_i32,@function
test_bswap_shli_8_bswap_i32:            # @test_bswap_shli_8_bswap_i32
# %bb.0:
	srli	a0, a0, 8
	ret
.Lfunc_end8:
	.size	test_bswap_shli_8_bswap_i32, .Lfunc_end8-test_bswap_shli_8_bswap_i32
                                        # -- End function
	.globl	test_bswap_shli_16_bswap_i32    # -- Begin function test_bswap_shli_16_bswap_i32
	.p2align	2
	.type	test_bswap_shli_16_bswap_i32,@function
test_bswap_shli_16_bswap_i32:           # @test_bswap_shli_16_bswap_i32
# %bb.0:
	srli	a0, a0, 16
	ret
.Lfunc_end9:
	.size	test_bswap_shli_16_bswap_i32, .Lfunc_end9-test_bswap_shli_16_bswap_i32
                                        # -- End function
	.globl	test_bswap_shli_24_bswap_i32    # -- Begin function test_bswap_shli_24_bswap_i32
	.p2align	2
	.type	test_bswap_shli_24_bswap_i32,@function
test_bswap_shli_24_bswap_i32:           # @test_bswap_shli_24_bswap_i32
# %bb.0:
	srli	a0, a0, 24
	ret
.Lfunc_end10:
	.size	test_bswap_shli_24_bswap_i32, .Lfunc_end10-test_bswap_shli_24_bswap_i32
                                        # -- End function
	.globl	test_bswap_shli_48_bswap_i64    # -- Begin function test_bswap_shli_48_bswap_i64
	.p2align	2
	.type	test_bswap_shli_48_bswap_i64,@function
test_bswap_shli_48_bswap_i64:           # @test_bswap_shli_48_bswap_i64
# %bb.0:
	srli	a0, a1, 16
	li	a1, 0
	ret
.Lfunc_end11:
	.size	test_bswap_shli_48_bswap_i64, .Lfunc_end11-test_bswap_shli_48_bswap_i64
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
