Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C421D3307
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tzPYYyU9HNAKrd1uybpoEtmp4bHmxxmiq718HZWEgf8=; b=P1LZmFi4jiLgaQ5sI4pHKjR48D
	jdkSAuzbV5jfkYWWoiyBDrBkqW2QIAK3UHkvCtUuINP4YirU7k21p1dKNSmXrv3FZYaKl0T5YFuwW
	2CezI1yp03vkoBjGCEmtGrjGR90dOs1F26+9w26J94p7Fom4hGrgFNX3uB4qHqh1ZY/+oWSTFd7aP
	WyH4guqn2bNYtCvKuYEYH0+BavJsst1ICO3Q63jAic4Yi5s8cWnb7uMOvl1G2zKaI66wVyhTkT/NL
	aM7+lMFgBiJbW63TLSLFASeRasjNRefeDb6Neutg4d8tNviZ20/1Iu+Elb0zSRIDQhAjCJ6wxfQrc
	5SSjGHRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEwd-0000g5-1g; Thu, 14 May 2020 14:34:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEur-0007Qb-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:32:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 888B91045;
 Thu, 14 May 2020 07:32:52 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 891C93F71E;
 Thu, 14 May 2020 07:32:51 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 05/13] arm64: Import latest version of Cortex Strings'
 strcmp
Date: Thu, 14 May 2020 14:32:19 +0000
Message-Id: <20200514143227.605-6-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073253_323482_AAAF628E 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sam Tebbs <sam.tebbs@arm.com>

Import the latest version of Cortex Strings' strcmp function.

The upstream source is src/aarch64/strcmp.S as of commit 90b61261ceb4
in https://git.linaro.org/toolchain/cortex-strings.git.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: update attribution, expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/lib/strcmp.S | 272 +++++++++++++++++-----------------------
 1 file changed, 113 insertions(+), 159 deletions(-)

diff --git a/arch/arm64/lib/strcmp.S b/arch/arm64/lib/strcmp.S
index 4e79566726c8..e00ff46c4ffc 100644
--- a/arch/arm64/lib/strcmp.S
+++ b/arch/arm64/lib/strcmp.S
@@ -1,13 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2013 ARM Ltd.
- * Copyright (C) 2013 Linaro.
+ * Copyright (c) 2012,2018 Linaro Limited. All rights reserved.
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
@@ -25,60 +23,106 @@
  * or be greater than s2.
  */
 
+#define L(label) .L ## label
+
 #define REP8_01 0x0101010101010101
 #define REP8_7f 0x7f7f7f7f7f7f7f7f
 #define REP8_80 0x8080808080808080
 
 /* Parameters and result.  */
-src1		.req	x0
-src2		.req	x1
-result		.req	x0
+#define src1		x0
+#define src2		x1
+#define result		x0
 
 /* Internal variables.  */
-data1		.req	x2
-data1w		.req	w2
-data2		.req	x3
-data2w		.req	w3
-has_nul		.req	x4
-diff		.req	x5
-syndrome	.req	x6
-tmp1		.req	x7
-tmp2		.req	x8
-tmp3		.req	x9
-zeroones	.req	x10
-pos		.req	x11
-
+#define data1		x2
+#define data1w		w2
+#define data2		x3
+#define data2w		w3
+#define has_nul		x4
+#define diff		x5
+#define syndrome	x6
+#define tmp1		x7
+#define tmp2		x8
+#define tmp3		x9
+#define zeroones	x10
+#define pos		x11
+
+	/* Start of performance-critical section  -- one 64B cache line.  */
 SYM_FUNC_START_WEAK_PI(strcmp)
 	eor	tmp1, src1, src2
 	mov	zeroones, #REP8_01
 	tst	tmp1, #7
-	b.ne	.Lmisaligned8
+	b.ne	L(misaligned8)
 	ands	tmp1, src1, #7
-	b.ne	.Lmutual_align
-
-	/*
-	* NUL detection works on the principle that (X - 1) & (~X) & 0x80
-	* (=> (X - 1) & ~(X | 0x7f)) is non-zero iff a byte is zero, and
-	* can be done in parallel across the entire word.
-	*/
-.Lloop_aligned:
+	b.ne	L(mutual_align)
+	/* NUL detection works on the principle that (X - 1) & (~X) & 0x80
+	   (=> (X - 1) & ~(X | 0x7f)) is non-zero iff a byte is zero, and
+	   can be done in parallel across the entire word.  */
+L(loop_aligned):
 	ldr	data1, [src1], #8
 	ldr	data2, [src2], #8
-.Lstart_realigned:
+L(start_realigned):
 	sub	tmp1, data1, zeroones
 	orr	tmp2, data1, #REP8_7f
 	eor	diff, data1, data2	/* Non-zero if differences found.  */
 	bic	has_nul, tmp1, tmp2	/* Non-zero if NUL terminator.  */
 	orr	syndrome, diff, has_nul
-	cbz	syndrome, .Lloop_aligned
-	b	.Lcal_cmpresult
-
-.Lmutual_align:
-	/*
-	* Sources are mutually aligned, but are not currently at an
-	* alignment boundary.  Round down the addresses and then mask off
-	* the bytes that preceed the start point.
-	*/
+	cbz	syndrome, L(loop_aligned)
+	/* End of performance-critical section  -- one 64B cache line.  */
+
+L(end):
+CPU_LE(rev	syndrome, syndrome)
+CPU_LE(rev	data1, data1)
+	/* The MS-non-zero bit of the syndrome marks either the first bit
+	   that is different, or the top bit of the first zero byte.
+	   Shifting left now will bring the critical information into the
+	   top bits.  */
+CPU_LE(clz	pos, syndrome)
+CPU_LE(rev	data2, data2)
+CPU_LE(lsl	data1, data1, pos)
+CPU_LE(lsl	data2, data2, pos)
+	/* But we need to zero-extend (char is unsigned) the value and then
+	   perform a signed 32-bit subtraction.  */
+CPU_LE(lsr	data1, data1, #56)
+CPU_LE(sub	result, data1, data2, lsr #56)
+CPU_LE(ret)
+	/* For big-endian we cannot use the trick with the syndrome value
+	   as carry-propagation can corrupt the upper bits if the trailing
+	   bytes in the string contain 0x01.  */
+	/* However, if there is no NUL byte in the dword, we can generate
+	   the result directly.  We can't just subtract the bytes as the
+	   MSB might be significant.  */
+CPU_BE(cbnz	has_nul, 1f)
+CPU_BE(cmp	data1, data2)
+CPU_BE(cset	result, ne)
+CPU_BE(cneg	result, result, lo)
+CPU_BE(ret)
+1:
+	/* Re-compute the NUL-byte detection, using a byte-reversed value.  */
+CPU_BE(rev	tmp3, data1)
+CPU_BE(sub	tmp1, tmp3, zeroones)
+CPU_BE(orr	tmp2, tmp3, #REP8_7f)
+CPU_BE(bic	has_nul, tmp1, tmp2)
+CPU_BE(rev	has_nul, has_nul)
+CPU_BE(orr	syndrome, diff, has_nul)
+CPU_BE(clz	pos, syndrome)
+	/* The MS-non-zero bit of the syndrome marks either the first bit
+	   that is different, or the top bit of the first zero byte.
+	   Shifting left now will bring the critical information into the
+	   top bits.  */
+CPU_BE(lsl	data1, data1, pos)
+CPU_BE(lsl	data2, data2, pos)
+	/* But we need to zero-extend (char is unsigned) the value and then
+	   perform a signed 32-bit subtraction.  */
+CPU_BE(lsr	data1, data1, #56)
+CPU_BE(sub	result, data1, data2, lsr #56)
+CPU_BE(ret)
+
+L(mutual_align):
+	/* Sources are mutually aligned, but are not currently at an
+	   alignment boundary.  Round down the addresses and then mask off
+	   the bytes that preceed the start point.  */
 	bic	src1, src1, #7
 	bic	src2, src2, #7
 	lsl	tmp1, tmp1, #3		/* Bytes beyond alignment -> bits.  */
@@ -87,137 +131,47 @@ SYM_FUNC_START_WEAK_PI(strcmp)
 	ldr	data2, [src2], #8
 	mov	tmp2, #~0
 	/* Big-endian.  Early bytes are at MSB.  */
-CPU_BE( lsl	tmp2, tmp2, tmp1 )	/* Shift (tmp1 & 63).  */
+CPU_BE(lsl	tmp2, tmp2, tmp1)    /* Shift (tmp1 & 63).  */
 	/* Little-endian.  Early bytes are at LSB.  */
-CPU_LE( lsr	tmp2, tmp2, tmp1 )	/* Shift (tmp1 & 63).  */
-
+CPU_LE(lsr	tmp2, tmp2, tmp1)	/* Shift (tmp1 & 63).  */
 	orr	data1, data1, tmp2
 	orr	data2, data2, tmp2
-	b	.Lstart_realigned
-
-.Lmisaligned8:
-	/*
-	* Get the align offset length to compare per byte first.
-	* After this process, one string's address will be aligned.
-	*/
-	and	tmp1, src1, #7
-	neg	tmp1, tmp1
-	add	tmp1, tmp1, #8
-	and	tmp2, src2, #7
-	neg	tmp2, tmp2
-	add	tmp2, tmp2, #8
-	subs	tmp3, tmp1, tmp2
-	csel	pos, tmp1, tmp2, hi /*Choose the maximum. */
-.Ltinycmp:
+	b	L(start_realigned)
+
+L(misaligned8):
+	/* Align SRC1 to 8 bytes and then compare 8 bytes at a time, always
+	   checking to make sure that we don't access beyond page boundary in
+	   SRC2.  */
+	tst	src1, #7
+	b.eq	L(loop_misaligned)
+L(do_misaligned):
 	ldrb	data1w, [src1], #1
 	ldrb	data2w, [src2], #1
-	subs	pos, pos, #1
-	ccmp	data1w, #1, #0, ne  /* NZCV = 0b0000.  */
-	ccmp	data1w, data2w, #0, cs  /* NZCV = 0b0000.  */
-	b.eq	.Ltinycmp
-	cbnz	pos, 1f /*find the null or unequal...*/
 	cmp	data1w, #1
-	ccmp	data1w, data2w, #0, cs
-	b.eq	.Lstart_align /*the last bytes are equal....*/
-1:
-	sub	result, data1, data2
-	ret
-
-.Lstart_align:
-	ands	xzr, src1, #7
-	b.eq	.Lrecal_offset
-	/*process more leading bytes to make str1 aligned...*/
-	add	src1, src1, tmp3
-	add	src2, src2, tmp3
-	/*load 8 bytes from aligned str1 and non-aligned str2..*/
+	ccmp	data1w, data2w, #0, cs	/* NZCV = 0b0000.  */
+	b.ne	L(done)
+	tst	src1, #7
+	b.ne	L(do_misaligned)
+
+L(loop_misaligned):
+	/* Test if we are within the last dword of the end of a 4K page.  If
+	   yes then jump back to the misaligned loop to copy a byte at a time.  */
+	and	tmp1, src2, #0xff8
+	eor	tmp1, tmp1, #0xff8
+	cbz	tmp1, L(do_misaligned)
 	ldr	data1, [src1], #8
 	ldr	data2, [src2], #8
 
 	sub	tmp1, data1, zeroones
 	orr	tmp2, data1, #REP8_7f
-	bic	has_nul, tmp1, tmp2
-	eor	diff, data1, data2 /* Non-zero if differences found.  */
-	orr	syndrome, diff, has_nul
-	cbnz	syndrome, .Lcal_cmpresult
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
-	bic	has_nul, tmp1, tmp2
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
-	orr	syndrome, diff, has_nul
-	cbnz	syndrome, .Lcal_cmpresult
-
-	/*The second part process*/
-	ldr	data1, [src1], #8
-	ldr	data2, [src2], #8
-	sub	tmp1, data1, zeroones
-	orr	tmp2, data1, #REP8_7f
-	bic	has_nul, tmp1, tmp2
-	eor	diff, data1, data2  /* Non-zero if differences found.  */
+	eor	diff, data1, data2	/* Non-zero if differences found.  */
+	bic	has_nul, tmp1, tmp2	/* Non-zero if NUL terminator.  */
 	orr	syndrome, diff, has_nul
-	cbz	syndrome, .Lloopcmp_proc
+	cbz	syndrome, L(loop_misaligned)
+	b	L(end)
 
-.Lcal_cmpresult:
-	/*
-	* reversed the byte-order as big-endian,then CLZ can find the most
-	* significant zero bits.
-	*/
-CPU_LE( rev	syndrome, syndrome )
-CPU_LE( rev	data1, data1 )
-CPU_LE( rev	data2, data2 )
-
-	/*
-	* For big-endian we cannot use the trick with the syndrome value
-	* as carry-propagation can corrupt the upper bits if the trailing
-	* bytes in the string contain 0x01.
-	* However, if there is no NUL byte in the dword, we can generate
-	* the result directly.  We cannot just subtract the bytes as the
-	* MSB might be significant.
-	*/
-CPU_BE( cbnz	has_nul, 1f )
-CPU_BE( cmp	data1, data2 )
-CPU_BE( cset	result, ne )
-CPU_BE( cneg	result, result, lo )
-CPU_BE( ret )
-CPU_BE( 1: )
-	/*Re-compute the NUL-byte detection, using a byte-reversed value. */
-CPU_BE(	rev	tmp3, data1 )
-CPU_BE(	sub	tmp1, tmp3, zeroones )
-CPU_BE(	orr	tmp2, tmp3, #REP8_7f )
-CPU_BE(	bic	has_nul, tmp1, tmp2 )
-CPU_BE(	rev	has_nul, has_nul )
-CPU_BE(	orr	syndrome, diff, has_nul )
-
-	clz	pos, syndrome
-	/*
-	* The MS-non-zero bit of the syndrome marks either the first bit
-	* that is different, or the top bit of the first zero byte.
-	* Shifting left now will bring the critical information into the
-	* top bits.
-	*/
-	lsl	data1, data1, pos
-	lsl	data2, data2, pos
-	/*
-	* But we need to zero-extend (char is unsigned) the value and then
-	* perform a signed 32-bit subtraction.
-	*/
-	lsr	data1, data1, #56
-	sub	result, data1, data2, lsr #56
+L(done):
+	sub	result, data1, data2
 	ret
 SYM_FUNC_END_PI(strcmp)
 EXPORT_SYMBOL_NOKASAN(strcmp)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
