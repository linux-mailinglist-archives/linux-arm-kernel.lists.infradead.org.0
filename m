Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D02D7C714
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qpRc4nlmMCkl7zU+six0JEm+/520Y+jaFK9UfTMOrg=; b=uZEeusR4XvMt08
	KoQm9arueJ1MU2WQ6bwkXa7/lcILPgX2/omVNyhuiD+z5F/V35ecgfv5DZrBflb9xKvcnNOdveJi8
	usCmelXBfaIpEw9gVc6tXCU1br/lB0LY7q1gDyr99MlF5fNjNtFSHgcx0Ljpzt7VvNxwcGhGWolgS
	168PeGqq8UU/OMygMPX9AbvHzFpgq30+y14ijKBi2f7mTkWLXp27UXwsa8LPVpjAUVmbbOeMWwqAU
	mBocdr/Xf7bjKkvZb0dpjxglX2ArEIue3t6It4rOWwEE+8p8ggZh9XHdZpwVHTY6991QwRmRCBLfN
	T3MMrdVlgj19JtjX8Paw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqj6-0002k8-IJ; Wed, 31 Jul 2019 15:41:16 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqh5-0007s0-Ac
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:39:14 +0000
Received: by mail-qk1-x742.google.com with SMTP id m14so23880862qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XYehKYYCRESHDl9g5m8hoNiorXJBXUwWGYZzf/xkBeE=;
 b=iBD+3oi2nGxdZcxkvKa50mV2lsj6z6x2B6Hz5KjNL2N9LvtXwsP75YXDODriDCfRGa
 Zav5gYJ8SRdJ2N/7hFq/MVQnkAwOwsE1OgIXhjXNOc8X7icudW4owNOg3v2i44o58U42
 8hYwd+m39OKSz88CxJ//EqNRR1+avPGlMP1maR8dr+y/IXFIGPNJpn3MOTIAUEhRzBfK
 9hJ8A630GhQ0UQLsndGaACUuca+uAGD0Bml8mH5vWBdb7u+hu0Zlgho+0+i6qa6k0fAi
 nNiRQ7fcADFmkpBUCqhwHi3wcVxaDvXuNjYxDWa9tjdr7Z1HIVJVjZ4hUkXZwro+Aooa
 5qZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XYehKYYCRESHDl9g5m8hoNiorXJBXUwWGYZzf/xkBeE=;
 b=YSKyJCRk/sn692yKDV7jc1gn9h3LnqEDIKThO78VkZy5V07Jxiu3MrWF3exEZAAo/F
 g9UQY8UR0tcX4rrxUc3zhaTGB2GKxLo2LicItbYZg4Q+lapUbYqIquv6YEisssZOjFDE
 PeRTkwr/jJfm4RAGo2zqUUiDTG1p2uwTXDfQT8WfxOz0TfYjiuU3+UXf91930IQgb3CE
 R5xXr+MGe0kyh2OJ5eD/gqxqeaZaO3OV2zlojsCxW2P5aaWH3sXEDlsWUxEO7xN9kccs
 s+qk0L1h8Cukn8HjcI+Pbg+/aUEPfV7Z0okfsyvkEMm1DfwR20ZvGCD6zjRHUQM3tY6s
 w2hQ==
X-Gm-Message-State: APjAAAVyXoy0MAR50OiJwOEvs05qxjkLZSEjwhHXSY1Jx3yKkImH/UIk
 LZjvuRipxtMklOb80TV3k48=
X-Google-Smtp-Source: APXvYqw42qjGXDZoiPLqtufyjBZBkOjr1xdQbWaU20wZzak05OCxDaGez2/WsRBm3vcjtAjblizKLA==
X-Received: by 2002:a37:8ac3:: with SMTP id
 m186mr62365455qkd.476.1564587550167; 
 Wed, 31 Jul 2019 08:39:10 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.39.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:09 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 8/8] arm64, kexec: enable MMU during kexec relocation
Date: Wed, 31 Jul 2019 11:38:57 -0400
Message-Id: <20190731153857.4045-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083911_454849_E4534082 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/relocate_kernel.S | 192 ++++++++++++++++++++++------
 1 file changed, 154 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index d352faf7cbe6..88fc69adb90d 100644
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
@@ -13,6 +15,130 @@
 #include <asm/kexec.h>
 #include <asm/page.h>
 #include <asm/sysreg.h>
+#include <asm/kvm_arm.h>
+
+/*
+ * The following code is adoped from "Bare-metal Boot Code for ARMv8-A
+ * Processors Version 1.0, 5.3.1 Cleaning and invalidating the caches".
+ * http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dai0527a
+ */
+.macro dcache_invalidate tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8
+	mov	\tmp0, #0x0			/* tmp0 = Cache level */
+	msr	CSSELR_EL1, \tmp0		/* 0x0 for L1, 0x2 for L2 */
+	mrs	\tmp4, CCSIDR_EL1		/* Read Cache Size ID */
+	and	\tmp1, \tmp4, #0x7
+	add	\tmp1, \tmp1, #0x4		/* tmp1 Cache Line Size */
+	ldr	\tmp3, =0x7fff
+	and	\tmp2, \tmp3, \tmp4, lsr #13	/* tmp2 Cache Set num - 1 */
+	ldr	\tmp3, =0x3ff
+	and	\tmp3, \tmp3, \tmp4, lsr #3	/* tmp3 Cache Assoc. num - 1 */
+	clz	\tmp4, \tmp3			/* tmp4 way pos. in the CISW */
+	mov	\tmp5, #0			/* tmp5 way counter way_loop */
+1: /* way_loop */
+	mov	\tmp6, #0			/* tmp6 set counter set_loop */
+2: /* set_loop */
+	lsl	\tmp7, \tmp5, \tmp4
+	orr	\tmp7, \tmp0, \tmp7		/* Set way */
+	lsl	\tmp8, \tmp6, \tmp1
+	orr	\tmp7, \tmp7, \tmp8		/* Set set */
+	dc	cisw, \tmp7			/* Clean & Inval. cache line */
+	add	\tmp6, \tmp6, #1		/* Increment set counter */
+	cmp	\tmp6, \tmp2			/* Last set reached yet? */
+	ble	2b				/* If not, iterate set_loop, */
+	add	\tmp5, \tmp5, #1		/* else, next way. */
+	cmp	\tmp5, \tmp3			/* Last way reached yet? */
+	ble	1b				/* If not, iterate way_loop. */
+.endm
+
+/*
+ * Invalidae all TLB: if we are running at EL2, invalidate all TLB at EL1 & EL2,
+ * if we are running at EL1 invalidate all current VMID TLB at EL1.
+ */
+.macro tlb_invalidate tmp
+	mrs	\tmp, CurrentEL
+	cmp	\tmp, #CurrentEL_EL2
+	isb
+	b.ne	1f
+	dsb	sy
+	tlbi	alle2
+	tlbi	alle1
+	dsb	ish
+	isb
+	b	2f
+1:
+	dsb	sy
+	tlbi	vmalle1
+	dsb	ish
+	isb
+2:
+.endm
+
+.macro turn_off_mmu_el	sctlr, tmp1, tmp2
+	mrs	\tmp1, \sctlr
+	ldr	\tmp2, =SCTLR_ELx_FLAGS
+	bic	\tmp1, \tmp1, \tmp2
+	pre_disable_mmu_workaround
+	msr	\sctlr, \tmp1
+	isb
+.endm
+
+.macro turn_off_mmu tmp1, tmp2
+	turn_off_mmu_el	sctlr_el1, \tmp1, \tmp2	/* Turn off MMU at EL1 */
+	mrs	\tmp1, CurrentEL
+	cmp	\tmp1, #CurrentEL_EL2
+	b.ne	1f
+	turn_off_mmu_el	sctlr_el2, \tmp1, \tmp2	/* Turn off MMU at EL2 */
+1:
+.endm
+
+/* Configure TCR_EL2 and MAIR_EL2 */
+.macro tcr_mair_mmu_el2 tmp1, tmp2, tmp3
+	mrs	\tmp1, tcr_el1
+	ldr	\tmp2, =TCR_EL2_MASK
+	and	\tmp1, \tmp1, \tmp2
+	mov	\tmp2, #TCR_EL2_RES1
+	orr	\tmp1, \tmp1, \tmp2
+	ldr	\tmp2, =TCR_T0SZ(VA_BITS)
+	orr	\tmp1, \tmp1, \tmp2
+	tcr_compute_pa_size \tmp1, #TCR_EL2_PS_SHIFT, \tmp2, \tmp3
+	msr	tcr_el2, \tmp1
+	mrs	\tmp1, mair_el1
+	msr	mair_el2, \tmp1
+.endm
+
+.macro turn_on_mmu tmp1, tmp2, tmp3
+	mrs	\tmp1, CurrentEL
+	cmp	\tmp1, #CurrentEL_EL2
+	b.ne	1f
+	tcr_mair_mmu_el2 \tmp1, \tmp2, \tmp3
+	ldr	\tmp1, =(SCTLR_EL2_RES1 | SCTLR_ELx_FLAGS | ENDIAN_SET_EL2)
+	msr	sctlr_el2, \tmp1
+	b	2f
+1:	mrs	\tmp1, sctlr_el1
+	ldr	\tmp2, =SCTLR_ELx_FLAGS
+	orr	\tmp1, \tmp1, \tmp2
+	msr	sctlr_el1, \tmp1
+2:	ic	iallu
+	dsb	nsh
+	isb
+.endm
+
+.macro set_ttbr_el ttbr_reg, trans_table
+	phys_to_ttbr \trans_table, \trans_table
+	msr	\ttbr_reg, \trans_table
+	isb
+.endm
+
+.macro set_ttbr trans_table, tmp
+	mrs	\tmp, CurrentEL
+	cmp	\tmp, #CurrentEL_EL2
+	b.ne	1f
+	set_ttbr_el	ttbr0_el2 \trans_table
+	b	2f
+1:
+	set_ttbr_el	ttbr0_el1 \trans_table
+2:
+.endm
 
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
@@ -24,59 +150,49 @@
  * symbols arm64_relocate_new_kernel and arm64_relocate_new_kernel_end.  The
  * machine_kexec() routine will copy arm64_relocate_new_kernel to the kexec
  * safe memory that has been set up to be preserved during the copy operation.
+ *
+ * This function temporarily enables MMU if kernel relocation is needed. This is
+ * done for performance reasons: with MMU-enabled arm64 is much quicker at
+ * copying pages due to also having enabled caching.
  */
 ENTRY(arm64_relocate_new_kernel)
-	/* Clear the sctlr_el2 flags. */
-	mrs	x2, CurrentEL
-	cmp	x2, #CurrentEL_EL2
-	b.ne	1f
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
+	/* MMU on EL2 might still be on, turn it off for now */
+	turn_off_mmu	x1, x2
+	dcache_invalidate x1, x2, x3, x4, x5, x6, x7, x8, x9
+	tlb_invalidate x1
+
+	/* Check if the new image needs relocation. */
+	ldr	x12, [x0, #KRELOC_HEAD]		/* x12 = kimage_head */
+	tbnz	x12, IND_DONE_BIT, .Ldone
+	ldr	x1, [x0, #KRELOC_TRANS_TABLE]
+	set_ttbr x1, x2
+	turn_on_mmu x1, x2, x3
 .Lloop:
-	and	x12, x16, PAGE_MASK		/* x12 = addr */
+	and	x2, x12, PAGE_MASK		/* x2 = addr */
 	/* Test the entry flags. */
 .Ltest_source:
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
+	tbz	x12, IND_SOURCE_BIT, .Ltest_indirection
+	copy_page x1, x2, x3, x4, x5, x6, x7, x8, x9, x10
 	b	.Lnext
 .Ltest_indirection:
-	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-	mov	x14, x12			/* ptr = addr */
+	tbz	x12, IND_INDIRECTION_BIT, .Ltest_destination
+	mov	x11, x2				/* x11 = ptr */
 	b	.Lnext
 .Ltest_destination:
-	tbz	x16, IND_DESTINATION_BIT, .Lnext
-	mov	x13, x12			/* dest = addr */
+	tbz	x12, IND_DESTINATION_BIT, .Lnext
+	mov	x1, x2				/* x1 = dest */
 .Lnext:
-	ldr	x16, [x14], #8			/* entry = *ptr++ */
-	tbz	x16, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
-.Ldone:
+	ldr	x12, [x11], #8			/* x12 = entry = *ptr++ */
+	tbz	x12, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
 	/* wait for writes from copy_page to finish */
 	dsb	nsh
 	ic	iallu
 	dsb	nsh
 	isb
-
-	/* Start new image. */
+	turn_off_mmu	x1, x2
+	dcache_invalidate x1, x2, x3, x4, x5, x6, x7, x8, x9
+	tlb_invalidate x1
+.Ldone:	/* Start new image. */
 	ldr	x4, [x0, #KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
 	ldr	x3, [x0, #KRELOC_KERN_ARG3]
 	ldr	x2, [x0, #KRELOC_KERN_ARG2]
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
