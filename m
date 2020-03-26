Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA2D193714
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPcq3PseI7RkuU7THYHFoVAFYpku7kYDKeCCSTmdHns=; b=iWeHsJc444Lu+f
	x5jOYDd1nOLuZ/qmV6M08n4T0r0dIJiPaqk5yUjl3ucvQokYaX5L06VKTbkWYQaetgo0GvE8GwcD4
	QtjsFihBE9gNglImAXO9sRFRaZPDzpFb6NpDbP8mk95YvbszPvPKkXCYcEXH7u1P9mVtgtmD1ww3u
	RaVevXdvp+/Vmfbk0nn6EHPy73uOK6OLo5EBioaQkGLZ73vhnyYl9DvkRtWq/MDtGzpqHWlbUVb+q
	bxBuF3pXWSTC1+ivq53s39dx+Xdhy7ZjVobBUYVUGqcvWxMJMews8qvG0Jcx+vffAgZpld2d91Via
	s2MmQQn1Ojbd3kAB6tOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJFw-0004H5-V5; Thu, 26 Mar 2020 03:32:33 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8U-0004r4-Ln
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:59 +0000
Received: by mail-qk1-x741.google.com with SMTP id h14so5106546qke.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=rP301br3jLV2pUSTiXcOG3lk/+mfTC6rfo7zV+g52uE=;
 b=SzpG8sLRK43gB03wiBjaqURB25QH24to71FZC+cBWqLbQmoXfEZPD1WOWSfQR/1gxb
 E0qr9rjv8lKfW1SZyTS+U3Z+Q05ieRm2vqlN0HYUTm/w2f+sGKWeF8IfFcWyhDHIvrn2
 u5E6vJMrPy1kmMGG00eioArrNW4Ij97gj1ZItasBymsaR+MS1bmC/tw58X3X7i60yK/7
 JsAmx2qXgqlhZZ3CYRdKAN4QLkMKyMGPxxrXuev3OGl3QUKwu4D/6bj/uRuwOM0KRuyp
 KHi1hAboB0XKc1WQWLSLoK73jsKCDOyxzHhjpNiX/KoYCC7WvueepeunrlcnUL+tt8Gt
 LTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=rP301br3jLV2pUSTiXcOG3lk/+mfTC6rfo7zV+g52uE=;
 b=fIVHwtqllhXqgs4z+YLAXKgzzDVfc0W5hIsbR6LjDE123HQjKba9gaCgdNJRENxiwI
 HYwxd4rvD/6ZH44wEgmWqHwhZ5P9BdVxRTqaUSk0J6ouyrUQ8J3hR/PrQDnvy/l0u9kl
 D5cYyed4MsTXQZoDOeE+2UodsXzCfRBRoiWi22tY497H9yz9VLedSKsW7offhBfi+Pw8
 mlxNQQjBQaCePvGYW8aBkGdt80qAFygpbqdzIrf4jsKSoiEIn3iwEfTH2yg0CDJdUJIc
 mWu2JkiS56EoioDg7XrObgc918JeZSqt6nzrd31hAIXy2oJMvLO7dnfwlHKn3QYnzJxH
 oarA==
X-Gm-Message-State: ANhLgQ0l/iEOLQbBH+OVl6WCoU/bqLvnx2oKk3vQercYYSHFR7OzWIBT
 Z4u3ICwaW6UzwD7AlEJ0/wYfPA==
X-Google-Smtp-Source: ADFU+vt/3OwGi00Krey3I6+4YSIATchoONx/f4HuqDlk6oplG5GN05ZeuCyfndKbFky+5rkucArSNg==
X-Received: by 2002:a05:620a:1252:: with SMTP id
 a18mr6235906qkl.204.1585193089294; 
 Wed, 25 Mar 2020 20:24:49 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:48 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 17/18] arm64: kexec: enable MMU during kexec relocation
Date: Wed, 25 Mar 2020 23:24:19 -0400
Message-Id: <20200326032420.27220-18-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202450_873882_742F7F12 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
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

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/relocate_kernel.S | 144 ++++++++++++++++++----------
 1 file changed, 92 insertions(+), 52 deletions(-)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 6fd2fc0ef373..430e7512ced5 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -4,6 +4,8 @@
  *
  * Copyright (C) Linaro.
  * Copyright (C) Huawei Futurewei Technologies.
+ * Copyright (c) 2020, Microsoft Corporation.
+ * Pavel Tatashin <pasha.tatashin@soleen.com>
  */
 
 #include <linux/kexec.h>
@@ -16,6 +18,56 @@
 
 .globl kexec_relocate_code_start
 kexec_relocate_code_start:
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
+.macro set_ttbr arg, tmp1, tmp2
+	ldr	\tmp1, [\arg, #KEXEC_KRELOC_TRANS_TTBR0]
+	msr	ttbr0_el1, \tmp1
+	ldr	\tmp1, [\arg, #KEXEC_KRELOC_TRANS_TTBR1]
+	offset_ttbr1 \tmp1, \tmp2
+	msr	ttbr1_el1, \tmp1
+	isb
+.endm
+
+/* Set T0SZ to match the requirements of idmap page */
+.macro set_tcr_t0sz arg, tmp1, tmp2
+	ldr	\tmp2, [\arg, #KEXEC_KRELOC_TRANS_T0SZ]
+	mrs	\tmp1, tcr_el1
+	bfi     \tmp1, \tmp2, TCR_T0SZ_OFFSET, TCR_TxSZ_WIDTH
+	msr	tcr_el1, \tmp1
+.endm
 
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
@@ -27,65 +79,53 @@ kexec_relocate_code_start:
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
-	ldr	x16, [x0, #KEXEC_KRELOC_HEAD]	/* x16 = kimage_head */
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
-	ldr	x4, [x0, #KEXEC_KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
+	turn_off_mmu sctlr_el2, x1, x2		/* Turn off MMU at EL2 */
+1:	mov	x20, xzr			/* x20 will hold vector value */
+	ldr	x11, [x0, #KEXEC_KRELOC_COPY_LEN]
+	cbz	x11, 5f				/* Check if need to relocate */
+	ldr	x20, [x0, #KEXEC_KRELOC_EL2_VECTOR]
+	cbz	x20, 2f				/* need to reduce to EL1? */
+	msr	vbar_el2, x20			/* el2_vector present, means */
+	adr	x1, 2f				/* we will do copy in el1 but */
+	msr	elr_el2, x1			/* do final jump from el2 */
+	eret					/* Reduce to EL1 */
+2:	set_tcr_t0sz x0, x1, x2			/* Set t0sz for idmaped page */
+	set_ttbr x0, x1, x2			/* Set our page tables */
+	tlb_invalidate
+	ldr	x1, [x0, #KEXEC_KRELOC_DST_ADDR]; /* arg is not idmapped so */
+	ldr	x2, [x0, #KEXEC_KRELOC_SRC_ADDR]; /* read before MMU is on */
+	turn_on_mmu sctlr_el1, x3, x4		/* Turn MMU back on */
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
+5:	ldr	x4, [x0, #KEXEC_KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
 	ldr	x3, [x0, #KEXEC_KRELOC_KERN_ARG3]
 	ldr	x2, [x0, #KEXEC_KRELOC_KERN_ARG2]
 	ldr	x1, [x0, #KEXEC_KRELOC_KERN_ARG1]
 	ldr	x0, [x0, #KEXEC_KRELOC_KERN_ARG0]	/* x0 = dtb address */
-	br	x4
+	cbnz	x20, 6f				/* need to escalate to el2? */
+	br	x4				/* Jump to new world */
+6:	hvc	#0				/* enters kexec_el1_sync */
 .ltorg
 END(arm64_relocate_new_kernel)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
