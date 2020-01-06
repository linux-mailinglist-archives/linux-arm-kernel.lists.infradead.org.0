Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC995131902
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:07:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoKD1D/XVNGfyjmIHGQDnStjsRINNGV21c3slk5pkNo=; b=sY14yxffS/ojFM
	UObciJ+W74cq3P9MSTP5qaBkxUX7AFOiFmVSoSk98zPkW8LjMhv5meTcYpx3uy1YYrbeD6HrBfiPq
	C5ZlMqrcTKsxevNnunq7eROFdkl5Q+YbFb4lsdK74Zw3uxABso1+/xgE8EU0e+ThlyIAUgwtEdsiz
	p2PxoVI3j4Vmi3Qan6w7wfD3av2QH7GmmRXriap9dY3RVoOfmnZRLypoxFIU9cw74y9zK56TURFEg
	Iz0ePMh2XZwvw7JZ/9H6Q1cPg9luQ4/8G7MDKVwAZc9RyyB5+vjmEU/0KgpeCDn+Yh1PLK6efeblI
	NJZu2uxA14yRM6J6c8eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYeg-00055U-AR; Mon, 06 Jan 2020 20:07:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYdw-0004Sx-AX
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:06:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1CA8328;
 Mon,  6 Jan 2020 12:06:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45B163F534;
 Mon,  6 Jan 2020 12:06:27 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 3/3] arm64: mm: Use modern annotations for assembly functions
Date: Mon,  6 Jan 2020 19:58:18 +0000
Message-Id: <20200106195818.56351-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200106195818.56351-1-broonie@kernel.org>
References: <20200106195818.56351-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_120628_450027_76E47035 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC and also add a new annotation for static functions which previously
had no ENTRY equivalent. Update the annotations in the mm code to the
new macros. Even the functions called from non-standard environments
like idmap have no special requirements on their environments so can be
treated like regular functions.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/mm/cache.S | 52 +++++++++++++++++++++----------------------
 arch/arm64/mm/proc.S  | 24 ++++++++++----------
 2 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index db767b072601..2d881f34dd9d 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -24,7 +24,7 @@
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(__flush_icache_range)
+SYM_FUNC_START(__flush_icache_range)
 	/* FALLTHROUGH */
 
 /*
@@ -37,7 +37,7 @@ ENTRY(__flush_icache_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(__flush_cache_user_range)
+SYM_FUNC_START(__flush_cache_user_range)
 	uaccess_ttbr0_enable x2, x3, x4
 alternative_if ARM64_HAS_CACHE_IDC
 	dsb	ishst
@@ -66,8 +66,8 @@ alternative_else_nop_endif
 9:
 	mov	x0, #-EFAULT
 	b	1b
-ENDPROC(__flush_icache_range)
-ENDPROC(__flush_cache_user_range)
+SYM_FUNC_END(__flush_icache_range)
+SYM_FUNC_END(__flush_cache_user_range)
 
 /*
  *	invalidate_icache_range(start,end)
@@ -77,7 +77,7 @@ ENDPROC(__flush_cache_user_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(invalidate_icache_range)
+SYM_FUNC_START(invalidate_icache_range)
 alternative_if ARM64_HAS_CACHE_DIC
 	mov	x0, xzr
 	isb
@@ -94,7 +94,7 @@ alternative_else_nop_endif
 2:
 	mov	x0, #-EFAULT
 	b	1b
-ENDPROC(invalidate_icache_range)
+SYM_FUNC_END(invalidate_icache_range)
 
 /*
  *	__flush_dcache_area(kaddr, size)
@@ -105,10 +105,10 @@ ENDPROC(invalidate_icache_range)
  *	- kaddr   - kernel address
  *	- size    - size in question
  */
-ENTRY(__flush_dcache_area)
+SYM_FUNC_START_PI(__flush_dcache_area)
 	dcache_by_line_op civac, sy, x0, x1, x2, x3
 	ret
-ENDPIPROC(__flush_dcache_area)
+SYM_FUNC_END_PI(__flush_dcache_area)
 
 /*
  *	__clean_dcache_area_pou(kaddr, size)
@@ -119,14 +119,14 @@ ENDPIPROC(__flush_dcache_area)
  *	- kaddr   - kernel address
  *	- size    - size in question
  */
-ENTRY(__clean_dcache_area_pou)
+SYM_FUNC_START(__clean_dcache_area_pou)
 alternative_if ARM64_HAS_CACHE_IDC
 	dsb	ishst
 	ret
 alternative_else_nop_endif
 	dcache_by_line_op cvau, ish, x0, x1, x2, x3
 	ret
-ENDPROC(__clean_dcache_area_pou)
+SYM_FUNC_END(__clean_dcache_area_pou)
 
 /*
  *	__inval_dcache_area(kaddr, size)
@@ -138,7 +138,8 @@ ENDPROC(__clean_dcache_area_pou)
  *	- kaddr   - kernel address
  *	- size    - size in question
  */
-ENTRY(__inval_dcache_area)
+SYM_FUNC_START_LOCAL(__dma_inv_area)
+SYM_FUNC_START_PI(__inval_dcache_area)
 	/* FALLTHROUGH */
 
 /*
@@ -146,7 +147,6 @@ ENTRY(__inval_dcache_area)
  *	- start   - virtual start address of region
  *	- size    - size in question
  */
-__dma_inv_area:
 	add	x1, x1, x0
 	dcache_line_size x2, x3
 	sub	x3, x2, #1
@@ -165,8 +165,8 @@ __dma_inv_area:
 	b.lo	2b
 	dsb	sy
 	ret
-ENDPIPROC(__inval_dcache_area)
-ENDPROC(__dma_inv_area)
+SYM_FUNC_END_PI(__inval_dcache_area)
+SYM_FUNC_END(__dma_inv_area)
 
 /*
  *	__clean_dcache_area_poc(kaddr, size)
@@ -177,7 +177,8 @@ ENDPROC(__dma_inv_area)
  *	- kaddr   - kernel address
  *	- size    - size in question
  */
-ENTRY(__clean_dcache_area_poc)
+SYM_FUNC_START_LOCAL(__dma_clean_area)
+SYM_FUNC_START_PI(__clean_dcache_area_poc)
 	/* FALLTHROUGH */
 
 /*
@@ -185,11 +186,10 @@ ENTRY(__clean_dcache_area_poc)
  *	- start   - virtual start address of region
  *	- size    - size in question
  */
-__dma_clean_area:
 	dcache_by_line_op cvac, sy, x0, x1, x2, x3
 	ret
-ENDPIPROC(__clean_dcache_area_poc)
-ENDPROC(__dma_clean_area)
+SYM_FUNC_END_PI(__clean_dcache_area_poc)
+SYM_FUNC_END(__dma_clean_area)
 
 /*
  *	__clean_dcache_area_pop(kaddr, size)
@@ -200,13 +200,13 @@ ENDPROC(__dma_clean_area)
  *	- kaddr   - kernel address
  *	- size    - size in question
  */
-ENTRY(__clean_dcache_area_pop)
+SYM_FUNC_START_PI(__clean_dcache_area_pop)
 	alternative_if_not ARM64_HAS_DCPOP
 	b	__clean_dcache_area_poc
 	alternative_else_nop_endif
 	dcache_by_line_op cvap, sy, x0, x1, x2, x3
 	ret
-ENDPIPROC(__clean_dcache_area_pop)
+SYM_FUNC_END_PI(__clean_dcache_area_pop)
 
 /*
  *	__dma_flush_area(start, size)
@@ -216,10 +216,10 @@ ENDPIPROC(__clean_dcache_area_pop)
  *	- start   - virtual start address of region
  *	- size    - size in question
  */
-ENTRY(__dma_flush_area)
+SYM_FUNC_START_PI(__dma_flush_area)
 	dcache_by_line_op civac, sy, x0, x1, x2, x3
 	ret
-ENDPIPROC(__dma_flush_area)
+SYM_FUNC_END_PI(__dma_flush_area)
 
 /*
  *	__dma_map_area(start, size, dir)
@@ -227,11 +227,11 @@ ENDPIPROC(__dma_flush_area)
  *	- size	- size of region
  *	- dir	- DMA direction
  */
-ENTRY(__dma_map_area)
+SYM_FUNC_START_PI(__dma_map_area)
 	cmp	w2, #DMA_FROM_DEVICE
 	b.eq	__dma_inv_area
 	b	__dma_clean_area
-ENDPIPROC(__dma_map_area)
+SYM_FUNC_END_PI(__dma_map_area)
 
 /*
  *	__dma_unmap_area(start, size, dir)
@@ -239,8 +239,8 @@ ENDPIPROC(__dma_map_area)
  *	- size	- size of region
  *	- dir	- DMA direction
  */
-ENTRY(__dma_unmap_area)
+SYM_FUNC_START_PI(__dma_unmap_area)
 	cmp	w2, #DMA_TO_DEVICE
 	b.ne	__dma_inv_area
 	ret
-ENDPIPROC(__dma_unmap_area)
+SYM_FUNC_END_PI(__dma_unmap_area)
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592d1fbc..9a8b1b14ce02 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -50,7 +50,7 @@
  *
  * x0: virtual address of context pointer
  */
-ENTRY(cpu_do_suspend)
+SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
 	mrs	x3, tpidrro_el0
 	mrs	x4, contextidr_el1
@@ -74,7 +74,7 @@ alternative_endif
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
 	ret
-ENDPROC(cpu_do_suspend)
+SYM_FUNC_END(cpu_do_suspend)
 
 /**
  * cpu_do_resume - restore CPU register context
@@ -82,7 +82,7 @@ ENDPROC(cpu_do_suspend)
  * x0: Address of context pointer
  */
 	.pushsection ".idmap.text", "awx"
-ENTRY(cpu_do_resume)
+SYM_FUNC_START(cpu_do_resume)
 	ldp	x2, x3, [x0]
 	ldp	x4, x5, [x0, #16]
 	ldp	x6, x8, [x0, #32]
@@ -131,7 +131,7 @@ alternative_else_nop_endif
 
 	isb
 	ret
-ENDPROC(cpu_do_resume)
+SYM_FUNC_END(cpu_do_resume)
 	.popsection
 #endif
 
@@ -142,7 +142,7 @@ ENDPROC(cpu_do_resume)
  *
  *	- pgd_phys - physical address of new TTB
  */
-ENTRY(cpu_do_switch_mm)
+SYM_FUNC_START(cpu_do_switch_mm)
 	mrs	x2, ttbr1_el1
 	mmid	x1, x1				// get mm->context.id
 	phys_to_ttbr x3, x0
@@ -161,7 +161,7 @@ alternative_else_nop_endif
 	msr	ttbr0_el1, x3			// now update TTBR0
 	isb
 	b	post_ttbr_update_workaround	// Back to C code...
-ENDPROC(cpu_do_switch_mm)
+SYM_FUNC_END(cpu_do_switch_mm)
 
 	.pushsection ".idmap.text", "awx"
 
@@ -182,7 +182,7 @@ ENDPROC(cpu_do_switch_mm)
  * This is the low-level counterpart to cpu_replace_ttbr1, and should not be
  * called by anything else. It can only be executed from a TTBR0 mapping.
  */
-ENTRY(idmap_cpu_replace_ttbr1)
+SYM_FUNC_START(idmap_cpu_replace_ttbr1)
 	save_and_disable_daif flags=x2
 
 	__idmap_cpu_set_reserved_ttbr1 x1, x3
@@ -194,7 +194,7 @@ ENTRY(idmap_cpu_replace_ttbr1)
 	restore_daif x2
 
 	ret
-ENDPROC(idmap_cpu_replace_ttbr1)
+SYM_FUNC_END(idmap_cpu_replace_ttbr1)
 	.popsection
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
@@ -222,7 +222,7 @@ ENDPROC(idmap_cpu_replace_ttbr1)
  */
 __idmap_kpti_flag:
 	.long	1
-ENTRY(idmap_kpti_install_ng_mappings)
+SYM_FUNC_START(idmap_kpti_install_ng_mappings)
 	cpu		.req	w0
 	num_cpus	.req	w1
 	swapper_pa	.req	x2
@@ -393,7 +393,7 @@ __idmap_kpti_secondary:
 	.unreq	cur_ptep
 	.unreq	end_ptep
 	.unreq	pte
-ENDPROC(idmap_kpti_install_ng_mappings)
+SYM_FUNC_END(idmap_kpti_install_ng_mappings)
 	.popsection
 #endif
 
@@ -404,7 +404,7 @@ ENDPROC(idmap_kpti_install_ng_mappings)
  *	value of the SCTLR_EL1 register.
  */
 	.pushsection ".idmap.text", "awx"
-ENTRY(__cpu_setup)
+SYM_FUNC_START(__cpu_setup)
 	tlbi	vmalle1				// Invalidate local TLB
 	dsb	nsh
 
@@ -475,4 +475,4 @@ ENTRY(__cpu_setup)
 #endif	/* CONFIG_ARM64_HW_AFDBM */
 	msr	tcr_el1, x10
 	ret					// return to head.S
-ENDPROC(__cpu_setup)
+SYM_FUNC_END(__cpu_setup)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
