Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B98162AF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dM2XBVnmVTLLkwbwXTpBDN5M5aYdPTUX+hQe69itd2U=; b=H7lndM7ag7oeacBsYDn9jieJyU
	R9c6dWC/FMbRvtPmlLPQAYtyKYYc/fw9OTMzRLlOn2ho8+jHKwd2NZN9yJCE1E79aiaY24P/unYnW
	YkTiOq6bl016+iMLNVy/g/vxc7TlckIfLI5M+mh64F4+tYZI4NSCosbxqEkQjR32A/+ZepIIKEchh
	E54kqefLHhTbJjx8l4M3upTJ5rMcM6RvGjVR4mGJqe8TimEDZLALYoIp65voXvX14o5ca8ZMnCdHP
	MwC0OQkrvTC/VDZ+Z8gewTPuHvLPgW4rcuBHXXePN8iwpLoBLxWs68U2GOCjOoEEvXDOaht3Lj3xU
	8UJwFxqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j460W-00071z-Iq; Tue, 18 Feb 2020 16:46:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45zw-0006dE-Bn
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:45:26 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C5F124658;
 Tue, 18 Feb 2020 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582044324;
 bh=1grcBjHUkpwVZbAnNw+vpuR0VTZNDyp5sMtm5PUWRC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b07MY+/rTziRDkZnmlGwytrrX+TpXR0FLm1dUep9vXutmCa3XtPCBPQStopgtMpIZ
 t4dqBMnliRX+j2StwvD6YYzd8zYO9n1yWK8C7aHxoc2Vfp8RchBl2UNHgsdxjLGny7
 IjfF3hJOX0m/rpCNR3SjFLG6rbNFMho6exATvYG4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 2/2] ARM: decompressor: switch to by-VA cache maintenance for
 v7 cores
Date: Tue, 18 Feb 2020 17:44:30 +0100
Message-Id: <20200218164430.32671-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218164430.32671-1-ardb@kernel.org>
References: <20200218164430.32671-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_084524_448431_1DA9406E 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the v7 cache_clean_flush routine to take into account the
memory range passed in r0/r1, and perform cache maintenance by
virtual address on this range instead of set/way maintenance, which
is inappropriate for the purpose of maintaining the cached state of
memory contents.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 77 ++++++++------------
 1 file changed, 29 insertions(+), 48 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 935799b92198..df93c9f0a19a 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -685,6 +685,24 @@ params:		ldr	r0, =0x10000100		@ params_phys for RPC
 		.align
 #endif
 
+/*
+ * dcache_line_size - get the minimum D-cache line size from the CTR register
+ * on ARMv7.
+ */
+	.macro	dcache_line_size, reg, tmp
+#ifdef CONFIG_CPU_V7M
+	movw	\tmp, #:lower16:BASEADDR_V7M_SCB + V7M_SCB_CTR
+	movt	\tmp, #:upper16:BASEADDR_V7M_SCB + V7M_SCB_CTR
+	ldr     \tmp, [\tmp]
+#else
+	mrc	p15, 0, \tmp, c0, c0, 1		@ read ctr
+#endif
+	lsr	\tmp, \tmp, #16
+	and	\tmp, \tmp, #0xf		@ cache line size encoding
+	mov	\reg, #4			@ bytes per word
+	mov	\reg, \reg, lsl \tmp		@ actual cache line size
+	.endm
+
 /*
  * Turn on the cache.  We need to setup some page tables so that we
  * can have both the I and D caches on.
@@ -1177,8 +1195,6 @@ __armv7_mmu_cache_off:
 		bic	r0, r0, #0x000c
 #endif
 		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
-		mov	r12, lr
-		bl	__armv7_mmu_cache_flush
 		mov	r0, #0
 #ifdef CONFIG_MMU
 		mcr	p15, 0, r0, c8, c7, 0	@ invalidate whole TLB
@@ -1186,7 +1202,7 @@ __armv7_mmu_cache_off:
 		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
 		mcr	p15, 0, r0, c7, c10, 4	@ DSB
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
-		mov	pc, r12
+		mov	pc, lr
 
 /*
  * Clean and flush the cache to maintain consistency.
@@ -1199,6 +1215,7 @@ __armv7_mmu_cache_off:
 		.align	5
 cache_clean_flush:
 		mov	r3, #16
+		mov	r11, r1
 		b	call_cache_fn
 
 __armv4_mpu_cache_flush:
@@ -1249,51 +1266,15 @@ __armv7_mmu_cache_flush:
 		mcr	p15, 0, r10, c7, c14, 0	@ clean+invalidate D
 		b	iflush
 hierarchical:
-		mcr	p15, 0, r10, c7, c10, 5	@ DMB
-		stmfd	sp!, {r0-r7, r9-r11}
-		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
-		ands	r3, r0, #0x7000000	@ extract loc from clidr
-		mov	r3, r3, lsr #23		@ left align loc bit field
-		beq	finished		@ if loc is 0, then no need to clean
-		mov	r10, #0			@ start clean at cache level 0
-loop1:
-		add	r2, r10, r10, lsr #1	@ work out 3x current cache level
-		mov	r1, r0, lsr r2		@ extract cache type bits from clidr
-		and	r1, r1, #7		@ mask of the bits for current cache only
-		cmp	r1, #2			@ see what cache we have at this level
-		blt	skip			@ skip if no cache, or just i-cache
-		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
-		mcr	p15, 0, r10, c7, c5, 4	@ isb to sych the new cssr&csidr
-		mrc	p15, 1, r1, c0, c0, 0	@ read the new csidr
-		and	r2, r1, #7		@ extract the length of the cache lines
-		add	r2, r2, #4		@ add 4 (line length offset)
-		ldr	r4, =0x3ff
-		ands	r4, r4, r1, lsr #3	@ find maximum number on the way size
-		clz	r5, r4			@ find bit position of way size increment
-		ldr	r7, =0x7fff
-		ands	r7, r7, r1, lsr #13	@ extract max number of the index size
-loop2:
-		mov	r9, r4			@ create working copy of max way size
-loop3:
- ARM(		orr	r11, r10, r9, lsl r5	) @ factor way and cache number into r11
- ARM(		orr	r11, r11, r7, lsl r2	) @ factor index number into r11
- THUMB(		lsl	r6, r9, r5		)
- THUMB(		orr	r11, r10, r6		) @ factor way and cache number into r11
- THUMB(		lsl	r6, r7, r2		)
- THUMB(		orr	r11, r11, r6		) @ factor index number into r11
-		mcr	p15, 0, r11, c7, c14, 2	@ clean & invalidate by set/way
-		subs	r9, r9, #1		@ decrement the way
-		bge	loop3
-		subs	r7, r7, #1		@ decrement the index
-		bge	loop2
-skip:
-		add	r10, r10, #2		@ increment cache number
-		cmp	r3, r10
-		bgt	loop1
-finished:
-		ldmfd	sp!, {r0-r7, r9-r11}
-		mov	r10, #0			@ switch back to cache level 0
-		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
+		dcache_line_size r1, r2		@ r1 := dcache min line size
+		sub	r2, r1, #1		@ r2 := line size mask
+		bic	r0, r0, r2		@ round down start to line size
+		bic	r11, r11, r2		@ round down end to line size
+0:		cmp	r0, r11			@ finished?
+		bgt	iflush
+		mcr	p15, 0, r0, c7, c10, 1	@ clean line at r0 from Dcache
+		add	r0, r0, r1
+		b	0b
 iflush:
 		mcr	p15, 0, r10, c7, c10, 4	@ DSB
 		mcr	p15, 0, r10, c7, c5, 0	@ invalidate I+BTB
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
