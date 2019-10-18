Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61023DCDC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvMOoDoTs+MhKTcs6xEKXZjNXpBqd/57CzsJgf88lwI=; b=lFMS4vprAGSOsP
	AwV1VU1mWTwKN5s4vyKTT2otIlfAndJucRmmamRHMJoeICSBNu1wGOx3YIY4VnYfe2E0+Qk3NlMKJ
	u/gCy42G4Qkn1P0g1xsw2L5aTTDv7vqVsMlIq1fjODq85pYDtxhzCuLZqgJ+ImpWaRGY+cNnypWlm
	o/xrIDxwUw8rpVJl/mdhuLA0fdaL9XTMreMjG1wxB+VofybBoRVgcTJYupfaTG2SJZD6CgeLJufk5
	asP7Dg/7tzQKF52qY4O6JFcNP9AfUQ2cc65alTuwhD2DBTURB+iSni8B/GYaAdADD8/9X1DjwOK5D
	NII/3KAaJoQ6r9N+OygA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWp8-0008D8-1T; Fri, 18 Oct 2019 18:18:02 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWo5-0007SW-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:17:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06DEE15BE;
 Fri, 18 Oct 2019 11:16:51 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3A3493F718;
 Fri, 18 Oct 2019 11:16:50 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2 3/8] arm64: Import latest version of Cortex Strings' memcmp
Date: Fri, 18 Oct 2019 19:16:37 +0100
Message-Id: <0c0860cb51272de5b73f213960e6f0ae814b017a.1571421836.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1571421836.git.robin.murphy@arm.com>
References: <cover.1571421836.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111657_742940_B15D8F68 
X-CRM114-Status: GOOD (  22.00  )
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

Import the latest version of Cortex Strings' memcmp function.

The upstream source is src/aarch64/memcmp.S as of commit f77e4c932b4f
in https://git.linaro.org/toolchain/cortex-strings.git.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: update attribution, expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/lib/memcmp.S | 317 ++++++++++++++--------------------------
 1 file changed, 109 insertions(+), 208 deletions(-)

diff --git a/arch/arm64/lib/memcmp.S b/arch/arm64/lib/memcmp.S
index b297bdaaf549..728dcf5a3673 100644
--- a/arch/arm64/lib/memcmp.S
+++ b/arch/arm64/lib/memcmp.S
@@ -1,13 +1,12 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2013 ARM Ltd.
- * Copyright (C) 2013 Linaro.
+ * Copyright (c) 2013, 2018 Linaro Limited. All rights reserved.
+ * Copyright (c) 2017 ARM Ltd. All rights reserved.
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
@@ -25,223 +24,125 @@
 *  x0 - a compare result, maybe less than, equal to, or greater than ZERO
 */
 
+#define L(l) .L ## l
+
 /* Parameters and result.  */
-src1		.req	x0
-src2		.req	x1
-limit		.req	x2
-result		.req	x0
+#define src1		x0
+#define src2		x1
+#define limit		x2
+#define result		w0
 
 /* Internal variables.  */
-data1		.req	x3
-data1w		.req	w3
-data2		.req	x4
-data2w		.req	w4
-has_nul		.req	x5
-diff		.req	x6
-endloop		.req	x7
-tmp1		.req	x8
-tmp2		.req	x9
-tmp3		.req	x10
-pos		.req	x11
-limit_wd	.req	x12
-mask		.req	x13
+#define data1		x3
+#define data1w		w3
+#define data1h		x4
+#define data2		x5
+#define data2w		w5
+#define data2h		x6
+#define tmp1		x7
+#define tmp2		x8
 
 WEAK(memcmp)
-	cbz	limit, .Lret0
-	eor	tmp1, src1, src2
-	tst	tmp1, #7
-	b.ne	.Lmisaligned8
-	ands	tmp1, src1, #7
-	b.ne	.Lmutual_align
-	sub	limit_wd, limit, #1 /* limit != 0, so no underflow.  */
-	lsr	limit_wd, limit_wd, #3 /* Convert to Dwords.  */
-	/*
-	* The input source addresses are at alignment boundary.
-	* Directly compare eight bytes each time.
-	*/
-.Lloop_aligned:
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-.Lstart_realigned:
-	subs	limit_wd, limit_wd, #1
-	eor	diff, data1, data2	/* Non-zero if differences found.  */
-	csinv	endloop, diff, xzr, cs	/* Last Dword or differences.  */
-	cbz	endloop, .Lloop_aligned
+	subs	limit, limit, 8
+	b.lo	L(less8)
 
-	/* Not reached the limit, must have found a diff.  */
-	tbz	limit_wd, #63, .Lnot_limit
+	ldr	data1, [src1], 8
+	ldr	data2, [src2], 8
+	cmp	data1, data2
+	b.ne	L(return)
 
-	/* Limit % 8 == 0 => the diff is in the last 8 bytes. */
-	ands	limit, limit, #7
-	b.eq	.Lnot_limit
-	/*
-	* The remained bytes less than 8. It is needed to extract valid data
-	* from last eight bytes of the intended memory range.
-	*/
-	lsl	limit, limit, #3	/* bytes-> bits.  */
-	mov	mask, #~0
-CPU_BE( lsr	mask, mask, limit )
-CPU_LE( lsl	mask, mask, limit )
-	bic	data1, data1, mask
-	bic	data2, data2, mask
+	subs	limit, limit, 8
+	b.gt	L(more16)
 
-	orr	diff, diff, mask
-	b	.Lnot_limit
+	ldr	data1, [src1, limit]
+	ldr	data2, [src2, limit]
+	b	L(return)
 
-.Lmutual_align:
-	/*
-	* Sources are mutually aligned, but are not currently at an
-	* alignment boundary. Round down the addresses and then mask off
-	* the bytes that precede the start point.
-	*/
-	bic	src1, src1, #7
-	bic	src2, src2, #7
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-	/*
-	* We can not add limit with alignment offset(tmp1) here. Since the
-	* addition probably make the limit overflown.
-	*/
-	sub	limit_wd, limit, #1/*limit != 0, so no underflow.*/
-	and	tmp3, limit_wd, #7
-	lsr	limit_wd, limit_wd, #3
-	add	tmp3, tmp3, tmp1
-	add	limit_wd, limit_wd, tmp3, lsr #3
-	add	limit, limit, tmp1/* Adjust the limit for the extra.  */
+L(more16):
+	ldr	data1, [src1], 8
+	ldr	data2, [src2], 8
+	cmp	data1, data2
+	bne	L(return)
 
-	lsl	tmp1, tmp1, #3/* Bytes beyond alignment -> bits.*/
-	neg	tmp1, tmp1/* Bits to alignment -64.  */
-	mov	tmp2, #~0
-	/*mask off the non-intended bytes before the start address.*/
-CPU_BE( lsl	tmp2, tmp2, tmp1 )/*Big-endian.Early bytes are at MSB*/
-	/* Little-endian.  Early bytes are at LSB.  */
-CPU_LE( lsr	tmp2, tmp2, tmp1 )
+	/* Jump directly to comparing the last 16 bytes for 32 byte (or less)
+	   strings.  */
+	subs	limit, limit, 16
+	b.ls	L(last_bytes)
 
-	orr	data1, data1, tmp2
-	orr	data2, data2, tmp2
-	b	.Lstart_realigned
+	/* We overlap loads between 0-32 bytes at either side of SRC1 when we
+	   try to align, so limit it only to strings larger than 128 bytes.  */
+	cmp	limit, 96
+	b.ls	L(loop16)
 
-	/*src1 and src2 have different alignment offset.*/
-.Lmisaligned8:
-	cmp	limit, #8
-	b.lo	.Ltiny8proc /*limit < 8: compare byte by byte*/
+	/* Align src1 and adjust src2 with bytes not yet done.  */
+	and	tmp1, src1, 15
+	add	limit, limit, tmp1
+	sub	src1, src1, tmp1
+	sub	src2, src2, tmp1
 
-	and	tmp1, src1, #7
-	neg	tmp1, tmp1
-	add	tmp1, tmp1, #8/*valid length in the first 8 bytes of src1*/
-	and	tmp2, src2, #7
-	neg	tmp2, tmp2
-	add	tmp2, tmp2, #8/*valid length in the first 8 bytes of src2*/
-	subs	tmp3, tmp1, tmp2
-	csel	pos, tmp1, tmp2, hi /*Choose the maximum.*/
+	/* Loop performing 16 bytes per iteration using aligned src1.
+	   Limit is pre-decremented by 16 and must be larger than zero.
+	   Exit if <= 16 bytes left to do or if the data is not equal.  */
+	.p2align 4
+L(loop16):
+	ldp	data1, data1h, [src1], 16
+	ldp	data2, data2h, [src2], 16
+	subs	limit, limit, 16
+	ccmp	data1, data2, 0, hi
+	ccmp	data1h, data2h, 0, eq
+	b.eq	L(loop16)
 
-	sub	limit, limit, pos
-	/*compare the proceeding bytes in the first 8 byte segment.*/
-.Ltinycmp:
-	ldrb	data1w, [src1], #1
-	ldrb	data2w, [src2], #1
-	subs	pos, pos, #1
-	ccmp	data1w, data2w, #0, ne  /* NZCV = 0b0000.  */
-	b.eq	.Ltinycmp
-	cbnz	pos, 1f /*diff occurred before the last byte.*/
+	cmp	data1, data2
+	bne	L(return)
+	mov	data1, data1h
+	mov	data2, data2h
+	cmp	data1, data2
+	bne	L(return)
+
+	/* Compare last 1-16 bytes using unaligned access.  */
+L(last_bytes):
+	add	src1, src1, limit
+	add	src2, src2, limit
+	ldp	data1, data1h, [src1]
+	ldp	data2, data2h, [src2]
+	cmp	data1, data2
+	bne	L(return)
+	mov	data1, data1h
+	mov	data2, data2h
+	cmp	data1, data2
+
+	/* Compare data bytes and set return value to 0, -1 or 1.  */
+L(return):
+#ifndef __AARCH64EB__
+	rev	data1, data1
+	rev	data2, data2
+#endif
+	cmp	data1, data2
+L(ret_eq):
+	cset	result, ne
+	cneg	result, result, lo
+	ret
+
+	.p2align 4
+	/* Compare up to 8 bytes.  Limit is [-8..-1].  */
+L(less8):
+	adds	limit, limit, 4
+	b.lo	L(less4)
+	ldr	data1w, [src1], 4
+	ldr	data2w, [src2], 4
 	cmp	data1w, data2w
-	b.eq	.Lstart_align
-1:
-	sub	result, data1, data2
-	ret
-
-.Lstart_align:
-	lsr	limit_wd, limit, #3
-	cbz	limit_wd, .Lremain8
-
-	ands	xzr, src1, #7
-	b.eq	.Lrecal_offset
-	/*process more leading bytes to make src1 aligned...*/
-	add	src1, src1, tmp3 /*backwards src1 to alignment boundary*/
-	add	src2, src2, tmp3
-	sub	limit, limit, tmp3
-	lsr	limit_wd, limit, #3
-	cbz	limit_wd, .Lremain8
-	/*load 8 bytes from aligned SRC1..*/
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-
-	subs	limit_wd, limit_wd, #1
-	eor	diff, data1, data2  /*Non-zero if differences found.*/
-	csinv	endloop, diff, xzr, ne
-	cbnz	endloop, .Lunequal_proc
-	/*How far is the current SRC2 from the alignment boundary...*/
-	and	tmp3, tmp3, #7
-
-.Lrecal_offset:/*src1 is aligned now..*/
-	neg	pos, tmp3
-.Lloopcmp_proc:
-	/*
-	* Divide the eight bytes into two parts. First,backwards the src2
-	* to an alignment boundary,load eight bytes and compare from
-	* the SRC2 alignment boundary. If all 8 bytes are equal,then start
-	* the second part's comparison. Otherwise finish the comparison.
-	* This special handle can garantee all the accesses are in the
-	* thread/task space in avoid to overrange access.
-	*/
-	ldr	data1, [src1,pos]
-	ldr	data2, [src2,pos]
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	cbnz	diff, .Lnot_limit
-
-	/*The second part process*/
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	subs	limit_wd, limit_wd, #1
-	csinv	endloop, diff, xzr, ne/*if limit_wd is 0,will finish the cmp*/
-	cbz	endloop, .Lloopcmp_proc
-.Lunequal_proc:
-	cbz	diff, .Lremain8
-
-/* There is difference occurred in the latest comparison. */
-.Lnot_limit:
-/*
-* For little endian,reverse the low significant equal bits into MSB,then
-* following CLZ can find how many equal bits exist.
-*/
-CPU_LE( rev	diff, diff )
-CPU_LE( rev	data1, data1 )
-CPU_LE( rev	data2, data2 )
-
-	/*
-	* The MS-non-zero bit of DIFF marks either the first bit
-	* that is different, or the end of the significant data.
-	* Shifting left now will bring the critical information into the
-	* top bits.
-	*/
-	clz	pos, diff
-	lsl	data1, data1, pos
-	lsl	data2, data2, pos
-	/*
-	* We need to zero-extend (char is unsigned) the value and then
-	* perform a signed subtraction.
-	*/
-	lsr	data1, data1, #56
-	sub	result, data1, data2, lsr #56
-	ret
-
-.Lremain8:
-	/* Limit % 8 == 0 =>. all data are equal.*/
-	ands	limit, limit, #7
-	b.eq	.Lret0
-
-.Ltiny8proc:
-	ldrb	data1w, [src1], #1
-	ldrb	data2w, [src2], #1
-	subs	limit, limit, #1
-
-	ccmp	data1w, data2w, #0, ne  /* NZCV = 0b0000. */
-	b.eq	.Ltiny8proc
-	sub	result, data1, data2
-	ret
-.Lret0:
-	mov	result, #0
+	b.ne	L(return)
+	sub	limit, limit, 4
+L(less4):
+	adds	limit, limit, 4
+	beq	L(ret_eq)
+L(byte_loop):
+	ldrb	data1w, [src1], 1
+	ldrb	data2w, [src2], 1
+	subs	limit, limit, 1
+	ccmp	data1w, data2w, 0, ne	/* NZCV = 0b0000.  */
+	b.eq	L(byte_loop)
+	sub	result, data1w, data2w
 	ret
 ENDPIPROC(memcmp)
 EXPORT_SYMBOL_NOKASAN(memcmp)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
