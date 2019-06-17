Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFAF48573
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm3qvjeLJvnEzgsj5qi4JAdDZMQipkIyvxlGPs4U4pQ=; b=joz5pLpvnlKixV
	y6cYwJge2C+UUFm9AYk8fv6ei1hUXBTBGpuuyQpooTnlEgPQAiOZoZj0OU6CsHrn0ijKxcBdkRcJ3
	CsBBGii68sy9uKw54Pa/XC58/jdtdnk/g0pDu/1iN104BgbKe49JdIkh5fogt8+4E0e/OuFdlZ8iL
	i3A4PHahc04xenmaLPzpvwbRSUkPbN3mpXPxPW/0Ag+9EqaglC18C43yXjYkITFDxJfMMmSH6I0MV
	NcCan+5nYtNdvhs1Y86wPENsI1YA0Cs+5CxEw8U+TvCQBXgbi4ciiZrQXWhdU5a/Z2KKec5YiT4gT
	TYZCviTBXiXh6nVBDV/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcshb-00042c-VA; Mon, 17 Jun 2019 14:33:43 +0000
Received: from mgwkm04.jp.fujitsu.com ([202.219.69.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcshG-00040j-9G
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:33:28 +0000
Received: from kw-mxq.gw.nic.fujitsu.com (unknown [192.168.231.130]) by
 mgwkm04.jp.fujitsu.com with smtp
 id 2860_a494_dc924cad_517f_447d_b839_0986ff9e295a;
 Mon, 17 Jun 2019 23:32:58 +0900
Received: from g01jpfmpwkw02.exch.g01.fujitsu.local
 (g01jpfmpwkw02.exch.g01.fujitsu.local [10.0.193.56])
 by kw-mxq.gw.nic.fujitsu.com (Postfix) with ESMTP id 33292AC00ED
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 23:32:58 +0900 (JST)
Received: from G01JPEXCHKW15.g01.fujitsu.local
 (G01JPEXCHKW15.g01.fujitsu.local [10.0.194.54])
 by g01jpfmpwkw02.exch.g01.fujitsu.local (Postfix) with ESMTP id 0D6EC8B4904;
 Mon, 17 Jun 2019 23:32:57 +0900 (JST)
Received: from localhost.localdomain (10.17.204.146) by
 G01JPEXCHKW15.g01.fujitsu.local (10.0.194.54) with Microsoft SMTP Server id
 14.3.439.0; Mon, 17 Jun 2019 23:32:55 +0900
From: Takao Indoh <indou.takao@jp.fujitsu.com>
To: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH 2/2] arm64: tlb: Add boot parameter to disable TLB flush
 within the same inner shareable domain
Date: Mon, 17 Jun 2019 23:32:55 +0900
Message-ID: <20190617143255.10462-3-indou.takao@jp.fujitsu.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
MIME-Version: 1.0
X-SecurityPolicyCheck-GC: OK by FENCE-Mail
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_073326_622119_8DEE739F 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.219.69.171 listed in list.dnswl.org]
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
Cc: Takao Indoh <indou.takao@fujitsu.com>, QI Fuli <qi.fuli@fujitsu.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takao Indoh <indou.takao@fujitsu.com>

This patch adds new boot parameter 'disable_tlbflush_is' to disable TLB
flush within the same inner shareable domain for performance tuning.

In the case of flush_tlb_mm() *without* this parameter, TLB entry is
invalidated by __tlbi(aside1is, asid). By this instruction, all CPUs within
the same inner shareable domain check if there are TLB entries which have
this ASID, this causes performance noise, especially at large-scale HPC
environment, which has more than thousand nodes with low latency
interconnect.

When this new parameter is specified, TLB entry is invalidated by
__tlbi(aside1, asid) only on the CPUs specified by mm_cpumask(mm).
Therefore TLB flush is done on minimal CPUs and performance problem does
not occur.

Signed-off-by: QI Fuli <qi.fuli@fujitsu.com>
Signed-off-by: Takao Indoh <indou.takao@fujitsu.com>
---
 .../admin-guide/kernel-parameters.txt         |   4 +
 arch/arm64/include/asm/tlbflush.h             |  61 ++-----
 arch/arm64/kernel/Makefile                    |   2 +-
 arch/arm64/kernel/tlbflush.c                  | 155 ++++++++++++++++++
 4 files changed, 172 insertions(+), 50 deletions(-)
 create mode 100644 arch/arm64/kernel/tlbflush.c

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 138f6664b2e2..a693eea34e48 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -848,6 +848,10 @@
 	disable=	[IPV6]
 			See Documentation/networking/ipv6.txt.
 
+	disable_tlbflush_is
+			[ARM64] Disable using TLB instruction to flush
+			all PE within the same inner shareable domain.
+
 	hardened_usercopy=
                         [KNL] Under CONFIG_HARDENED_USERCOPY, whether
                         hardening is enabled for this boot. Hardened
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index dff8f9ea5754..ba2b3fd0b63c 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -139,6 +139,13 @@
  *	on top of these routines, since that is our interface to the mmu_gather
  *	API as used by munmap() and friends.
  */
+
+void flush_tlb_mm(struct mm_struct *mm);
+void flush_tlb_page_nosync(struct vm_area_struct *vma,
+				unsigned long uaddr);
+void __flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
+		unsigned long end, unsigned long stride, bool last_level);
+
 static inline void local_flush_tlb_all(void)
 {
 	dsb(nshst);
@@ -155,24 +162,14 @@ static inline void flush_tlb_all(void)
 	isb();
 }
 
-static inline void flush_tlb_mm(struct mm_struct *mm)
+static inline void local_flush_tlb_mm(struct mm_struct *mm)
 {
 	unsigned long asid = __TLBI_VADDR(0, ASID(mm));
 
-	dsb(ishst);
-	__tlbi(aside1is, asid);
-	__tlbi_user(aside1is, asid);
-	dsb(ish);
-}
-
-static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
-					 unsigned long uaddr)
-{
-	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
-
-	dsb(ishst);
-	__tlbi(vale1is, addr);
-	__tlbi_user(vale1is, addr);
+	dsb(nshst);
+	__tlbi(aside1, asid);
+	__tlbi_user(aside1, asid);
+	dsb(nsh);
 }
 
 static inline void flush_tlb_page(struct vm_area_struct *vma,
@@ -188,40 +185,6 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
  */
 #define MAX_TLBI_OPS	PTRS_PER_PTE
 
-static inline void __flush_tlb_range(struct vm_area_struct *vma,
-				     unsigned long start, unsigned long end,
-				     unsigned long stride, bool last_level)
-{
-	unsigned long asid = ASID(vma->vm_mm);
-	unsigned long addr;
-
-	start = round_down(start, stride);
-	end = round_up(end, stride);
-
-	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
-		flush_tlb_mm(vma->vm_mm);
-		return;
-	}
-
-	/* Convert the stride into units of 4k */
-	stride >>= 12;
-
-	start = __TLBI_VADDR(start, asid);
-	end = __TLBI_VADDR(end, asid);
-
-	dsb(ishst);
-	for (addr = start; addr < end; addr += stride) {
-		if (last_level) {
-			__tlbi(vale1is, addr);
-			__tlbi_user(vale1is, addr);
-		} else {
-			__tlbi(vae1is, addr);
-			__tlbi_user(vae1is, addr);
-		}
-	}
-	dsb(ish);
-}
-
 static inline void flush_tlb_range(struct vm_area_struct *vma,
 				   unsigned long start, unsigned long end)
 {
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 9e7dcb2c31c7..266c9a57b081 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -19,7 +19,7 @@ obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
 			   return_address.o cpuinfo.o cpu_errata.o		\
 			   cpufeature.o alternative.o cacheinfo.o		\
 			   smp.o smp_spin_table.o topology.o smccc-call.o	\
-			   syscall.o
+			   syscall.o tlbflush.o
 
 extra-$(CONFIG_EFI)			:= efi-entry.o
 
diff --git a/arch/arm64/kernel/tlbflush.c b/arch/arm64/kernel/tlbflush.c
new file mode 100644
index 000000000000..52c9a237759a
--- /dev/null
+++ b/arch/arm64/kernel/tlbflush.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) 2019 FUJITSU LIMITED
+
+#include <linux/smp.h>
+#include <asm/tlbflush.h>
+
+struct tlb_args {
+	struct vm_area_struct *ta_vma;
+	unsigned long ta_start;
+	unsigned long ta_end;
+	unsigned long ta_stride;
+	bool ta_last_level;
+};
+
+int disable_tlbflush_is;
+
+static int __init disable_tlbflush_is_setup(char *str)
+{
+	disable_tlbflush_is = 1;
+
+	return 0;
+}
+__setup("disable_tlbflush_is", disable_tlbflush_is_setup);
+
+static inline void __flush_tlb_mm(struct mm_struct *mm)
+{
+	unsigned long asid = __TLBI_VADDR(0, ASID(mm));
+
+	dsb(ishst);
+	__tlbi(aside1is, asid);
+	__tlbi_user(aside1is, asid);
+	dsb(ish);
+}
+
+static inline void ipi_flush_tlb_mm(void *arg)
+{
+	struct mm_struct *mm = arg;
+
+	local_flush_tlb_mm(mm);
+}
+
+void flush_tlb_mm(struct mm_struct *mm)
+{
+	if (disable_tlbflush_is)
+		on_each_cpu_mask(mm_cpumask(mm), ipi_flush_tlb_mm,
+				 (void *)mm, true);
+	else
+		__flush_tlb_mm(mm);
+}
+
+static inline void __flush_tlb_page_nosync(unsigned long addr)
+{
+	dsb(ishst);
+	__tlbi(vale1is, addr);
+	__tlbi_user(vale1is, addr);
+}
+
+static inline void __local_flush_tlb_page_nosync(unsigned long addr)
+{
+	dsb(nshst);
+	__tlbi(vale1, addr);
+	__tlbi_user(vale1, addr);
+	dsb(nsh);
+}
+
+static inline void ipi_flush_tlb_page_nosync(void *arg)
+{
+	unsigned long addr = *(unsigned long *)arg;
+
+	__local_flush_tlb_page_nosync(addr);
+}
+
+void flush_tlb_page_nosync(struct vm_area_struct *vma, unsigned long uaddr)
+{
+	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
+
+	if (disable_tlbflush_is)
+		on_each_cpu_mask(mm_cpumask(vma->vm_mm),
+				ipi_flush_tlb_page_nosync, &addr, true);
+	else
+		__flush_tlb_page_nosync(addr);
+}
+
+static inline void ___flush_tlb_range(unsigned long start, unsigned long end,
+				     unsigned long stride, bool last_level)
+{
+	unsigned long addr;
+
+	dsb(ishst);
+	for (addr = start; addr < end; addr += stride) {
+		if (last_level) {
+			__tlbi(vale1is, addr);
+			__tlbi_user(vale1is, addr);
+		} else {
+			__tlbi(vae1is, addr);
+			__tlbi_user(vae1is, addr);
+		}
+	}
+	dsb(ish);
+}
+
+static inline void __local_flush_tlb_range(unsigned long addr, bool last_level)
+{
+	dsb(nshst);
+	if (last_level) {
+		__tlbi(vale1, addr);
+		__tlbi_user(vale1, addr);
+	} else {
+		__tlbi(vae1, addr);
+		__tlbi_user(vae1, addr);
+	}
+	dsb(nsh);
+}
+
+static inline void ipi_flush_tlb_range(void *arg)
+{
+	struct tlb_args *ta = (struct tlb_args *)arg;
+	unsigned long addr;
+
+	for (addr = ta->ta_start; addr < ta->ta_end; addr += ta->ta_stride)
+		__local_flush_tlb_range(addr, ta->ta_last_level);
+}
+
+void __flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
+		unsigned long end, unsigned long stride, bool last_level)
+{
+	unsigned long asid = ASID(vma->vm_mm);
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
+	if (disable_tlbflush_is) {
+		struct tlb_args ta = {
+			.ta_start	= start,
+			.ta_end		= end,
+			.ta_stride	= stride,
+			.ta_last_level	= last_level,
+		};
+
+		on_each_cpu_mask(mm_cpumask(vma->vm_mm), ipi_flush_tlb_range,
+					    &ta, true);
+	} else
+		___flush_tlb_range(start, end, stride, last_level);
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
