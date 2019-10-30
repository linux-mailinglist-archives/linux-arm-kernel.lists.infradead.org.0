Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E61E9683
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 07:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7JQZbTkCBgPMQJIhEsnvkyX6EFZzZ7DKLtKHmaQ8heo=; b=Js7Ic6cvdstmaI
	mudKVZ0F+LK2v22iyzFeHULYyelVNvavewQrBfM7Hauth6YE2XJ/ONI6k/WVeQLb/U6TmYfpTxD0Y
	xBh2MpANUDIAjJcHRo0yZ+5dCgLUiivVfZTb7Rf7L2geHHRcA7RN+zsLqZFAb8Xd7Tmz2DGOLCHTE
	O+ZjGtVBU0EL3zb4QsjYkLu1eBfnv+dcsbqFoeh2c1nwSJoKyDbav/4/+0GzF1R8HsCuHTnsZl1/i
	AW/gLU7MxigoL5KiOblTs4s7aB7C5s8JyJQ1ffJQFb5LhN8KUf8aZ/qMKvOh0egaRfmuAtUDjxLH6
	YNlD/HZ/2Co0c6rFZWSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPhfZ-00062X-NK; Wed, 30 Oct 2019 06:41:25 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPhfQ-00061s-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 06:41:18 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 55E4C2DE5344E65999DB;
 Wed, 30 Oct 2019 14:41:10 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Wed, 30 Oct 2019 14:41:02 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [RFC] arm64: cpufeatures: Add support for tlbi range maintenance
Date: Wed, 30 Oct 2019 14:41:25 +0800
Message-ID: <1572417685-32955-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_234116_532139_5ADC8759 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Tangnianyao <tangnianyao@huawei.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tangnianyao <tangnianyao@huawei.com>

ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
range of input addresses. This patch adds support for this feature.
And provide another implementation for flush_tlb_range with tlbi
range instruction.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org> 
Cc: Marc Zyngier <maz@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Tangnianyao <tangnianyao@huawei.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
For ARMv8.4-TLBI TLB range instructions, it needs binutils which
shall be 2.30 or later version.

 arch/arm64/include/asm/cpucaps.h  |  3 +-
 arch/arm64/include/asm/sysreg.h   |  5 +++
 arch/arm64/include/asm/tlbflush.h | 75 ++++++++++++++++++++++++++++++++++++++-
 arch/arm64/kernel/cpufeature.c    | 10 ++++++
 4 files changed, 91 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index ac1dbca3d0cd..2f88725263d2 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -54,7 +54,8 @@
 #define ARM64_WORKAROUND_1463225		44
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
+#define ARM64_HAS_TLBI_EXT			47
 
-#define ARM64_NCAPS				47
+#define ARM64_NCAPS				48
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fafb43d..cfb7551ea37d 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -539,6 +539,7 @@
 			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
 
 /* id_aa64isar0 */
+#define ID_AA64ISAR0_TLB_SHIFT		56
 #define ID_AA64ISAR0_TS_SHIFT		52
 #define ID_AA64ISAR0_FHM_SHIFT		48
 #define ID_AA64ISAR0_DP_SHIFT		44
@@ -552,6 +553,10 @@
 #define ID_AA64ISAR0_SHA1_SHIFT		8
 #define ID_AA64ISAR0_AES_SHIFT		4
 
+#define ID_AA64ISAR0_TLB_NI		0
+#define ID_AA64ISAR0_TLB_OS		1
+#define ID_AA64ISAR0_TLB_OS_RANGE	2
+
 /* id_aa64isar1 */
 #define ID_AA64ISAR1_SB_SHIFT		36
 #define ID_AA64ISAR1_FRINTTS_SHIFT	32
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bc3949064725..c4ece64aa500 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -59,6 +59,27 @@
 		__ta;						\
 	})
 
+/* This macro creates a properly formatted VA operand for the TLBI extension*/
+#define __TLBI_VADDR_EXT(addr, asid, tg, scale, num, ttl)	\
+	({							\
+		unsigned long __ta = (addr) >> 12;		\
+		__ta &= GENMASK_ULL(43, 0);			\
+		__ta |= (unsigned long)(asid) << 48;		\
+		__ta |= (unsigned long)(tg) << 46;		\
+		__ta |= (unsigned long)(scale) << 44;		\
+		__ta |= (unsigned long)(num) << 39;		\
+		__ta |= (unsigned long)(ttl) << 37;		\
+		__ta;						\
+	})
+
+#ifdef CONFIG_ARM64_64K_PAGES
+#define TLBI_TG_FLAGS	UL(1)
+#elif defined(CONFIG_ARM64_16K_PAGES)
+#define TLBI_TG_FLAGS	UL(2)
+#else /* CONFIG_ARM64_4K_PAGES */
+#define TLBI_TG_FLAGS	UL(0)
+#endif
+
 /*
  *	TLB Invalidation
  *	================
@@ -211,6 +232,55 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	dsb(ish);
 }
 
+static inline void __flush_tlb_range_ext(struct vm_area_struct *vma,
+				     unsigned long start, unsigned long end,
+				     unsigned long stride, bool last_level)
+{
+	unsigned long asid = ASID(vma->vm_mm);
+	unsigned long addr;
+	unsigned long scale;
+	unsigned long num;
+	unsigned long range;
+	unsigned long unit_shift;
+
+	start = round_down(start, stride);
+	end = round_up(end, stride);
+
+	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
+		flush_tlb_mm(vma->vm_mm);
+		return;
+	}
+
+	/* Convert the stride into units of 4k */
+	stride >>= 12;
+
+	start = __TLBI_VADDR(start, asid);
+	end = __TLBI_VADDR(end, asid);
+
+	range = ((end - start) >> (PAGE_SHIFT + 5));
+	scale = 0;
+	while (range) {
+		range = (range >> 5);
+		scale++;
+	}
+
+	unit_shift = PAGE_SHIFT + 5*scale + 1;
+	num = DIV_ROUND_UP(end-start, BIT(unit_shift)) - 1;
+	addr = start;
+	__TLBI_VADDR_EXT(addr, asid, TLBI_TG_FLAGS,
+			scale, num, 0);
+
+	dsb(ishst);
+	if (last_level) {
+		__tlbi(rvale1is, addr);
+		__tlbi_user(rvale1is, addr);
+	} else {
+		__tlbi(rvae1is, addr);
+		__tlbi_user(rvae1is, addr);
+	}
+	dsb(ish);
+}
+
 static inline void flush_tlb_range(struct vm_area_struct *vma,
 				   unsigned long start, unsigned long end)
 {
@@ -218,7 +288,10 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
 	 * We cannot use leaf-only invalidation here, since we may be invalidating
 	 * table entries as part of collapsing hugepages or moving page tables.
 	 */
-	__flush_tlb_range(vma, start, end, PAGE_SIZE, false);
+	if (!preemptible() && this_cpu_has_cap(ARM64_HAS_TLBI_EXT))
+		__flush_tlb_range_ext(vma, start, end, PAGE_SIZE, false);
+	else
+		__flush_tlb_range(vma, start, end, PAGE_SIZE, false);
 }
 
 static inline void flush_tlb_kernel_range(unsigned long start, unsigned long end)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 80f459ad0190..a0aaab3f7fd5 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1566,6 +1566,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = 1,
 	},
 #endif
+	{
+		.desc = "TLB maintenance and TLB range instructions",
+		.capability = ARM64_HAS_TLBI_EXT,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_cpuid_feature,
+		.sys_reg = SYS_ID_AA64ISAR0_EL1,
+		.field_pos = ID_AA64ISAR0_TLB_SHIFT,
+		.sign = FTR_UNSIGNED,
+		.min_field_value = ID_AA64ISAR0_TLB_NI,
+	},
 	{},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
