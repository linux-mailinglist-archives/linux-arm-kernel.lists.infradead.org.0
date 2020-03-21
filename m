Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A7D18E118
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 13:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPLSbyaCAFI1g2mMclY1Zgr2J19bz3R63tmfTQ5vXZE=; b=t7bU+9NHEDEkGt
	yjqAWjLnVaxFCqceDXxTO/KCIRTYadQyVhiAxGMZqEmfCZm/VN+7Usw2Mzy2nmMbJMsU2HnQohPKV
	MS93lMWLiJgV8qqJhq+NyOu0wKCRjD+eS70kGh3F5QvaZ3r80MK1J5Xe5Jmqer2i4JLVjfPeOJkVq
	kxSgDmDErRM7UNfyn3g/1qNMXvHVjo9/W2/37SCQaDfx67eeebcceUbgJbs05i06pLo7gboIT28/B
	V/4KSyTmgT9TCyC2iEqQ82r8vS6eg73uRuNs1M4aJ/r7TbZLhy0ZNQdAiIwY4FD/14ujbFVQ0crJD
	IZNqxa/kfWkev2u1YClw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFd4G-0002PV-LY; Sat, 21 Mar 2020 12:17:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFd3a-0001x2-85
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 12:16:52 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5892BC50B8209EFE8990;
 Sat, 21 Mar 2020 20:16:42 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 21 Mar 2020 20:16:32 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>, <catalin.marinas@arm.com>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v3 3/4] arm64: tlb: Use translation level hint in vm_flags
Date: Sat, 21 Mar 2020 20:16:20 +0800
Message-ID: <20200321121621.1600-4-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200321121621.1600-1-yezhenyu2@huawei.com>
References: <20200321121621.1600-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_051650_470815_7FC58952 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch used the VM_LEVEL flags in vma->vm_flags to set the
TTL field in tlbi instruction.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/mmu.h      |  2 ++
 arch/arm64/include/asm/tlbflush.h | 14 ++++++++------
 arch/arm64/mm/mmu.c               | 14 ++++++++++++++
 3 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..b3f410fee512 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -88,6 +88,8 @@ extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 extern void *fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
 extern bool kaslr_requires_kpti(void);
+extern unsigned int get_vma_level(struct vm_area_struct *vma);
+
 
 #define INIT_MM_CONTEXT(name)	\
 	.pgd = init_pg_dir,
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index d141c080e494..93bb09fdfafd 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -218,10 +218,11 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
 					 unsigned long uaddr)
 {
 	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
+	unsigned int level = get_vma_level(vma);
 
 	dsb(ishst);
-	__tlbi_level(vale1is, addr, 0);
-	__tlbi_user_level(vale1is, addr, 0);
+	__tlbi_level(vale1is, addr, level);
+	__tlbi_user_level(vale1is, addr, level);
 }
 
 static inline void flush_tlb_page(struct vm_area_struct *vma,
@@ -242,6 +243,7 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 				     unsigned long stride, bool last_level)
 {
 	unsigned long asid = ASID(vma->vm_mm);
+	unsigned int level = get_vma_level(vma);
 	unsigned long addr;
 
 	start = round_down(start, stride);
@@ -261,11 +263,11 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	dsb(ishst);
 	for (addr = start; addr < end; addr += stride) {
 		if (last_level) {
-			__tlbi_level(vale1is, addr, 0);
-			__tlbi_user_level(vale1is, addr, 0);
+			__tlbi_level(vale1is, addr, level);
+			__tlbi_user_level(vale1is, addr, level);
 		} else {
-			__tlbi_level(vae1is, addr, 0);
-			__tlbi_user_level(vae1is, addr, 0);
+			__tlbi_level(vae1is, addr, level);
+			__tlbi_user_level(vae1is, addr, level);
 		}
 	}
 	dsb(ish);
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 128f70852bf3..e6a1221cd86b 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -60,6 +60,20 @@ static pud_t bm_pud[PTRS_PER_PUD] __page_aligned_bss __maybe_unused;
 
 static DEFINE_SPINLOCK(swapper_pgdir_lock);
 
+inline unsigned int get_vma_level(struct vm_area_struct *vma)
+{
+	unsigned int level = 0;
+	if (vma->vm_flags & VM_LEVEL_PUD)
+		level = 1;
+	else if (vma->vm_flags & VM_LEVEL_PMD)
+		level = 2;
+	else if (vma->vm_flags & VM_LEVEL_PTE)
+		level = 3;
+
+	vma->vm_flags &= ~(VM_LEVEL_PUD | VM_LEVEL_PMD | VM_LEVEL_PTE);
+	return level;
+}
+
 void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
 {
 	pgd_t *fixmap_pgdp;
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
