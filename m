Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53DD7A84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2K/j9NxC645B9qRyo04PpNBMl/SKSVSnqtpnZt6ElRc=; b=PUvba3SXyv8F15
	SMkqviBdcDuSw85RauL1MOmf1KGnrVL45k9lhjmJDcQ+c44i9TzTUjUH8qms0/8p1MHniezMIuaYQ
	u+m5yRXR7DEVKtuhq8dEIrBV7c0i9XUHEiU9dRQWtMjNiS3AG3O1q4COoaTpTaTjXpd/MacYavJmV
	2uhvowJfc7Gf1aNELrhS1ywXsu4lPmWTmd4K6++6Z5EbMhCI5f09571Htn59D0evKmWifbPtOidm+
	uY4o6RNFGo+kqZXDmogii37E3LtnE0s18ky5rCeBcesv+fLS/qOzjDG2CP64X3E/iCOa3DTA4241F
	ojF9XWHI6RLbmWFgA4mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKP7S-0004Gg-JS; Tue, 15 Oct 2019 15:52:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKP5Z-0002m5-8v
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:50:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56A4415BE;
 Tue, 15 Oct 2019 08:50:20 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A54C93F68E;
 Tue, 15 Oct 2019 08:50:19 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH 6/8] arm64: Import latest version of Cortex Strings' strlen
Date: Tue, 15 Oct 2019 16:50:01 +0100
Message-Id: <c89c35f2898351ad4c744263eb300aa134c5d640.1571073960.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1571073960.git.robin.murphy@arm.com>
References: <cover.1571073960.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_085021_493021_53284C00 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sam.tebbs@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sam Tebbs <sam.tebbs@arm.com>

Import latest version of Cortex Strings' strlen function.

The upstream source is src/aarch64/strlen.S as of commit eb80ac77a6cd
in https://git.linaro.org/toolchain/cortex-strings.git.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: update attribution, expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/lib/strlen.S | 249 +++++++++++++++++++++++++++-------------
 1 file changed, 169 insertions(+), 80 deletions(-)

diff --git a/arch/arm64/lib/strlen.S b/arch/arm64/lib/strlen.S
index 87b0cb066915..e404edd6068c 100644
--- a/arch/arm64/lib/strlen.S
+++ b/arch/arm64/lib/strlen.S
@@ -1,13 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2013 ARM Ltd.
- * Copyright (C) 2013 Linaro.
+ * Copyright (c) 2013-2015 Linaro Limited. All rights reserved.
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
@@ -23,93 +21,184 @@
  */
 
 /* Arguments and results.  */
-srcin		.req	x0
-len		.req	x0
+#define srcin		x0
+#define len		x0
 
 /* Locals and temporaries.  */
-src		.req	x1
-data1		.req	x2
-data2		.req	x3
-data2a		.req	x4
-has_nul1	.req	x5
-has_nul2	.req	x6
-tmp1		.req	x7
-tmp2		.req	x8
-tmp3		.req	x9
-tmp4		.req	x10
-zeroones	.req	x11
-pos		.req	x12
+#define src		x1
+#define data1		x2
+#define data2		x3
+#define has_nul1	x4
+#define has_nul2	x5
+#define tmp1		x4
+#define tmp2		x5
+#define tmp3		x6
+#define tmp4		x7
+#define zeroones	x8
+
+#define L(l) .L ## l
+
+	/* NUL detection works on the principle that (X - 1) & (~X) & 0x80
+	   (=> (X - 1) & ~(X | 0x7f)) is non-zero iff a byte is zero, and
+	   can be done in parallel across the entire word. A faster check
+	   (X - 1) & 0x80 is zero for non-NUL ASCII characters, but gives
+	   false hits for characters 129..255.	*/
 
 #define REP8_01 0x0101010101010101
 #define REP8_7f 0x7f7f7f7f7f7f7f7f
 #define REP8_80 0x8080808080808080
 
+#ifdef TEST_PAGE_CROSS
+# define MIN_PAGE_SIZE 15
+#else
+# define MIN_PAGE_SIZE 4096
+#endif
+
+	/* Since strings are short on average, we check the first 16 bytes
+	   of the string for a NUL character.  In order to do an unaligned ldp
+	   safely we have to do a page cross check first.  If there is a NUL
+	   byte we calculate the length from the 2 8-byte words using
+	   conditional select to reduce branch mispredictions (it is unlikely
+	   strlen will be repeatedly called on strings with the same length).
+
+	   If the string is longer than 16 bytes, we align src so don't need
+	   further page cross checks, and process 32 bytes per iteration
+	   using the fast NUL check.  If we encounter non-ASCII characters,
+	   fallback to a second loop using the full NUL check.
+
+	   If the page cross check fails, we read 16 bytes from an aligned
+	   address, remove any characters before the string, and continue
+	   in the main loop using aligned loads.  Since strings crossing a
+	   page in the first 16 bytes are rare (probability of
+	   16/MIN_PAGE_SIZE ~= 0.4%), this case does not need to be optimized.
+
+	   AArch64 systems have a minimum page size of 4k.  We don't bother
+	   checking for larger page sizes - the cost of setting up the correct
+	   page size is just not worth the extra gain from a small reduction in
+	   the cases taking the slow path.  Note that we only care about
+	   whether the first fetch, which may be misaligned, crosses a page
+	   boundary.  */
+
 WEAK(strlen)
-	mov	zeroones, #REP8_01
-	bic	src, srcin, #15
-	ands	tmp1, srcin, #15
-	b.ne	.Lmisaligned
-	/*
-	* NUL detection works on the principle that (X - 1) & (~X) & 0x80
-	* (=> (X - 1) & ~(X | 0x7f)) is non-zero iff a byte is zero, and
-	* can be done in parallel across the entire word.
-	*/
-	/*
-	* The inner loop deals with two Dwords at a time. This has a
-	* slightly higher start-up cost, but we should win quite quickly,
-	* especially on cores with a high number of issue slots per
-	* cycle, as we get much better parallelism out of the operations.
-	*/
-.Lloop:
-	ldp	data1, data2, [src], #16
-.Lrealigned:
+	and	tmp1, srcin, MIN_PAGE_SIZE - 1
+	mov	zeroones, REP8_01
+	cmp	tmp1, MIN_PAGE_SIZE - 16
+	b.gt	L(page_cross)
+	ldp	data1, data2, [srcin]
+	/* For big-endian, carry propagation (if the final byte in the
+	   string is 0x01) means we cannot use has_nul1/2 directly.
+	   Since we expect strings to be small and early-exit,
+	   byte-swap the data now so has_null1/2 will be correct.  */
+CPU_BE(rev	data1, data1)
+CPU_BE(rev	data2, data2)
 	sub	tmp1, data1, zeroones
-	orr	tmp2, data1, #REP8_7f
+	orr	tmp2, data1, REP8_7f
 	sub	tmp3, data2, zeroones
-	orr	tmp4, data2, #REP8_7f
-	bic	has_nul1, tmp1, tmp2
-	bics	has_nul2, tmp3, tmp4
-	ccmp	has_nul1, #0, #0, eq	/* NZCV = 0000  */
-	b.eq	.Lloop
+	orr	tmp4, data2, REP8_7f
+	bics	has_nul1, tmp1, tmp2
+	bic	has_nul2, tmp3, tmp4
+	ccmp	has_nul2, 0, 0, eq
+	beq	L(main_loop_entry)
 
-	sub	len, src, srcin
-	cbz	has_nul1, .Lnul_in_data2
-CPU_BE(	mov	data2, data1 )	/*prepare data to re-calculate the syndrome*/
-	sub	len, len, #8
-	mov	has_nul2, has_nul1
-.Lnul_in_data2:
-	/*
-	* For big-endian, carry propagation (if the final byte in the
-	* string is 0x01) means we cannot use has_nul directly.  The
-	* easiest way to get the correct byte is to byte-swap the data
-	* and calculate the syndrome a second time.
-	*/
-CPU_BE( rev	data2, data2 )
-CPU_BE( sub	tmp1, data2, zeroones )
-CPU_BE( orr	tmp2, data2, #REP8_7f )
-CPU_BE( bic	has_nul2, tmp1, tmp2 )
-
-	sub	len, len, #8
-	rev	has_nul2, has_nul2
-	clz	pos, has_nul2
-	add	len, len, pos, lsr #3		/* Bits to bytes.  */
+	/* Enter with C = has_nul1 == 0.  */
+	csel	has_nul1, has_nul1, has_nul2, cc
+	mov	len, 8
+	rev	has_nul1, has_nul1
+	clz	tmp1, has_nul1
+	csel	len, xzr, len, cc
+	add	len, len, tmp1, lsr 3
 	ret
 
-.Lmisaligned:
-	cmp	tmp1, #8
-	neg	tmp1, tmp1
-	ldp	data1, data2, [src], #16
-	lsl	tmp1, tmp1, #3		/* Bytes beyond alignment -> bits.  */
-	mov	tmp2, #~0
-	/* Big-endian.  Early bytes are at MSB.  */
-CPU_BE( lsl	tmp2, tmp2, tmp1 )	/* Shift (tmp1 & 63).  */
-	/* Little-endian.  Early bytes are at LSB.  */
-CPU_LE( lsr	tmp2, tmp2, tmp1 )	/* Shift (tmp1 & 63).  */
+	/* The inner loop processes 32 bytes per iteration and uses the fast
+	   NUL check.  If we encounter non-ASCII characters, use a second
+	   loop with the accurate NUL check.  */
+	.p2align 4
+L(main_loop_entry):
+	bic	src, srcin, 15
+	sub	src, src, 16
+L(main_loop):
+	ldp	data1, data2, [src, 32]!
+.Lpage_cross_entry:
+	sub	tmp1, data1, zeroones
+	sub	tmp3, data2, zeroones
+	orr	tmp2, tmp1, tmp3
+	tst	tmp2, zeroones, lsl 7
+	bne	1f
+	ldp	data1, data2, [src, 16]
+	sub	tmp1, data1, zeroones
+	sub	tmp3, data2, zeroones
+	orr	tmp2, tmp1, tmp3
+	tst	tmp2, zeroones, lsl 7
+	beq	L(main_loop)
+	add	src, src, 16
+1:
+	/* The fast check failed, so do the slower, accurate NUL check.	 */
+	orr	tmp2, data1, REP8_7f
+	orr	tmp4, data2, REP8_7f
+	bics	has_nul1, tmp1, tmp2
+	bic	has_nul2, tmp3, tmp4
+	ccmp	has_nul2, 0, 0, eq
+	beq	L(nonascii_loop)
 
-	orr	data1, data1, tmp2
-	orr	data2a, data2, tmp2
-	csinv	data1, data1, xzr, le
-	csel	data2, data2, data2a, le
-	b	.Lrealigned
+	/* Enter with C = has_nul1 == 0.  */
+L(tail):
+	/* For big-endian, carry propagation (if the final byte in the
+	   string is 0x01) means we cannot use has_nul1/2 directly.  The
+	   easiest way to get the correct byte is to byte-swap the data
+	   and calculate the syndrome a second time.  */
+CPU_BE(csel	data1, data1, data2, cc)
+CPU_BE(rev	data1, data1)
+CPU_BE(sub	tmp1, data1, zeroones)
+CPU_BE(orr	tmp2, data1, REP8_7f)
+CPU_BE(bic	has_nul1, tmp1, tmp2)
+CPU_LE(csel	has_nul1, has_nul1, has_nul2, cc)
+	sub	len, src, srcin
+	rev	has_nul1, has_nul1
+	add	tmp2, len, 8
+	clz	tmp1, has_nul1
+	csel	len, len, tmp2, cc
+	add	len, len, tmp1, lsr 3
+	ret
+
+L(nonascii_loop):
+	ldp	data1, data2, [src, 16]!
+	sub	tmp1, data1, zeroones
+	orr	tmp2, data1, REP8_7f
+	sub	tmp3, data2, zeroones
+	orr	tmp4, data2, REP8_7f
+	bics	has_nul1, tmp1, tmp2
+	bic	has_nul2, tmp3, tmp4
+	ccmp	has_nul2, 0, 0, eq
+	bne	L(tail)
+	ldp	data1, data2, [src, 16]!
+	sub	tmp1, data1, zeroones
+	orr	tmp2, data1, REP8_7f
+	sub	tmp3, data2, zeroones
+	orr	tmp4, data2, REP8_7f
+	bics	has_nul1, tmp1, tmp2
+	bic	has_nul2, tmp3, tmp4
+	ccmp	has_nul2, 0, 0, eq
+	beq	L(nonascii_loop)
+	b	L(tail)
+
+	/* Load 16 bytes from [srcin & ~15] and force the bytes that precede
+	   srcin to 0x7f, so we ignore any NUL bytes before the string.
+	   Then continue in the aligned loop.  */
+L(page_cross):
+	bic	src, srcin, 15
+	ldp	data1, data2, [src]
+	lsl	tmp1, srcin, 3
+	mov	tmp4, -1
+	/* Big-endian.	Early bytes are at MSB.	 */
+CPU_BE(lsr	tmp1, tmp4, tmp1)	/* Shift (tmp1 & 63).  */
+	/* Little-endian.  Early bytes are at LSB.  */
+CPU_LE(lsl	tmp1, tmp4, tmp1)	/* Shift (tmp1 & 63).  */
+	orr	tmp1, tmp1, REP8_80
+	orn	data1, data1, tmp1
+	orn	tmp2, data2, tmp1
+	tst	srcin, 8
+	csel	data1, data1, tmp4, eq
+	csel	data2, data2, tmp2, eq
+	b	L(page_cross_entry)
 ENDPIPROC(strlen)
 EXPORT_SYMBOL_NOKASAN(strlen)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
