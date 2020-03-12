Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4251827A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 05:11:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WsxSsxtxNg8kIi0bh02tl9eTNPY4TB5/ObUyhQrNTQ=; b=j8F9DnhmSHq8TW
	7+OoHzSPFkELEt0kUG+gjbsxQ9MYijQpjpjm95zLIGCmgVE8XWt7HUHbLt839NsoIB5ntW38He8ri
	aLlHF+lgUltqXj9ESpyAVWUKL2biBakPW8/eH57GvMpjClvx+ITJmOAiiJZ1vNH3tk8nwQSRdNw0E
	br6L7pe15y48fM89CQkL20XkfUiOd+DCpjntOUH0XwfxpvzpJU7QAjdJYBcGm2FgJpzRFSX5ZP9Q2
	FtI0Mi4v+7WHAuruoCbZo8x25l2ZimiIVMTXPSRHN5GcCJ5Haa4NFL3TnT9wbbpUjaUvW+SVGPjEW
	nl1RPFBr39HvG7PS+umg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCFCH-0003sp-6A; Thu, 12 Mar 2020 04:11:49 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCFBG-00037Y-04
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 04:10:49 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A9DD3C064D0E03BC613E;
 Thu, 12 Mar 2020 12:10:36 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Thu, 12 Mar 2020 12:10:27 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <mark.rutland@arm.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v2 2/3] arm64: tlb: use mm_struct.context.flags to
 indicate TTL value
Date: Thu, 12 Mar 2020 12:10:17 +0800
Message-ID: <20200312041018.1927-3-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200312041018.1927-1-yezhenyu2@huawei.com>
References: <20200312041018.1927-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_211046_611556_2BE69877 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use Architecture-specific MM context to indicate the level of page
table walk.  This avoids lots of changes to common-interface.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/mmu.h      | 11 +++++++++++
 arch/arm64/include/asm/tlbflush.h |  6 +++---
 arch/arm64/kernel/process.c       |  2 +-
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..f86a38ab3632 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -8,6 +8,10 @@
 #include <asm/cputype.h>
 
 #define MMCF_AARCH32	0x1	/* mm context flag for AArch32 executables */
+#define S1_PUD_LEVEL	0x10	/* mm context flag for the level of ptw */
+#define S1_PMD_LEVEL	0x20
+#define S1_PTE_LEVEL	0x30
+
 #define USER_ASID_BIT	48
 #define USER_ASID_FLAG	(UL(1) << USER_ASID_BIT)
 #define TTBR_ASID_MASK	(UL(0xffff) << 48)
@@ -19,6 +23,10 @@
 typedef struct {
 	atomic64_t	id;
 	void		*vdso;
+	/*
+	 * flags[3:0]: AArch32 executables
+	 * flags[7:4]: the level of page table walk
+	 */
 	unsigned long	flags;
 } mm_context_t;
 
@@ -29,6 +37,9 @@ typedef struct {
  */
 #define ASID(mm)	((mm)->context.id.counter & 0xffff)
 
+/* This macro is only used by TLBI TTL */
+#define TLBI_LEVEL(mm)	((mm)->context.flags >> 4 & 0xf)
+
 extern bool arm64_use_ng_mappings;
 
 static inline bool arm64_kernel_unmapped_at_el0(void)
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index dda693f32099..312b9edb281b 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -186,7 +186,7 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
 	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
 
 	dsb(ishst);
-	__tlbi_level(vale1is, addr, 0);
+	__tlbi_level(vale1is, addr, TLBI_LEVEL(vma->vm_mm));
 }
 
 static inline void flush_tlb_page(struct vm_area_struct *vma,
@@ -226,9 +226,9 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	dsb(ishst);
 	for (addr = start; addr < end; addr += stride) {
 		if (last_level) {
-			__tlbi_level(vale1is, addr, 0);
+			__tlbi_level(vale1is, addr, TLBI_LEVEL(vma->vm_mm));
 		} else {
-			__tlbi_level(vae1is, addr, 0);
+			__tlbi_level(vae1is, addr, TLBI_LEVEL(vma->vm_mm));
 		}
 	}
 	dsb(ish);
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index bbb0f0c145f6..bf835755d9ed 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -562,7 +562,7 @@ unsigned long arch_align_stack(unsigned long sp)
  */
 void arch_setup_new_exec(void)
 {
-	current->mm->context.flags = is_compat_task() ? MMCF_AARCH32 : 0;
+	current->mm->context.flags |= is_compat_task() ? MMCF_AARCH32 : 0;
 
 	ptrauth_thread_init_user(current);
 }
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
