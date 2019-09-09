Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9423CADEB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqrJ0JqEVgNtRwAQIFBPDCR3h2LSgksoTE+I+N0bI7o=; b=fvPrIfp1SRSE6O
	oapU56mQFeCOCVQ2s4QK/5/Fx87w2rKcJFT2YA+YTGfUYVL3J2xyOn1hwLp5QPMKxSHiQ9B6ic2yX
	w5gfTJb0h8z+Q8br6Ke/gF6MpPob2SL1yUAkJIElKHjZROQ3RkvmrZXLzy0ta7EoTfugw30PIUnCc
	MBYJOFJRaN3RuyDsWOHJZgz2FUqCjPlB8iRAg+2xexQUBPzB3uf029KpQG4rLxGjCYp27H1Smtpwo
	YglZLkcefLNT/uLd1sWHlugRQPm1+jGyB9s+TI4S8qraxb2ZuXiCAIa3uJQH4kXqkidvB6saWhasg
	9N+MzMwSfNQ8LP/sruPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OEk-0006hi-3p; Mon, 09 Sep 2019 18:18:02 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9i-0000Hi-3F
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:52 +0000
Received: by mail-qk1-x743.google.com with SMTP id x134so14051537qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=uzYhiFz1SMeg2QY6ipqvDOBiB7Gk/JQiJ54Fcl4j63M=;
 b=e4EaTlbSSZhsprUc0zFrn30dZWsflHuf7nDwDufq3UQw/3JY6oX+ZcljzgSG/KGt/V
 PxVQ2Lt0lvPYkDv5EihyGrjIuyDratF59J7J30E2NZMc7gsECGLOKfL+rVYtMWoo/gGx
 K7ap5sDY8ZPPJYBK/RQx3yBXlOnCVJe8XWF4XyJqHZw6+C4blyGAuzMOZLIbCqkr7ZjJ
 GBEV0ACF19BSrltUvbbd+OkS79Tjs9kDgw2TJNQIbu16H6w+h8x1NXbsjtawhm4LFGO7
 4gsqILPszc5kqBc9rTqesjAuw0E+XSCbFJfzl25qkM+6XOYm6rQrGm9b706PpwYdoXRt
 ziEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uzYhiFz1SMeg2QY6ipqvDOBiB7Gk/JQiJ54Fcl4j63M=;
 b=LNRNBv2GuoVVZzX6CLVbPHeWme4oME18+AjNWqBt3hfxNYrD6wuwoR7Kc6zyXlBIa5
 4sxxSBX7SHTK55K5ov7xQOuZ36C+enoli1gv39+N59U8bPaGjjAdJBWkIzBBn/fWs0cg
 mCj+4vvgNsGTKl6PZKyOKbEMIwW5qphGdxx9VQNVEhSbRpldqOzXJGhLHLUcxFQ3AjxL
 DoiJb+xALdFNkWhZChnUKakitz034pBZB9Wu9tmPjFZaOzM+3B18kxlVUBvbWeFeuh84
 O1WKt2/kyLf5nVb7oZdih3UFy12f6ROcdEWHc0Yc+Pu1ngBQkmPILBNtmykB5WBvDAan
 OaQw==
X-Gm-Message-State: APjAAAUbNRMRaKzHHMnD7Nv0k4uBUEP2zv2OQoV6J/lnBAPY1DFq4dmx
 9/OWbP8rakT0SSD6iZXhWVy9XQ==
X-Google-Smtp-Source: APXvYqzvOa+riUd6zPggF5iQFRZEb8oIrJ8YL+PXBqkAA3Pfy18h2xzXgay/8w4dZS6O22EtrGcIUQ==
X-Received: by 2002:ae9:ef8c:: with SMTP id
 d134mr24652308qkg.286.1568052768825; 
 Mon, 09 Sep 2019 11:12:48 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:48 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 17/17] arm64: kexec: enable MMU during kexec relocation
Date: Mon,  9 Sep 2019 14:12:21 -0400
Message-Id: <20190909181221.309510-18-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111250_438303_08806F72 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now, that we have transitional page tables configured, temporarily enable
MMU to allow faster relocation of segments to final destination.

The performance data: for a moderate size kernel + initramfs: 25M the
relocation was taking 0.382s, with enabled MMU it now takes
0.019s only or x20 improvement.

The time is proportional to the size of relocation, therefore if initramfs
is larger, 100M it could take over a second.

Also, remove reloc_arg->head, as it is not needed anymore once MMU is
enabled.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h      |   2 -
 arch/arm64/kernel/asm-offsets.c     |   1 -
 arch/arm64/kernel/machine_kexec.c   |   1 -
 arch/arm64/kernel/relocate_kernel.S | 136 +++++++++++++++++-----------
 4 files changed, 84 insertions(+), 56 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 450d8440f597..ad81ed3e5751 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -109,7 +109,6 @@ extern const unsigned long kexec_el1_sync_size;
 			((UL(0xffffffffffffffff) - PAGE_OFFSET) >> 1) + 1)
 /*
  * kern_reloc_arg is passed to kernel relocation function as an argument.
- * head		kimage->head, allows to traverse through relocation segments.
  * entry_addr	kimage->start, where to jump from relocation function (new
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
@@ -125,7 +124,6 @@ extern const unsigned long kexec_el1_sync_size;
  * copy_len	Number of bytes that need to be copied
  */
 struct kern_reloc_arg {
-	unsigned long	head;
 	unsigned long	entry_addr;
 	unsigned long	kern_arg0;
 	unsigned long	kern_arg1;
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 7c2ba09a8ceb..13ad00b1b90f 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -129,7 +129,6 @@ int main(void)
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
 #endif
 #ifdef CONFIG_KEXEC_CORE
-  DEFINE(KRELOC_HEAD,		offsetof(struct kern_reloc_arg, head));
   DEFINE(KRELOC_ENTRY_ADDR,	offsetof(struct kern_reloc_arg, entry_addr));
   DEFINE(KRELOC_KERN_ARG0,	offsetof(struct kern_reloc_arg, kern_arg0));
   DEFINE(KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index ef7318cb6e70..7fedf58f67f0 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -195,7 +195,6 @@ int machine_kexec_post_load(struct kimage *kimage)
 	kimage->arch.kern_reloc = kern_reloc;
 	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
 
-	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->el2_vector = el2_vector;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 14243a678277..96ff6760bd9c 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -4,6 +4,8 @@
  *
  * Copyright (C) Linaro.
  * Copyright (C) Huawei Futurewei Technologies.
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
  */
 
 #include <linux/kexec.h>
@@ -14,6 +16,49 @@
 #include <asm/page.h>
 #include <asm/sysreg.h>
 
+/* Invalidae TLB */
+.macro tlb_invalidate
+	dsb	sy
+	dsb	ish
+	tlbi	vmalle1
+	dsb	ish
+	isb
+.endm
+
+/* Turn-off mmu at level specified by sctlr */
+.macro turn_off_mmu sctlr, tmp1, tmp2
+	mrs	\tmp1, \sctlr
+	ldr	\tmp2, =SCTLR_ELx_FLAGS
+	bic	\tmp1, \tmp1, \tmp2
+	pre_disable_mmu_workaround
+	msr	\sctlr, \tmp1
+	isb
+.endm
+
+/* Turn-on mmu at level specified by sctlr */
+.macro turn_on_mmu sctlr, tmp1, tmp2
+	mrs	\tmp1, \sctlr
+	ldr	\tmp2, =SCTLR_ELx_FLAGS
+	orr	\tmp1, \tmp1, \tmp2
+	msr	\sctlr, \tmp1
+	ic	iallu
+	dsb	nsh
+	isb
+.endm
+
+/*
+ * Set ttbr0 and ttbr1, called while MMU is disabled, so no need to temporarily
+ * set zero_page table. Invalidate TLB after new tables are set.
+ */
+.macro set_ttbr arg, tmp
+	ldr	\tmp, [\arg, #KRELOC_TRANS_TTBR0]
+	msr	ttbr0_el1, \tmp
+	ldr	\tmp, [\arg, #KRELOC_TRANS_TTBR1]
+	offset_ttbr1 \tmp
+	msr	ttbr1_el1, \tmp
+	isb
+.endm
+
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
  *
@@ -24,65 +69,52 @@
  * symbols arm64_relocate_new_kernel and arm64_relocate_new_kernel_end.  The
  * machine_kexec() routine will copy arm64_relocate_new_kernel to the kexec
  * safe memory that has been set up to be preserved during the copy operation.
+ *
+ * This function temporarily enables MMU if kernel relocation is needed.
+ * Also, if we enter this function at EL2 on non-VHE kernel, we temporarily go
+ * to EL1 to enable MMU, and escalate back to EL2 at the end to do the jump to
+ * the new kernel. This is determined by presence of el2_vector.
  */
 ENTRY(arm64_relocate_new_kernel)
-	/* Clear the sctlr_el2 flags. */
-	mrs	x2, CurrentEL
-	cmp	x2, #CurrentEL_EL2
+	mrs	x1, CurrentEL
+	cmp	x1, #CurrentEL_EL2
 	b.ne	1f
-	mrs	x2, sctlr_el2
-	ldr	x1, =SCTLR_ELx_FLAGS
-	bic	x2, x2, x1
-	pre_disable_mmu_workaround
-	msr	sctlr_el2, x2
-	isb
-1:	/* Check if the new image needs relocation. */
-	ldr	x16, [x0, #KRELOC_HEAD]		/* x16 = kimage_head */
-	tbnz	x16, IND_DONE_BIT, .Ldone
-	raw_dcache_line_size x15, x1		/* x15 = dcache line size */
-.Lloop:
-	and	x12, x16, PAGE_MASK		/* x12 = addr */
-	/* Test the entry flags. */
-.Ltest_source:
-	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
-
-	/* Invalidate dest page to PoC. */
-	mov     x2, x13
-	add     x20, x2, #PAGE_SIZE
-	sub     x1, x15, #1
-	bic     x2, x2, x1
-2:	dc      ivac, x2
-	add     x2, x2, x15
-	cmp     x2, x20
-	b.lo    2b
-	dsb     sy
-
-	copy_page x13, x12, x1, x2, x3, x4, x5, x6, x7, x8
-	b	.Lnext
-.Ltest_indirection:
-	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-	mov	x14, x12			/* ptr = addr */
-	b	.Lnext
-.Ltest_destination:
-	tbz	x16, IND_DESTINATION_BIT, .Lnext
-	mov	x13, x12			/* dest = addr */
-.Lnext:
-	ldr	x16, [x14], #8			/* entry = *ptr++ */
-	tbz	x16, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
-.Ldone:
-	/* wait for writes from copy_page to finish */
-	dsb	nsh
-	ic	iallu
-	dsb	nsh
-	isb
-
-	/* Start new image. */
-	ldr	x4, [x0, #KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
+	turn_off_mmu sctlr_el2, x1, x2		/* Turn off MMU at EL2 */
+1:	mov	x20, xzr			/* x20 will hold vector value */
+	ldr	x11, [x0, #KRELOC_COPY_LEN]
+	cbz	x11, 5f				/* Check if need to relocate */
+	ldr	x20, [x0, #KRELOC_EL2_VECTOR]
+	cbz	x20, 2f				/* need to reduce to EL1? */
+	msr	vbar_el2, x20			/* el2_vector present, means */
+	adr	x1, 2f				/* we will do copy in el1 but */
+	msr	elr_el2, x1			/* do final jump from el2 */
+	eret					/* Reduce to EL1 */
+2:	set_ttbr x0, x1				/* Set our page tables */
+	tlb_invalidate
+	turn_on_mmu sctlr_el1, x1, x2		/* Turn MMU back on */
+	ldr	x1, [x0, #KRELOC_DST_ADDR];
+	ldr	x2, [x0, #KRELOC_SRC_ADDR];
+	mov	x12, x1				/* x12 dst backup */
+3:	copy_page x1, x2, x3, x4, x5, x6, x7, x8, x9, x10
+	sub	x11, x11, #PAGE_SIZE
+	cbnz	x11, 3b				/* page copy loop */
+	raw_dcache_line_size x2, x3		/* x2 = dcache line size */
+	sub	x3, x2, #1			/* x3 = dcache_size - 1 */
+	bic	x12, x12, x3
+4:	dc	cvau, x12			/* Flush D-cache */
+	add	x12, x12, x2
+	cmp	x12, x1				/* Compare to dst + len */
+	b.ne	4b				/* D-cache flush loop */
+	turn_off_mmu sctlr_el1, x1, x2		/* Turn off MMU */
+	tlb_invalidate				/* Invalidate TLB */
+5:	ldr	x4, [x0, #KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
 	ldr	x3, [x0, #KRELOC_KERN_ARG3]
 	ldr	x2, [x0, #KRELOC_KERN_ARG2]
 	ldr	x1, [x0, #KRELOC_KERN_ARG1]
 	ldr	x0, [x0, #KRELOC_KERN_ARG0]	/* x0 = dtb address */
-	br	x4
+	cbnz	x20, 6f				/* need to escalate to el2? */
+	br	x4				/* Jump to new world */
+6:	hvc	#0				/* enters kexec_el1_sync */
 .ltorg
 .Larm64_relocate_new_kernel_end:
 END(arm64_relocate_new_kernel)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
