Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959E61D3320
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S5UVVWG6u5b7sS/NCvJUyzbBsgR0vnCnuHanB63sKsc=; b=akw2LhdQhOV8MXAXqwVDJ6mPXW
	Z2ur9H5UlE0RVuA/Arhjy3lAdg/7ynaClhnNqs1wVpWP5HBjhVdRxLPhvtdYp0wg6B2x6HzPGOzbx
	BW6eHEJrVW/uQesxnlT9iekfuXfNE2HYe71qvQYN/9c9fOaOlfgG0h54TQbT+RCClFPoJI25x+cDz
	Y3gqbnKfboxQW40go/S27CrhR4ffi0zGFbR6CEpqeHB2sJSufjsKrCn9dYk5u4CWPupKNqayDWLdQ
	08w31hYwVO0omW5PK9i3MsL2gYZamJQ5cK4ipG4u3qUDWMFld5otoX3Qm9isBySUoz0IQg3xj4gTk
	QCSqTW4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEz8-00058r-Me; Thu, 14 May 2020 14:37:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEuz-0007Ta-8D
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:33:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFC1111B3;
 Thu, 14 May 2020 07:33:00 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F21E33F71E;
 Thu, 14 May 2020 07:32:59 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 12/13] arm64: Add fixup routines for usercopy load
 exceptions
Date: Thu, 14 May 2020 14:32:26 +0000
Message-Id: <20200514143227.605-13-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073301_402446_1CB272DA 
X-CRM114-Status: GOOD (  20.66  )
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

This adds the fixup routines for exceptions that occur on load
operations while copying, by providing the calling code with a more
accurate value for the number of bytes that failed to copy.

The three routines for load exceptions work together to analyse
the position of the fault relative to the start or the end of the
buffer, and backtrack from the optimized memcpy algorithm to
determine if some number of bytes has already been successfully
copied.

The new template uses out-of-order copying, and this fixup routine is
specific to the latest memcpy implementation. It is assumed there is
no requirement to follow through with the copying of data that may
reside in temporary registers on a fault, as this would greatly
increase the fixup's complexity.

Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/lib/copy_user_fixup.S | 170 ++++++++++++++++++++++++++++++-
 1 file changed, 165 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/lib/copy_user_fixup.S b/arch/arm64/lib/copy_user_fixup.S
index f878c8831b14..256a33522749 100644
--- a/arch/arm64/lib/copy_user_fixup.S
+++ b/arch/arm64/lib/copy_user_fixup.S
@@ -3,19 +3,179 @@
 addr	.req	x15
 .section .fixup,"ax"
 .align	2
+
+	/*
+	 * These fixup routines assume that it is not a requirement
+	 * to follow through with the copying of any intermediate
+	 * data in registers: this would be highly dependent on the
+	 * procedure in the copy template, which utilizes out-of-order
+	 * copying and is subject to change by future optimizations.
+	 *
+	 * The subroutine that is excuted depends on the properties of
+	 * the target address in the instruction: if it is an address
+	 * relative to the start or the end of the buffer, and (in the
+	 * case of copy sizes larger than 128 bytes) whether it is
+	 * aligned or unaligned with 16 bytes.
+	 */
+
+	/*
+	 * The following three routines are directed to from faults on load
+	 * instructions. In each case, nothing has been copied if either:
+	 *	a) the copy size is less than 128 bytes, as the algorithm does
+	 * 	   not interleave load/store instruction, so nothing has been
+	 *	   copied and the full width (srcend-src) can be returned
+	 *	b) the copy size is greater than or equal to 128 bytes and the
+	 *	   src and dst buffers overlap, as this would result in a
+	 *	   backwards copy, but the calling code expects the return
+	 *	   value (no. bytes not copied) to be from an in-order
+	 *	   perspective.
+	 */
 9993:
+	/*
+	 * This is reached from load instructions that are specified
+	 * relative to the start of a user space memory buffer, and
+	 * are not guaranteed to be aligned to 16B.
+	 */
+
+	/* Retrieve useful information & free the stack area */
+	ldp	dst, src, [sp], #16	// dst: x3, src: x1
+	ldr	count, [sp], #16	// count: x2
+	add	srcend, src, count
+	add	dstend, dst, count
+
+	/* Copy size < 128 bytes */
+	cmp	count, 128
+	b.ls	L(none_copied)
+	/*
+	 * Overlapping buffers:
+	 * (src <= dst && dst < srcend) || (dst <= src && src < dstend)
+	 */
+	cmp	src, dst
+	ccmp	dst, srcend, #0, le
+	b.lt	L(none_copied)
+	cmp	dst, src
+	ccmp	src, dstend, #0, le
+	b.lt	L(none_copied)
+
+	/*
+	 * The fault occurred in a load instruction at the start of the
+	 * algorithm's subroutine for long copies, and no bytes have
+	 * been stored at this point.
+	 */
+	b	L(none_copied)
 9994:
+	/*
+	 * This is reached from load instructions that are specified
+	 * relative to the end of a user space memory buffer, and
+	 * are not guaranteed to be aligned to 16B.
+	 */
+
+	/* Store the current dst before the original is
+	 * restored */
+	mov	tmp1, dst
+
+	/* Retrieve useful information & free the stack area */
+	ldp	dst, src, [sp], #16	// dst: x3, src: x1
+	ldr	count, [sp], #16	// count: x2
+	add	srcend, src, count
+	add	dstend, dst, count
+
+	/* Copy size < 128 bytes */
+	cmp	count, 128
+	b.ls	L(none_copied)
+	/*
+	 * Overlapping buffers:
+	 * (src <= dst && dst < srcend) || (dst <= src && src < dstend)
+	 */
+	cmp	src, dst
+	ccmp	dst, srcend, #0, le
+	b.lt	L(none_copied)
+	cmp	dst, src
+	ccmp	src, dstend, #0, le
+	b.lt	L(none_copied)
+
+	/*
+	 * In the case of an access relative to the end of
+	 * the buffer, the long copy has reached the final
+	 * 64B chunk in copy64_from_end().
+	 *
+	 * The fault address should fall in 1-of-4 16B blocks,
+	 * each of which indicates how many bytes have been
+	 * stored from the in-order perspective.
+	 *
+	 * A number of iterations of the loop to copy 64B
+	 * chunks may have completed; tmp1 stores the
+	 * latest position of the dst pointer and this can
+	 * be used to deduce how many 16B copies have taken
+	 * place.
+	 */
+
+	/* Calculate the index of the 16B block containing
+	 * containing the fault address */
+	sub	x0, srcend, 64
+	cmp	addr, x0
+	b.lt	L(none_copied) // unexpected fault address
+	sub	x0, addr, x0 // relative offset of fault in buffer
+	bic	x0, x0, 15 // assume no data copied between addr and the target
+	sub	tmp1, dst, tmp1 // already copied up to dst
+	add	x0, x0, tmp1 // plus the difference between addr and srcend-64
+	sub	x0, count, x0 // no. bytes not copied
+	b	L(end_fixup)
+
 9995:
+	/*
+	 * This is reached from load instructions that are specified
+	 * relative to the start of a user space memory buffer, and
+	 * are guaranteed to be aligned to 16B.
+	 */
+
+	/* Retrieve useful information & free the stack area */
+	ldp	dst, src, [sp], #16	// dst: x3, src: x1
+	ldr	count, [sp], #16	// count: x2
+	add	srcend, src, count
+	add	dstend, dst, count
+
+	/* Copy size <= 128 bytes */
+	cmp	count, 128
+	b.ls	L(none_copied)
+
+	/*
+	 * Overlapping buffers:
+	 * (src <= dst && dst < srcend) || (dst <= src && src < dstend)
+	 */
+	cmp	src, dst
+	ccmp	dst, srcend, #0, le
+	b.lt	L(none_copied)
+	cmp	dst, src
+	ccmp	src, dstend, #0, le
+	b.lt	L(none_copied)
+
+	sub	x0, addr, src
+	lsr	x0, addr, 4 // calculate the index of faulting 16B block
+	/* Map the index in x0 to the no. bytes already copied */
+	cmp	x0, 1
+	b.le	L(none_copied) // no stores for i=0,1
+	cmp	x0, 4
+	mov	tmp1, x0
+	sub	x0, count, 16
+	b.le	L(end_fixup) // one store (16B) for i=2,3,4
+	/* Faulted in a loop: stored up to ((i-3) * 16) - (dst % 16) */
+	mov	x0, tmp1
+	sub	x0, x0, 3
+	lsl	x0, x0, 4
+	mov	tmp1, dst
+	and	tmp1, tmp1, 15
+	sub	x0, x0, tmp1
+	b	L(end_fixup)
+
 9996:
 9997:
 9998:
-	/* Retrieve useful information & free the stack area */
-	ldr	count, [sp, #16]	// x2
-	add	sp, sp, 32
+L(none_copied):
 	/*
-	 * Return the initial count as the (under-estimated) number
+	 * Return the initial count as the number
 	 * of bytes that failed to copy
 	 */
 	mov	x0, count
+L(end_fixup):
 	ret
-
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
