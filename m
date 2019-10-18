Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416A9DCDCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdH9xIKJDM5y66V2wsP/6dyUDh7vqIevwZXqVqtgrFE=; b=SgURhHufbV6uMA
	KWkXL60lUcrDCfuNGYPIE6WXbqzib0UtpO09NKiCC2ng9737TpQU4SS98Ek3FZQFMAVGkOMUJAdHa
	3SlGNoVmNVSa+S+3T/i2ExTozwdgubfazS9sHED/5o63MjpFvLsOdxGcjbd8VYyHQxZCrKafF87SW
	okYt6B0OiJvJhTJx5r01Dt3sxNLnUsmNcDWnc7qdY7gkjXjrN17Y2PA/eO6AK+EwcZHeYv+2W1YkE
	hDu7xEMyBjnrHyMM1IaeHMy6ktq6ShBjhnTarAOgQber1T7gUEuxcmfBndTnSljmPrt1+biqScMt8
	wSxMQLkveDYL7VMggxfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWpm-0000Kc-Tu; Fri, 18 Oct 2019 18:18:42 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWoH-0007UR-KP
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:17:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C6CE1650;
 Fri, 18 Oct 2019 11:16:55 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3FE803F718;
 Fri, 18 Oct 2019 11:16:54 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2 7/8] arm64: Import latest version of Cortex Strings' strncmp
Date: Fri, 18 Oct 2019 19:16:41 +0100
Message-Id: <f857c8daf48600aa660b2d20b1d52bcad57420b7.1571421836.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1571421836.git.robin.murphy@arm.com>
References: <cover.1571421836.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111710_127065_A930488A 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sam Tebbs <sam.tebbs@arm.com>, sam-tebbs@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sam Tebbs <sam.tebbs@arm.com>

Import latest version of Cortex Strings' strncmp function.

The upstream source is src/aarch64/strncmp.S as of commit 071fe283b28d
in https://git.linaro.org/toolchain/cortex-strings.git.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: update attribution, expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/lib/strncmp.S | 379 ++++++++++++++++++---------------------
 1 file changed, 171 insertions(+), 208 deletions(-)

diff --git a/arch/arm64/lib/strncmp.S b/arch/arm64/lib/strncmp.S
index f571581888fa..bb6d16c1fa75 100644
--- a/arch/arm64/lib/strncmp.S
+++ b/arch/arm64/lib/strncmp.S
@@ -1,13 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2013 ARM Ltd.
- * Copyright (C) 2013 Linaro.
+ * Copyright (c) 2013,2018 Linaro Limited. All rights reserved.
  *
- * This code is based on glibc cortex strings work originally authored by Linaro
- * be found @
+ * This code is based on glibc Cortex Strings work originally authored by
+ * Linaro, found at:
  *
- * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
- * files/head:/src/aarch64/
+ * https://git.linaro.org/toolchain/cortex-strings.git
  */
 
 #include <linux/linkage.h>
@@ -30,49 +28,49 @@
 #define REP8_80 0x8080808080808080
 
 /* Parameters and result.  */
-src1		.req	x0
-src2		.req	x1
-limit		.req	x2
-result		.req	x0
+#define src1		x0
+#define src2		x1
+#define limit		x2
+#define result		x0
 
 /* Internal variables.  */
-data1		.req	x3
-data1w		.req	w3
-data2		.req	x4
-data2w		.req	w4
-has_nul		.req	x5
-diff		.req	x6
-syndrome	.req	x7
-tmp1		.req	x8
-tmp2		.req	x9
-tmp3		.req	x10
-zeroones	.req	x11
-pos		.req	x12
-limit_wd	.req	x13
-mask		.req	x14
-endloop		.req	x15
+#define data1		x3
+#define data1w		w3
+#define data2		x4
+#define data2w		w4
+#define has_nul		x5
+#define diff		x6
+#define syndrome	x7
+#define tmp1		x8
+#define tmp2		x9
+#define tmp3		x10
+#define zeroones	x11
+#define pos		x12
+#define limit_wd	x13
+#define mask		x14
+#define endloop		x15
+#define count		mask
 
+	.p2align 6
+	.rep 7
+	nop	/* Pad so that the loop below fits a cache line.  */
+	.endr
 WEAK(strncmp)
 	cbz	limit, .Lret0
 	eor	tmp1, src1, src2
 	mov	zeroones, #REP8_01
 	tst	tmp1, #7
+	and	count, src1, #7
 	b.ne	.Lmisaligned8
-	ands	tmp1, src1, #7
-	b.ne	.Lmutual_align
+	cbnz	count, .Lmutual_align
 	/* Calculate the number of full and partial words -1.  */
-	/*
-	* when limit is mulitply of 8, if not sub 1,
-	* the judgement of last dword will wrong.
-	*/
-	sub	limit_wd, limit, #1 /* limit != 0, so no underflow.  */
-	lsr	limit_wd, limit_wd, #3  /* Convert to Dwords.  */
+	sub	limit_wd, limit, #1	/* limit != 0, so no underflow.  */
+	lsr	limit_wd, limit_wd, #3	/* Convert to Dwords.  */
 
-	/*
-	* NUL detection works on the principle that (X - 1) & (~X) & 0x80
-	* (=> (X - 1) & ~(X | 0x7f)) is non-zero iff a byte is zero, and
-	* can be done in parallel across the entire word.
-	*/
+	/* NUL detection works on the principle that (X - 1) & (~X) & 0x80
+	   (=> (X - 1) & ~(X | 0x7f)) is non-zero iff a byte is zero, and
+	   can be done in parallel across the entire word.  */
+	/* Start of performance-critical section  -- one 64B cache line.  */
 .Lloop_aligned:
 	ldr	data1, [src1], #8
 	ldr	data2, [src2], #8
@@ -80,23 +78,24 @@ WEAK(strncmp)
 	subs	limit_wd, limit_wd, #1
 	sub	tmp1, data1, zeroones
 	orr	tmp2, data1, #REP8_7f
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	csinv	endloop, diff, xzr, pl  /* Last Dword or differences.*/
-	bics	has_nul, tmp1, tmp2 /* Non-zero if NUL terminator.  */
+	eor	diff, data1, data2	/* Non-zero if differences found.  */
+	csinv	endloop, diff, xzr, pl	/* Last Dword or differences.  */
+	bics	has_nul, tmp1, tmp2	/* Non-zero if NUL terminator.  */
 	ccmp	endloop, #0, #0, eq
 	b.eq	.Lloop_aligned
+	/* End of performance-critical section  -- one 64B cache line.  */
 
-	/*Not reached the limit, must have found the end or a diff.  */
+	/* Not reached the limit, must have found the end or a diff.  */
 	tbz	limit_wd, #63, .Lnot_limit
 
 	/* Limit % 8 == 0 => all bytes significant.  */
 	ands	limit, limit, #7
 	b.eq	.Lnot_limit
 
-	lsl	limit, limit, #3    /* Bits -> bytes.  */
+	lsl	limit, limit, #3	/* Bits -> bytes.  */
 	mov	mask, #~0
-CPU_BE( lsr	mask, mask, limit )
-CPU_LE( lsl	mask, mask, limit )
+CPU_BE(lsr	mask, mask, limit)
+CPU_LE(lsl	mask, mask, limit)
 	bic	data1, data1, mask
 	bic	data2, data2, mask
 
@@ -105,192 +104,156 @@ CPU_LE( lsl	mask, mask, limit )
 
 .Lnot_limit:
 	orr	syndrome, diff, has_nul
-	b	.Lcal_cmpresult
+
+	CPU_LE(rev	syndrome, syndrome)
+	CPU_LE(rev	data1, data1)
+	/* The MS-non-zero bit of the syndrome marks either the first bit
+	   that is different, or the top bit of the first zero byte.
+	   Shifting left now will bring the critical information into the
+	   top bits.  */
+	CPU_LE(clz	pos, syndrome)
+	CPU_LE(rev	data2, data2)
+	CPU_LE(lsl	data1, data1, pos)
+	CPU_LE(lsl	data2, data2, pos)
+	/* But we need to zero-extend (char is unsigned) the value and then
+	   perform a signed 32-bit subtraction.  */
+	CPU_LE(lsr	data1, data1, #56)
+	CPU_LE(sub	result, data1, data2, lsr #56)
+	CPU_LE(ret)
+	/* For big-endian we cannot use the trick with the syndrome value
+	   as carry-propagation can corrupt the upper bits if the trailing
+	   bytes in the string contain 0x01.  */
+	/* However, if there is no NUL byte in the dword, we can generate
+	   the result directly.  We can't just subtract the bytes as the
+	   MSB might be significant.  */
+	CPU_BE(cbnz	has_nul, 1f)
+	CPU_BE(cmp	data1, data2)
+	CPU_BE(cset	result, ne)
+	CPU_BE(cneg	result, result, lo)
+	CPU_BE(ret)
+1:
+	/* Re-compute the NUL-byte detection, using a byte-reversed value.  */
+	CPU_BE(rev	tmp3, data1)
+	CPU_BE(sub	tmp1, tmp3, zeroones)
+	CPU_BE(orr	tmp2, tmp3, #REP8_7f)
+	CPU_BE(bic	has_nul, tmp1, tmp2)
+	CPU_BE(rev	has_nul, has_nul)
+	CPU_BE(orr	syndrome, diff, has_nul)
+	CPU_BE(clz	pos, syndrome)
+	/* The MS-non-zero bit of the syndrome marks either the first bit
+	   that is different, or the top bit of the first zero byte.
+	   Shifting left now will bring the critical information into the
+	   top bits.  */
+	CPU_BE(lsl	data1, data1, pos)
+	CPU_BE(lsl	data2, data2, pos)
+	/* But we need to zero-extend (char is unsigned) the value and then
+	   perform a signed 32-bit subtraction.  */
+	CPU_BE(lsr	data1, data1, #56)
+	CPU_BE(sub	result, data1, data2, lsr #56)
+	CPU_BE(ret)
 
 .Lmutual_align:
-	/*
-	* Sources are mutually aligned, but are not currently at an
-	* alignment boundary.  Round down the addresses and then mask off
-	* the bytes that precede the start point.
-	* We also need to adjust the limit calculations, but without
-	* overflowing if the limit is near ULONG_MAX.
-	*/
+	/* Sources are mutually aligned, but are not currently at an
+	   alignment boundary.  Round down the addresses and then mask off
+	   the bytes that precede the start point.
+	   We also need to adjust the limit calculations, but without
+	   overflowing if the limit is near ULONG_MAX.  */
 	bic	src1, src1, #7
 	bic	src2, src2, #7
 	ldr	data1, [src1], #8
-	neg	tmp3, tmp1, lsl #3  /* 64 - bits(bytes beyond align). */
+	neg	tmp3, count, lsl #3	/* 64 - bits(bytes beyond align). */
 	ldr	data2, [src2], #8
 	mov	tmp2, #~0
-	sub	limit_wd, limit, #1 /* limit != 0, so no underflow.  */
+	sub	limit_wd, limit, #1	/* limit != 0, so no underflow.  */
 	/* Big-endian.  Early bytes are at MSB.  */
-CPU_BE( lsl	tmp2, tmp2, tmp3 )	/* Shift (tmp1 & 63).  */
+	CPU_BE(lsl	tmp2, tmp2, tmp3)	/* Shift (count & 63).  */
 	/* Little-endian.  Early bytes are at LSB.  */
-CPU_LE( lsr	tmp2, tmp2, tmp3 )	/* Shift (tmp1 & 63).  */
-
+	CPU_LE(lsr	tmp2, tmp2, tmp3)	/* Shift (count & 63).  */
 	and	tmp3, limit_wd, #7
 	lsr	limit_wd, limit_wd, #3
-	/* Adjust the limit. Only low 3 bits used, so overflow irrelevant.*/
-	add	limit, limit, tmp1
-	add	tmp3, tmp3, tmp1
+	/* Adjust the limit. Only low 3 bits used, so overflow irrelevant.  */
+	add	limit, limit, count
+	add	tmp3, tmp3, count
 	orr	data1, data1, tmp2
 	orr	data2, data2, tmp2
 	add	limit_wd, limit_wd, tmp3, lsr #3
 	b	.Lstart_realigned
 
-/*when src1 offset is not equal to src2 offset...*/
+	.p2align 6
+	/* Don't bother with dwords for up to 16 bytes.  */
 .Lmisaligned8:
-	cmp	limit, #8
-	b.lo	.Ltiny8proc /*limit < 8... */
-	/*
-	* Get the align offset length to compare per byte first.
-	* After this process, one string's address will be aligned.*/
-	and	tmp1, src1, #7
-	neg	tmp1, tmp1
-	add	tmp1, tmp1, #8
-	and	tmp2, src2, #7
-	neg	tmp2, tmp2
-	add	tmp2, tmp2, #8
-	subs	tmp3, tmp1, tmp2
-	csel	pos, tmp1, tmp2, hi /*Choose the maximum. */
-	/*
-	* Here, limit is not less than 8, so directly run .Ltinycmp
-	* without checking the limit.*/
-	sub	limit, limit, pos
-.Ltinycmp:
-	ldrb	data1w, [src1], #1
-	ldrb	data2w, [src2], #1
-	subs	pos, pos, #1
-	ccmp	data1w, #1, #0, ne  /* NZCV = 0b0000.  */
-	ccmp	data1w, data2w, #0, cs  /* NZCV = 0b0000.  */
-	b.eq	.Ltinycmp
-	cbnz	pos, 1f /*find the null or unequal...*/
-	cmp	data1w, #1
-	ccmp	data1w, data2w, #0, cs
-	b.eq	.Lstart_align /*the last bytes are equal....*/
-1:
-	sub	result, data1, data2
-	ret
+	cmp	limit, #16
+	b.hs	.Ltry_misaligned_words
 
-.Lstart_align:
-	lsr	limit_wd, limit, #3
-	cbz	limit_wd, .Lremain8
-	/*process more leading bytes to make str1 aligned...*/
-	ands	xzr, src1, #7
-	b.eq	.Lrecal_offset
-	add	src1, src1, tmp3	/*tmp3 is positive in this branch.*/
-	add	src2, src2, tmp3
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-
-	sub	limit, limit, tmp3
-	lsr	limit_wd, limit, #3
-	subs	limit_wd, limit_wd, #1
-
-	sub	tmp1, data1, zeroones
-	orr	tmp2, data1, #REP8_7f
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	csinv	endloop, diff, xzr, ne/*if limit_wd is 0,will finish the cmp*/
-	bics	has_nul, tmp1, tmp2
-	ccmp	endloop, #0, #0, eq /*has_null is ZERO: no null byte*/
-	b.ne	.Lunequal_proc
-	/*How far is the current str2 from the alignment boundary...*/
-	and	tmp3, tmp3, #7
-.Lrecal_offset:
-	neg	pos, tmp3
-.Lloopcmp_proc:
-	/*
-	* Divide the eight bytes into two parts. First,backwards the src2
-	* to an alignment boundary,load eight bytes from the SRC2 alignment
-	* boundary,then compare with the relative bytes from SRC1.
-	* If all 8 bytes are equal,then start the second part's comparison.
-	* Otherwise finish the comparison.
-	* This special handle can garantee all the accesses are in the
-	* thread/task space in avoid to overrange access.
-	*/
-	ldr	data1, [src1,pos]
-	ldr	data2, [src2,pos]
-	sub	tmp1, data1, zeroones
-	orr	tmp2, data1, #REP8_7f
-	bics	has_nul, tmp1, tmp2 /* Non-zero if NUL terminator.  */
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	csinv	endloop, diff, xzr, eq
-	cbnz	endloop, .Lunequal_proc
-
-	/*The second part process*/
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-	subs	limit_wd, limit_wd, #1
-	sub	tmp1, data1, zeroones
-	orr	tmp2, data1, #REP8_7f
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	csinv	endloop, diff, xzr, ne/*if limit_wd is 0,will finish the cmp*/
-	bics	has_nul, tmp1, tmp2
-	ccmp	endloop, #0, #0, eq /*has_null is ZERO: no null byte*/
-	b.eq	.Lloopcmp_proc
-
-.Lunequal_proc:
-	orr	syndrome, diff, has_nul
-	cbz	syndrome, .Lremain8
-.Lcal_cmpresult:
-	/*
-	* reversed the byte-order as big-endian,then CLZ can find the most
-	* significant zero bits.
-	*/
-CPU_LE( rev	syndrome, syndrome )
-CPU_LE( rev	data1, data1 )
-CPU_LE( rev	data2, data2 )
-	/*
-	* For big-endian we cannot use the trick with the syndrome value
-	* as carry-propagation can corrupt the upper bits if the trailing
-	* bytes in the string contain 0x01.
-	* However, if there is no NUL byte in the dword, we can generate
-	* the result directly.  We can't just subtract the bytes as the
-	* MSB might be significant.
-	*/
-CPU_BE( cbnz	has_nul, 1f )
-CPU_BE( cmp	data1, data2 )
-CPU_BE( cset	result, ne )
-CPU_BE( cneg	result, result, lo )
-CPU_BE( ret )
-CPU_BE( 1: )
-	/* Re-compute the NUL-byte detection, using a byte-reversed value.*/
-CPU_BE( rev	tmp3, data1 )
-CPU_BE( sub	tmp1, tmp3, zeroones )
-CPU_BE( orr	tmp2, tmp3, #REP8_7f )
-CPU_BE( bic	has_nul, tmp1, tmp2 )
-CPU_BE( rev	has_nul, has_nul )
-CPU_BE( orr	syndrome, diff, has_nul )
-	/*
-	* The MS-non-zero bit of the syndrome marks either the first bit
-	* that is different, or the top bit of the first zero byte.
-	* Shifting left now will bring the critical information into the
-	* top bits.
-	*/
-	clz	pos, syndrome
-	lsl	data1, data1, pos
-	lsl	data2, data2, pos
-	/*
-	* But we need to zero-extend (char is unsigned) the value and then
-	* perform a signed 32-bit subtraction.
-	*/
-	lsr	data1, data1, #56
-	sub	result, data1, data2, lsr #56
-	ret
-
-.Lremain8:
-	/* Limit % 8 == 0 => all bytes significant.  */
-	ands	limit, limit, #7
-	b.eq	.Lret0
-.Ltiny8proc:
+.Lbyte_loop:
+	/* Perhaps we can do better than this.  */
 	ldrb	data1w, [src1], #1
 	ldrb	data2w, [src2], #1
 	subs	limit, limit, #1
-
-	ccmp	data1w, #1, #0, ne  /* NZCV = 0b0000.  */
-	ccmp	data1w, data2w, #0, cs  /* NZCV = 0b0000.  */
-	b.eq	.Ltiny8proc
+	ccmp	data1w, #1, #0, hi	/* NZCV = 0b0000.  */
+	ccmp	data1w, data2w, #0, cs	/* NZCV = 0b0000.  */
+	b.eq	.Lbyte_loop
+.Ldone:
 	sub	result, data1, data2
 	ret
+	/* Align the SRC1 to a dword by doing a bytewise compare and then do
+	   the dword loop.  */
+.Ltry_misaligned_words:
+	lsr	limit_wd, limit, #3
+	cbz	count, .Ldo_misaligned
+
+	neg	count, count
+	and	count, count, #7
+	sub	limit, limit, count
+	lsr	limit_wd, limit, #3
+
+.Lpage_end_loop:
+	ldrb	data1w, [src1], #1
+	ldrb	data2w, [src2], #1
+	cmp	data1w, #1
+	ccmp	data1w, data2w, #0, cs	/* NZCV = 0b0000.  */
+	b.ne	.Ldone
+	subs	count, count, #1
+	b.hi	.Lpage_end_loop
+
+.Ldo_misaligned:
+	/* Prepare ourselves for the next page crossing.  Unlike the aligned
+	   loop, we fetch 1 less dword because we risk crossing bounds on
+	   SRC2.  */
+	mov	count, #8
+	subs	limit_wd, limit_wd, #1
+	b.lo	.Ldone_loop
+.Lloop_misaligned:
+	and	tmp2, src2, #0xff8
+	eor	tmp2, tmp2, #0xff8
+	cbz	tmp2, .Lpage_end_loop
+
+	ldr	data1, [src1], #8
+	ldr	data2, [src2], #8
+	sub	tmp1, data1, zeroones
+	orr	tmp2, data1, #REP8_7f
+	eor	diff, data1, data2	/* Non-zero if differences found.  */
+	bics	has_nul, tmp1, tmp2	/* Non-zero if NUL terminator.  */
+	ccmp	diff, #0, #0, eq
+	b.ne	.Lnot_limit
+	subs	limit_wd, limit_wd, #1
+	b.pl	.Lloop_misaligned
+
+.Ldone_loop:
+	/* We found a difference or a NULL before the limit was reached.  */
+	and	limit, limit, #7
+	cbz	limit, .Lnot_limit
+	/* Read the last word.  */
+	sub	src1, src1, 8
+	sub	src2, src2, 8
+	ldr	data1, [src1, limit]
+	ldr	data2, [src2, limit]
+	sub	tmp1, data1, zeroones
+	orr	tmp2, data1, #REP8_7f
+	eor	diff, data1, data2	/* Non-zero if differences found.  */
+	bics	has_nul, tmp1, tmp2	/* Non-zero if NUL terminator.  */
+	ccmp	diff, #0, #0, eq
+	b.ne	.Lnot_limit
 
 .Lret0:
 	mov	result, #0
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
