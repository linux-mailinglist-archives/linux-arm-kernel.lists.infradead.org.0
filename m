Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9382727A6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1MLDOZK09DTIB3Xfw2j3gF7R5fvgqHl0m2sMhfoarq0=; b=Qy/D0yUstRfy8suROR4TFyN4g2
	yESDORpOJk4Ru9ggNLcF2sfW0BiRVliMEy7devuqfP1l+tFxBsbQzqPHIY1ROT/aPNpQrpA/r77to
	KAUiKcDs4NlOdEMUwHm6b52X6fwoon3z6l2DjpmJrV6qYnuM2V+wWdEjo+g3lSuYLLB3QOj2lvpHl
	7m8BGBrN7rPlxTx5yLalGMOK6rPcPrfnTPpc9LwJFoqO2zx6z9Gk+WFpMrCJWae8IiHLxrL7lDXVT
	/fau+OtgArsglrbQK9Xg4LXb7aUj9zSwEQmFNbeUmdPk/5DSk08O7JLwEu4ENHNAPp05Rfl1S6cnl
	oV1aT0UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkuQ-0003Kr-IZ; Thu, 23 May 2019 10:25:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTktl-0002ma-TQ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:24:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3157341;
 Thu, 23 May 2019 03:24:33 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82FE63F718;
 Thu, 23 May 2019 03:24:31 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
Date: Thu, 23 May 2019 11:22:54 +0100
Message-Id: <20190523102256.29168-3-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523102256.29168-1-ard.biesheuvel@arm.com>
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032434_376475_B2F173B2 
X-CRM114-Status: GOOD (  17.28  )
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wire up the special helper functions to manipulate aliases of vmalloc
regions in the linear map.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---
 arch/arm64/Kconfig                  |  1 +
 arch/arm64/include/asm/cacheflush.h |  3 ++
 arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
 mm/vmalloc.c                        | 11 -----
 4 files changed, 44 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index ca9c175fb949..4ab32180eabd 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -26,6 +26,7 @@ config ARM64
 	select ARCH_HAS_MEMBARRIER_SYNC_CORE
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_SETUP_DMA_OPS
+	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_HAS_STRICT_MODULE_RWX
diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index 19844211a4e6..b9ee5510067f 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -187,4 +187,7 @@ static inline void flush_cache_vunmap(unsigned long start, unsigned long end)
 
 int set_memory_valid(unsigned long addr, int numpages, int enable);
 
+int set_direct_map_invalid_noflush(struct page *page);
+int set_direct_map_default_noflush(struct page *page);
+
 #endif
diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 6cd645edcf35..9c6b9039ec8f 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -159,17 +159,48 @@ int set_memory_valid(unsigned long addr, int numpages, int enable)
 					__pgprot(PTE_VALID));
 }
 
-#ifdef CONFIG_DEBUG_PAGEALLOC
+int set_direct_map_invalid_noflush(struct page *page)
+{
+	struct page_change_data data = {
+		.set_mask = __pgprot(0),
+		.clear_mask = __pgprot(PTE_VALID),
+	};
+
+	if (!rodata_full)
+		return 0;
+
+	return apply_to_page_range(&init_mm,
+				   (unsigned long)page_address(page),
+				   PAGE_SIZE, change_page_range, &data);
+}
+
+int set_direct_map_default_noflush(struct page *page)
+{
+	struct page_change_data data = {
+		.set_mask = __pgprot(PTE_VALID | PTE_WRITE),
+		.clear_mask = __pgprot(PTE_RDONLY),
+	};
+
+	if (!rodata_full)
+		return 0;
+
+	return apply_to_page_range(&init_mm,
+				   (unsigned long)page_address(page),
+				   PAGE_SIZE, change_page_range, &data);
+}
+
 void __kernel_map_pages(struct page *page, int numpages, int enable)
 {
+	if (!debug_pagealloc_enabled() && !rodata_full)
+		return;
+
 	set_memory_valid((unsigned long)page_address(page), numpages, enable);
 }
-#ifdef CONFIG_HIBERNATION
+
 /*
- * When built with CONFIG_DEBUG_PAGEALLOC and CONFIG_HIBERNATION, this function
- * is used to determine if a linear map page has been marked as not-valid by
- * CONFIG_DEBUG_PAGEALLOC. Walk the page table and check the PTE_VALID bit.
- * This is based on kern_addr_valid(), which almost does what we need.
+ * This function is used to determine if a linear map page has been marked as
+ * not-valid. Walk the page table and check the PTE_VALID bit. This is based
+ * on kern_addr_valid(), which almost does what we need.
  *
  * Because this is only called on the kernel linear map,  p?d_sect() implies
  * p?d_present(). When debug_pagealloc is enabled, sections mappings are
@@ -183,6 +214,9 @@ bool kernel_page_present(struct page *page)
 	pte_t *ptep;
 	unsigned long addr = (unsigned long)page_address(page);
 
+	if (!debug_pagealloc_enabled() && !rodata_full)
+		return true;
+
 	pgdp = pgd_offset_k(addr);
 	if (pgd_none(READ_ONCE(*pgdp)))
 		return false;
@@ -204,5 +238,3 @@ bool kernel_page_present(struct page *page)
 	ptep = pte_offset_kernel(pmdp, addr);
 	return pte_valid(READ_ONCE(*ptep));
 }
-#endif /* CONFIG_HIBERNATION */
-#endif /* CONFIG_DEBUG_PAGEALLOC */
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 233af6936c93..1135dd8f2665 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2128,17 +2128,6 @@ static void vm_remove_mappings(struct vm_struct *area, int deallocate_pages)
 	int flush_reset = area->flags & VM_FLUSH_RESET_PERMS;
 	int i;
 
-	/*
-	 * The below block can be removed when all architectures that have
-	 * direct map permissions also have set_direct_map_() implementations.
-	 * This is concerned with resetting the direct map any an vm alias with
-	 * execute permissions, without leaving a RW+X window.
-	 */
-	if (flush_reset && !IS_ENABLED(CONFIG_ARCH_HAS_SET_DIRECT_MAP)) {
-		set_memory_nx(addr, area->nr_pages);
-		set_memory_rw(addr, area->nr_pages);
-	}
-
 	remove_vm_area(area->addr);
 
 	/* If this is not VM_FLUSH_RESET_PERMS memory, no need for the below. */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
