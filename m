Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9BC1D3306
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z1nl33ndpaku6x6a+OQYtHtVv7c3pE0kp60xKehqhgc=; b=jrYrWDn0J7o7ZJX5acC0gUgJSQ
	lBahTSGExnyhoVMLs54sbKrDjb4wmr0OlTaPypM/jNUoNeiU8ph7HFaRZviPlDdF7IFVwfA/HNX+4
	Y+Sb0hmivUY+6/SF1vZYQEVmNDvzpjAvCKsk/tsnWBmSbMF5z52XmOURbchTEmoxBys04hYoBHZ3Y
	Mz37VpcnaC/B4qCUsrOIjL1yTDKqOBLTBN5feP9bOlizOlo6Z9YM+k4ZO5qH/JArev/aq2gjLQrte
	af0kUfYL11tjAs20nhkcMgGRSYqHHFkw2YZjF2BjiIW63iwEtZeeRjYw3f1oifocp30L5CtD2vZ4v
	EW/6nXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEwO-0000Nt-Bo; Thu, 14 May 2020 14:34:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEup-0007Ps-Oi
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:32:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E0421FB;
 Thu, 14 May 2020 07:32:51 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53DBA3F71E;
 Thu, 14 May 2020 07:32:50 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 04/13] arm64: Import latest version of Cortex Strings'
 memmove
Date: Thu, 14 May 2020 14:32:18 +0000
Message-Id: <20200514143227.605-5-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073251_890015_DFDCA6C2 
X-CRM114-Status: GOOD (  14.68  )
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

Import the latest version of Cortex Strings' memmove function.

The upstream source is src/aarch64/memmove.S as of commit 99b01ddb8e41
in https://git.linaro.org/toolchain/cortex-strings.git.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: update attribution, expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/lib/memmove.S | 232 +++++++++++++--------------------------
 1 file changed, 78 insertions(+), 154 deletions(-)

diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
index 02cda2e33bde..d0977d0ad745 100644
--- a/arch/arm64/lib/memmove.S
+++ b/arch/arm64/lib/memmove.S
@@ -1,13 +1,12 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2013 ARM Ltd.
- * Copyright (C) 2013 Linaro.
+ * Copyright (c) 2013 Linaro Limited. All rights reserved.
+ * Copyright (c) 2015 ARM Ltd. All rights reserved.
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
@@ -25,165 +24,90 @@
  * Returns:
  *	x0 - dest
  */
-dstin	.req	x0
-src	.req	x1
-count	.req	x2
-tmp1	.req	x3
-tmp1w	.req	w3
-tmp2	.req	x4
-tmp2w	.req	w4
-tmp3	.req	x5
-tmp3w	.req	w5
-dst	.req	x6
+/* Parameters and result.  */
+#define dstin	x0
+#define src	x1
+#define count	x2
+#define srcend	x3
+#define dstend	x4
+#define tmp1	x5
+#define A_l	x6
+#define A_h	x7
+#define B_l	x8
+#define B_h	x9
+#define C_l	x10
+#define C_h	x11
+#define D_l	x12
+#define D_h	x13
+#define E_l	count
+#define E_h	tmp1
 
-A_l	.req	x7
-A_h	.req	x8
-B_l	.req	x9
-B_h	.req	x10
-C_l	.req	x11
-C_h	.req	x12
-D_l	.req	x13
-D_h	.req	x14
+/* All memmoves up to 96 bytes are done by memcpy as it supports overlaps.
+   Larger backwards copies are also handled by memcpy. The only remaining
+   case is forward large copies.  The destination is aligned, and an
+   unrolled loop processes 64 bytes per iteration.
+*/
 
-	.weak memmove
+    .weak memmove
 SYM_FUNC_START_ALIAS(__memmove)
 SYM_FUNC_START_PI(memmove)
-	cmp	dstin, src
-	b.lo	__memcpy
-	add	tmp1, src, count
-	cmp	dstin, tmp1
-	b.hs	__memcpy		/* No overlap.  */
+	sub	tmp1, dstin, src
+	cmp	count, 96
+	ccmp	tmp1, count, 2, hi
+	b.hs	__memcpy
 
-	add	dst, dstin, count
-	add	src, src, count
-	cmp	count, #16
-	b.lo	.Ltail15  /*probably non-alignment accesses.*/
+	cbz	tmp1, 3f
+	add	dstend, dstin, count
+	add	srcend, src, count
 
-	ands	tmp2, src, #15     /* Bytes to reach alignment.  */
-	b.eq	.LSrcAligned
-	sub	count, count, tmp2
-	/*
-	* process the aligned offset length to make the src aligned firstly.
-	* those extra instructions' cost is acceptable. It also make the
-	* coming accesses are based on aligned address.
-	*/
-	tbz	tmp2, #0, 1f
-	ldrb	tmp1w, [src, #-1]!
-	strb	tmp1w, [dst, #-1]!
-1:
-	tbz	tmp2, #1, 2f
-	ldrh	tmp1w, [src, #-2]!
-	strh	tmp1w, [dst, #-2]!
-2:
-	tbz	tmp2, #2, 3f
-	ldr	tmp1w, [src, #-4]!
-	str	tmp1w, [dst, #-4]!
-3:
-	tbz	tmp2, #3, .LSrcAligned
-	ldr	tmp1, [src, #-8]!
-	str	tmp1, [dst, #-8]!
-
-.LSrcAligned:
-	cmp	count, #64
-	b.ge	.Lcpy_over64
+	/* Align dstend to 16 byte alignment so that we don't cross cache line
+	   boundaries on both loads and stores.	 There are at least 96 bytes
+	   to copy, so copy 16 bytes unaligned and then align.	The loop
+	   copies 64 bytes per iteration and prefetches one iteration ahead.  */
 
-	/*
-	* Deal with small copies quickly by dropping straight into the
-	* exit block.
-	*/
-.Ltail63:
-	/*
-	* Copy up to 48 bytes of data. At this point we only need the
-	* bottom 6 bits of count to be accurate.
-	*/
-	ands	tmp1, count, #0x30
-	b.eq	.Ltail15
-	cmp	tmp1w, #0x20
-	b.eq	1f
-	b.lt	2f
-	ldp	A_l, A_h, [src, #-16]!
-	stp	A_l, A_h, [dst, #-16]!
+	and	tmp1, dstend, 15
+	ldp	D_l, D_h, [srcend, -16]
+	sub	srcend, srcend, tmp1
+	sub	count, count, tmp1
+	ldp	A_l, A_h, [srcend, -16]
+	stp	D_l, D_h, [dstend, -16]
+	ldp	B_l, B_h, [srcend, -32]
+	ldp	C_l, C_h, [srcend, -48]
+	ldp	D_l, D_h, [srcend, -64]!
+	sub	dstend, dstend, tmp1
+	subs	count, count, 128
+	b.ls	2f
+	nop
 1:
-	ldp	A_l, A_h, [src, #-16]!
-	stp	A_l, A_h, [dst, #-16]!
-2:
-	ldp	A_l, A_h, [src, #-16]!
-	stp	A_l, A_h, [dst, #-16]!
+	stp	A_l, A_h, [dstend, -16]
+	ldp	A_l, A_h, [srcend, -16]
+	stp	B_l, B_h, [dstend, -32]
+	ldp	B_l, B_h, [srcend, -32]
+	stp	C_l, C_h, [dstend, -48]
+	ldp	C_l, C_h, [srcend, -48]
+	stp	D_l, D_h, [dstend, -64]!
+	ldp	D_l, D_h, [srcend, -64]!
+	subs	count, count, 64
+	b.hi	1b
 
-.Ltail15:
-	tbz	count, #3, 1f
-	ldr	tmp1, [src, #-8]!
-	str	tmp1, [dst, #-8]!
-1:
-	tbz	count, #2, 2f
-	ldr	tmp1w, [src, #-4]!
-	str	tmp1w, [dst, #-4]!
+	/* Write the last full set of 64 bytes.	 The remainder is at most 64
+	   bytes, so it is safe to always copy 64 bytes from the start even if
+	   there is just 1 byte left.  */
 2:
-	tbz	count, #1, 3f
-	ldrh	tmp1w, [src, #-2]!
-	strh	tmp1w, [dst, #-2]!
-3:
-	tbz	count, #0, .Lexitfunc
-	ldrb	tmp1w, [src, #-1]
-	strb	tmp1w, [dst, #-1]
-
-.Lexitfunc:
-	ret
-
-.Lcpy_over64:
-	subs	count, count, #128
-	b.ge	.Lcpy_body_large
-	/*
-	* Less than 128 bytes to copy, so handle 64 bytes here and then jump
-	* to the tail.
-	*/
-	ldp	A_l, A_h, [src, #-16]
-	stp	A_l, A_h, [dst, #-16]
-	ldp	B_l, B_h, [src, #-32]
-	ldp	C_l, C_h, [src, #-48]
-	stp	B_l, B_h, [dst, #-32]
-	stp	C_l, C_h, [dst, #-48]
-	ldp	D_l, D_h, [src, #-64]!
-	stp	D_l, D_h, [dst, #-64]!
-
-	tst	count, #0x3f
-	b.ne	.Ltail63
-	ret
-
-	/*
-	* Critical loop. Start at a new cache line boundary. Assuming
-	* 64 bytes per line this ensures the entire loop is in one line.
-	*/
-	.p2align	L1_CACHE_SHIFT
-.Lcpy_body_large:
-	/* pre-load 64 bytes data. */
-	ldp	A_l, A_h, [src, #-16]
-	ldp	B_l, B_h, [src, #-32]
-	ldp	C_l, C_h, [src, #-48]
-	ldp	D_l, D_h, [src, #-64]!
-1:
-	/*
-	* interlace the load of next 64 bytes data block with store of the last
-	* loaded 64 bytes data.
-	*/
-	stp	A_l, A_h, [dst, #-16]
-	ldp	A_l, A_h, [src, #-16]
-	stp	B_l, B_h, [dst, #-32]
-	ldp	B_l, B_h, [src, #-32]
-	stp	C_l, C_h, [dst, #-48]
-	ldp	C_l, C_h, [src, #-48]
-	stp	D_l, D_h, [dst, #-64]!
-	ldp	D_l, D_h, [src, #-64]!
-	subs	count, count, #64
-	b.ge	1b
-	stp	A_l, A_h, [dst, #-16]
-	stp	B_l, B_h, [dst, #-32]
-	stp	C_l, C_h, [dst, #-48]
-	stp	D_l, D_h, [dst, #-64]!
+	ldp	E_l, E_h, [src, 48]
+	stp	A_l, A_h, [dstend, -16]
+	ldp	A_l, A_h, [src, 32]
+	stp	B_l, B_h, [dstend, -32]
+	ldp	B_l, B_h, [src, 16]
+	stp	C_l, C_h, [dstend, -48]
+	ldp	C_l, C_h, [src]
+	stp	D_l, D_h, [dstend, -64]
+	stp	E_l, E_h, [dstin, 48]
+	stp	A_l, A_h, [dstin, 32]
+	stp	B_l, B_h, [dstin, 16]
+	stp	C_l, C_h, [dstin]
+3:	ret
 
-	tst	count, #0x3f
-	b.ne	.Ltail63
-	ret
 SYM_FUNC_END_PI(memmove)
 EXPORT_SYMBOL(memmove)
 SYM_FUNC_END_ALIAS(__memmove)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
