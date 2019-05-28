Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025192CB47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqIAx03yhK0bY8L4esU6MKh5IXHSS1jiYvgXGB2bzoM=; b=pA5hSIb5jg47iR
	rx7BU0dxDbcxGT25ZGIACEFzbbRidmJJ9WURnrBAw7WIqe+HYyh+92FI5qunva1nzAt+ZIGqFdRel
	tk6c9jJ9fW+3ww0k7xFNpvcLVphw0gDS+4b4cwXTjLvh4fYa2D624REJwv0S1nCYcjy3w+CgWm/Ka
	Ni264NNZvcfyArrnTkijS6XIBzyM8/cq/E6JVohHnYW1VPBydx3qJYz+Ewj+Ri/8Bw22mTlzvLJwZ
	0VQ6h+U0aoNBvwIfYH9sIrsikKlBg/PxbDEBB5y5lZcFvUx/dNPbkvgnEeMDm0xWXjhZrkAf9Q4RN
	rolbdgynIiOOns74FpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVehx-0005s9-IN; Tue, 28 May 2019 16:12:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegp-0004hg-HB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:11:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 625FB169E;
 Tue, 28 May 2019 09:11:03 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E154A3F59C;
 Tue, 28 May 2019 09:11:01 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/12] arm64: mm: Logic to make offset_ttbr1 conditional
Date: Tue, 28 May 2019 17:10:22 +0100
Message-Id: <20190528161026.13193-9-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091103_886792_5AAF49B0 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When running with a 52-bit userspace VA and a 48-bit kernel VA we offset
ttbr1_el1 to allow the kernel pagetables with a 52-bit PTRS_PER_PGD to
be used for both userspace and kernel.

Moving on to a 52-bit kernel VA we no longer require this offset to
ttbr1_el1 should we be running on a system with HW support for 52-bit
VAs.

This patch introduces alternative logic to offset_ttbr1 and expands out
the very early case in head.S. We need to use the alternative framework
as offset_ttbr1 is used in places in the kernel where it is not possible
to safely adrp address kernel constants (such as the kpti paths); thus
code patching is the safer route.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/assembler.h | 10 +++++++++-
 arch/arm64/include/asm/cpucaps.h   |  3 ++-
 arch/arm64/kernel/cpufeature.c     | 18 ++++++++++++++++++
 arch/arm64/kernel/head.S           | 14 +++++++++++++-
 arch/arm64/kernel/hibernate-asm.S  |  1 +
 5 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 039fbd822ec6..a42c392ed1e1 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -548,6 +548,14 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 	.macro	offset_ttbr1, ttbr
 #ifdef CONFIG_ARM64_USER_VA_BITS_52
 	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
+#endif
+
+#ifdef CONFIG_ARM64_USER_KERNEL_VA_BITS_52
+alternative_if_not ARM64_HAS_52BIT_VA
+	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
+alternative_else
+	nop
+alternative_endif
 #endif
 	.endm
 
@@ -557,7 +565,7 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * to be nop'ed out when dealing with 52-bit kernel VAs.
  */
 	.macro	restore_ttbr1, ttbr
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#if defined(CONFIG_ARM64_USER_VA_BITS_52) || defined(CONFIG_ARM64_KERNEL_VA_BITS_52)
 	bic	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
 #endif
 	.endm
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index defdc67d9ab4..b317b8761744 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -62,7 +62,8 @@
 #define ARM64_HAS_GENERIC_AUTH_IMP_DEF		41
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
+#define ARM64_HAS_52BIT_VA			44
 
-#define ARM64_NCAPS				44
+#define ARM64_NCAPS				45
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index ca27e08e3d8a..f9d8a5c8d8ce 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -957,6 +957,16 @@ has_useable_cnp(const struct arm64_cpu_capabilities *entry, int scope)
 	return has_cpuid_feature(entry, scope);
 }
 
+#ifdef CONFIG_ARM64_USER_KERNEL_VA_BITS_52
+extern u64 vabits_actual;
+static bool __maybe_unused
+has_52bit_kernel_va(const struct arm64_cpu_capabilities *entry, int scope)
+{
+	return vabits_actual == 52;
+}
+
+#endif /* CONFIG_ARM64_USER_KERNEL_VA_BITS_52 */
+
 static bool __meltdown_safe = true;
 static int __kpti_forced; /* 0: not forced, >0: forced on, <0: forced off */
 
@@ -1558,6 +1568,14 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = 1,
 	},
 #endif
+#ifdef CONFIG_ARM64_USER_KERNEL_VA_BITS_52
+	{
+		.desc = "52-bit kernel VA",
+		.capability = ARM64_HAS_52BIT_VA,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_52bit_kernel_va,
+	},
+#endif /* CONFIG_ARM64_USER_KERNEL_VA_BITS_52 */
 	{},
 };
 
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index b3335e639b6d..8bc1b533a912 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -788,7 +788,19 @@ ENTRY(__enable_mmu)
 	phys_to_ttbr x1, x1
 	phys_to_ttbr x2, x2
 	msr	ttbr0_el1, x2			// load TTBR0
-	offset_ttbr1 x1
+
+#if defined(CONFIG_ARM64_USER_VA_BITS_52)
+	orr     x1, x1, #TTBR1_BADDR_4852_OFFSET
+#endif
+
+#if defined(CONFIG_ARM64_USER_KERNEL_VA_BITS_52)
+	ldr_l	x3, vabits_actual
+	cmp	x3, #52
+	b.eq	1f
+	orr     x1, x1, #TTBR1_BADDR_4852_OFFSET
+1:
+#endif
+
 	msr	ttbr1_el1, x1			// load TTBR1
 	isb
 	msr	sctlr_el1, x0
diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
index fe36d85c60bd..d32725a2b77f 100644
--- a/arch/arm64/kernel/hibernate-asm.S
+++ b/arch/arm64/kernel/hibernate-asm.S
@@ -19,6 +19,7 @@
 #include <linux/linkage.h>
 #include <linux/errno.h>
 
+#include <asm/alternative.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/cputype.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
