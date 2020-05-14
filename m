Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4D81D331E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dzM0JXLCUQNeOUd6zKG5wNCv+hGYum9ho3d+xEGmKdE=; b=aWqTR6haeBW4ak+li2x/YvBN8h
	pypP5Q+d+Wc8+rV6oIdhKO8yVQhPhWCNXaeNaYPCYgS0iePd6zKm+xlXIqmWPXzZyzTOhOvXJmrDT
	IbNsIr62BD/d1PC6xTUNB91N3EGsXhUbD7O3XFJweyYanq9JpOHJjcMs4AA7MOL/Embw5VwJWlks4
	CBff5WNRXy7ljoNFFdcN2uFuO8Gyv6fY8g0UeFbu0vCs0APxDZMvH08CYgciCfN1bEaYHVZ57ok6Q
	oF3r1YawDlTBfeQDIy4s3rAYDp242OFoTHIOx+yDnsWkeU/gsVG3PzxbxtTTFp9Q/hlbG6T1IsbPd
	8J9KQbZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEyj-0004rk-9p; Thu, 14 May 2020 14:36:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEv0-0007Ps-Db
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:33:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 121FD1FB;
 Thu, 14 May 2020 07:33:02 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 222C43F71E;
 Thu, 14 May 2020 07:33:01 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 13/13] arm64: Add fixup routines for usercopy store
 exceptions
Date: Thu, 14 May 2020 14:32:27 +0000
Message-Id: <20200514143227.605-14-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073302_630510_28E59E83 
X-CRM114-Status: GOOD (  17.34  )
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

This adds the fixup routines for exceptions that occur on store
operations while copying, by providing the calling code with a more
accurate value for the number of bytes that failed to copy, rather
than returning the full buffer width.

The three routines for store exceptions work together to analyse
the position of the fault relative to the start or the end of the
buffer, and backtrack from the optimized memcpy algorithm to
determine if some number of bytes has already been successfully
copied.

The store operations occur mostly in-order, with the exception of
a few copy size ranges - this is specific to the new copy template,
which uses the latest memcpy implementation.

Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/lib/copy_user_fixup.S | 96 ++++++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/arch/arm64/lib/copy_user_fixup.S b/arch/arm64/lib/copy_user_fixup.S
index 256a33522749..d836fa6cc333 100644
--- a/arch/arm64/lib/copy_user_fixup.S
+++ b/arch/arm64/lib/copy_user_fixup.S
@@ -168,9 +168,105 @@ addr	.req	x15
 	sub	x0, x0, tmp1
 	b	L(end_fixup)
 
+	/*
+	 * The following three routines are directed to from faults
+	 * on store instructions.
+	 */
 9996:
+	/*
+	 * This routine is reached from faults on store instructions
+	 * where the target address has been specified relative to the
+	 * start of the user space memory buffer, and is also not
+	 * guaranteed to be aligned to 16B.
+	 *
+	 * For copy sizes <= 128 bytes, the stores occur in-order,
+	 * so it has copied up to (addr-dst)&~15.
+	 * For copy sizes > 128 bytes, this should only be directed
+	 * to from a fault on the first store of the long copy, before
+	 * the algorithm aligns dst to 16B, so no bytes have copied at
+	 * this point.
+	 */
+
+	/* Retrieve useful information & free the stack area */
+	ldr	dst, [sp], #16		// dst: x3
+	ldr	count, [sp], #16	// count: x2
+
+	cmp	count, 0
+	b.eq	L(none_copied)
+	cmp	count, 3
+	sub	x0, addr, dst // relative fault offset in buffer
+	bic	x0, x0, 7 // bytes already copied (steps of 8B stores)
+	sub	x0, count, x0 // bytes yet to copy
+	b.le	L(end_fixup)
+	cmp	count, 32
+	b.le	L(none_copied)
+	cmp	count, 128
+	sub	x0, addr, dst // relative fault offset in buffer
+	bic	x0, x0, 15 // bytes already copied (steps of 16B stores)
+	sub	x0, count, x0 // bytes yet to copy
+	b.le	L(end_fixup)
+	b	L(none_copied)
+
 9997:
+	/*
+	 * This routine is reached from faults on store instructions
+	 * where the target address has been specified relative to the
+	 * end of the user space memory buffer and is also not
+	 * guaranteed to be aligned with 16B.
+	 *
+	 * In this scenario, the the copy is close to completion and
+	 * has occurred in-order, so the last few bytes to copy can
+	 * easily be calculated.
+	 *
+	 * This caters for the overlapping stage, as it could
+	 * potentially fault on data that has already been copied.
+	 */
+
+	/* Retrieve useful information & free the stack area */
+	ldr	dst, [sp], #16		// dst: x3
+	ldr	count, [sp], #16	// count: x2
+	add	dstend, dst, count
+
+	sub	x0, dstend, addr
+	bic	x0, x0, 15 // remaining bytes to copy
+	b	L(end_fixup)
+
 9998:
+	/*
+	 * This routine is reached from faults on store instructions
+	 * where the target address has been specified relative to the
+	 * start of the user space memory buffer, and is also guaranteed
+	 * to be aligned to 16B.
+	 *
+	 * These instrucions occur after the algorithm aligns dst to 16B,
+	 * after the very first store in a long copy. It then continues
+	 * copying from dst+16 onwards.
+	 *
+	 * This could result in an overlapping copy if the original dst
+	 * is unaligned with 16B. However, this implies that it could
+	 * potentially fault on data that has already been copied, if
+	 * the fault occurs in the first aligned access.
+	 *
+	 * We want to report that 16 bytes has already successfully copied in this case.
+	*/
+
+	/* Retrieve useful information & free the stack area */
+	ldr	dst, [sp], #16		// dst: x3
+	ldr	count, [sp], #16	// count: x2
+
+	bic	tmp1, dst, 15 // aligned dst
+	bic	x0, addr, 15
+	sub	x0, x0, tmp1 // relative fault offset
+	cmp	x0, 0 // unexpected range for this fixup
+	b.eq	L(none_copied)
+	cmp	x0, 16
+	bic	x0, addr, 15
+	sub	x0, x0, dst
+	sub	x0, count, x0
+	b.gt	L(end_fixup)
+	sub	x0, count, 16
+	b	L(end_fixup) // initial unaligned chunk copied
+
 L(none_copied):
 	/*
 	 * Return the initial count as the number
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
