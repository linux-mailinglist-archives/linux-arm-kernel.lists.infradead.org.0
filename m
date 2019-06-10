Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BB93AE47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 06:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gkVgQzVyuI2ITjj1xXDNlLxUVIGTxf9SWSS5RFy36w=; b=uGu6Lc0cdrHNb8
	YaBXdROgotSQogL/CXfskNI72+rZQhGgEl3oEGXM3uhcpeMT82rIKteA697OrBTZ1Pl7oG3aO34pg
	HeUMiLXQTM12xpow6KM94fe491cy6l/dxdyTtv5yULzAyzYtP4qvgER83x2uMw9lAKSG+Ue/75DI6
	qVcQ2viCFNvDgNiG1PWdohAFv4dfHN8BYY+ru/WfPtb25nLvXG5uWVRr9UuNYaJYsFTIU/CFz1Mwp
	DaWcptPyFAXkueI40c16TX0zZqtalLxB9APbZMH+Q8qD+DtQr9Caq6nEHt2A6M3a/VyHzENzcJOaV
	KjjXrJf0KJlCghHwYTug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haC8R-0003YU-PQ; Mon, 10 Jun 2019 04:42:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haC7K-0002q3-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 04:41:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so4498144pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 21:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sL83o5GmSL2dCmHfrkqeaNUT3nyNNx/ViCtqeruTtoM=;
 b=RO1OVz8aaLV5Rr9K7e6Kj+LnA1vIHWrb9LtDUDXGEyE9Sjtvt4YQF+5ZcrF/4bVwk5
 0gHf3z1I/9rFUqJic3T2F4qbrXx9GixwaS3gwpL4u8KkjK7vESCtsydKVWvcVKYLy7bb
 uHkphxOUuDVniKUm+UYECNHKvuFQKiZOOUnBdVPZ9tzdcErdJmHSqBBV+u+0Ee5SCouk
 wUsZM5oIOc1lnIIfkEmgYF/aS0lpxEBe1s8j0dEQTKwkoCmwVNrc1a/JtAsby4fGD4OD
 h20RZZt8XYksTyyjUgW9zIezh8TaSurYm2QmMadQdKeXK2aEi3P8K85i22wEhBaIP4WW
 GesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sL83o5GmSL2dCmHfrkqeaNUT3nyNNx/ViCtqeruTtoM=;
 b=DHSUHtLCAoLcYXD+nc7XthiXkL6AVHOED28U4vppCcR4EiuftOzMy3sb5ADCM7I03p
 gC1GJJaz70uXNO0RyiLnPHhCpkabkfeM5zW3/B158Lw1XkJ4Oc7fnWKtDpuVBL8XT47J
 Uq5RGdObTEC99bSv4WTh8KLVfS9xpXWDIMrdR2D/TBs1XAcCs5JihR55q9ARFP7zlyBL
 vXdcD+cj/5p/dv3IC9x999UB1Gz/JmMMYANkBQp3HhHU3OyZri8shBssoolRvQc9leOF
 P1Jml/61/TImiF8ucg8FpS7nXZajorBpp1aW5QJ9UxO2uKrjKghgHFNHnKDh7qpKRjDm
 KEcw==
X-Gm-Message-State: APjAAAWvUPwzRdkvAkwUlgeqpQs/lVQWr68sTq+k72S1H6u761yWBWLL
 x+43mLqOsLbzlbguS9fJU4S7pDyt
X-Google-Smtp-Source: APXvYqx5xLsoxUHDjuTqVHUN6KWL4KccSuLF+xYRdn3IRei9u/+KqQ8FZiwEbYaMYD/V+xoD54miIA==
X-Received: by 2002:a17:90a:b298:: with SMTP id
 c24mr19149840pjr.18.1560141670415; 
 Sun, 09 Jun 2019 21:41:10 -0700 (PDT)
Received: from bobo.local0.net (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id l1sm9166802pgj.67.2019.06.09.21.41.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 21:41:09 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
Date: Mon, 10 Jun 2019 14:38:38 +1000
Message-Id: <20190610043838.27916-4-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610043838.27916-1-npiggin@gmail.com>
References: <20190610043838.27916-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_214111_133076_FEBD4240 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Nicholas Piggin <npiggin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For platforms that define HAVE_ARCH_HUGE_VMAP, have vmap allow vmalloc to
allocate huge pages and map them

This brings dTLB misses for linux kernel tree `git diff` from 45,000 to
8,000 on a Kaby Lake KVM guest with 8MB dentry hash and mitigations=off
(performance is in the noise, under 1% difference, page tables are likely
to be well cached for this workload). Similar numbers are seen on POWER9.

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
 include/asm-generic/4level-fixup.h |   1 +
 include/asm-generic/5level-fixup.h |   1 +
 include/linux/vmalloc.h            |   1 +
 mm/vmalloc.c                       | 132 +++++++++++++++++++++++------
 4 files changed, 107 insertions(+), 28 deletions(-)

diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
index e3667c9a33a5..3cc65a4dd093 100644
--- a/include/asm-generic/4level-fixup.h
+++ b/include/asm-generic/4level-fixup.h
@@ -20,6 +20,7 @@
 #define pud_none(pud)			0
 #define pud_bad(pud)			0
 #define pud_present(pud)		1
+#define pud_large(pud)			0
 #define pud_ERROR(pud)			do { } while (0)
 #define pud_clear(pud)			pgd_clear(pud)
 #define pud_val(pud)			pgd_val(pud)
diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
index bb6cb347018c..c4377db09a4f 100644
--- a/include/asm-generic/5level-fixup.h
+++ b/include/asm-generic/5level-fixup.h
@@ -22,6 +22,7 @@
 #define p4d_none(p4d)			0
 #define p4d_bad(p4d)			0
 #define p4d_present(p4d)		1
+#define p4d_large(p4d)			0
 #define p4d_ERROR(p4d)			do { } while (0)
 #define p4d_clear(p4d)			pgd_clear(p4d)
 #define p4d_val(p4d)			pgd_val(p4d)
diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 812bea5866d6..4c92dc608928 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -42,6 +42,7 @@ struct vm_struct {
 	unsigned long		size;
 	unsigned long		flags;
 	struct page		**pages;
+	unsigned int		page_shift;
 	unsigned int		nr_pages;
 	phys_addr_t		phys_addr;
 	const void		*caller;
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index dd27cfb29b10..0cf8e861caeb 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -36,6 +36,7 @@
 #include <linux/rbtree_augmented.h>
 
 #include <linux/uaccess.h>
+#include <asm/pgtable.h>
 #include <asm/tlbflush.h>
 #include <asm/shmparam.h>
 
@@ -440,6 +441,41 @@ static int vmap_pages_range(unsigned long start, unsigned long end,
 	return ret;
 }
 
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+static int vmap_hpages_range(unsigned long start, unsigned long end,
+				   pgprot_t prot, struct page **pages,
+				   unsigned int page_shift)
+{
+	unsigned long addr = start;
+	unsigned int i, nr = (end - start) >> (PAGE_SHIFT + page_shift);
+
+	for (i = 0; i < nr; i++) {
+		int err;
+
+		err = vmap_range_noflush(addr,
+					addr + (PAGE_SIZE << page_shift),
+					__pa(page_address(pages[i])), prot,
+					PAGE_SHIFT + page_shift);
+		if (err)
+			return err;
+
+		addr += PAGE_SIZE << page_shift;
+	}
+	flush_cache_vmap(start, end);
+
+	return nr;
+}
+#else
+static int vmap_hpages_range(unsigned long start, unsigned long end,
+			   pgprot_t prot, struct page **pages,
+			   unsigned int page_shift)
+{
+	BUG_ON(page_shift != PAGE_SIZE);
+	return vmap_pages_range(start, end, prot, pages);
+}
+#endif
+
+
 int is_vmalloc_or_module_addr(const void *x)
 {
 	/*
@@ -462,7 +498,7 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 {
 	unsigned long addr = (unsigned long) vmalloc_addr;
 	struct page *page = NULL;
-	pgd_t *pgd = pgd_offset_k(addr);
+	pgd_t *pgd;
 	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
@@ -474,27 +510,38 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 	 */
 	VIRTUAL_BUG_ON(!is_vmalloc_or_module_addr(vmalloc_addr));
 
+	pgd = pgd_offset_k(addr);
 	if (pgd_none(*pgd))
 		return NULL;
+
 	p4d = p4d_offset(pgd, addr);
 	if (p4d_none(*p4d))
 		return NULL;
-	pud = pud_offset(p4d, addr);
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (p4d_large(*p4d))
+		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
+#endif
+	if (WARN_ON_ONCE(p4d_bad(*p4d)))
+		return NULL;
 
-	/*
-	 * Don't dereference bad PUD or PMD (below) entries. This will also
-	 * identify huge mappings, which we may encounter on architectures
-	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
-	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
-	 * not [unambiguously] associated with a struct page, so there is
-	 * no correct value to return for them.
-	 */
-	WARN_ON_ONCE(pud_bad(*pud));
-	if (pud_none(*pud) || pud_bad(*pud))
+	pud = pud_offset(p4d, addr);
+	if (pud_none(*pud))
+		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (pud_large(*pud))
+		return pud_page(*pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
+#endif
+	if (WARN_ON_ONCE(pud_bad(*pud)))
 		return NULL;
+
 	pmd = pmd_offset(pud, addr);
-	WARN_ON_ONCE(pmd_bad(*pmd));
-	if (pmd_none(*pmd) || pmd_bad(*pmd))
+	if (pmd_none(*pmd))
+		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (pmd_large(*pmd))
+		return pmd_page(*pmd) + ((addr & ~PMD_MASK) >> PAGE_SHIFT);
+#endif
+	if (WARN_ON_ONCE(pmd_bad(*pmd)))
 		return NULL;
 
 	ptep = pte_offset_map(pmd, addr);
@@ -502,6 +549,7 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 	if (pte_present(pte))
 		page = pte_page(pte);
 	pte_unmap(ptep);
+
 	return page;
 }
 EXPORT_SYMBOL(vmalloc_to_page);
@@ -2185,8 +2233,9 @@ static struct vm_struct *__get_vm_area_node(unsigned long size,
 		return NULL;
 
 	if (flags & VM_IOREMAP)
-		align = 1ul << clamp_t(int, get_count_order_long(size),
-				       PAGE_SHIFT, IOREMAP_MAX_ORDER);
+		align = max(align,
+				1ul << clamp_t(int, get_count_order_long(size),
+				       PAGE_SHIFT, IOREMAP_MAX_ORDER));
 
 	area = kzalloc_node(sizeof(*area), gfp_mask & GFP_RECLAIM_MASK, node);
 	if (unlikely(!area))
@@ -2398,7 +2447,7 @@ static void __vunmap(const void *addr, int deallocate_pages)
 			struct page *page = area->pages[i];
 
 			BUG_ON(!page);
-			__free_pages(page, 0);
+			__free_pages(page, area->page_shift);
 		}
 
 		kvfree(area->pages);
@@ -2541,14 +2590,17 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 				 pgprot_t prot, int node)
 {
 	struct page **pages;
+	unsigned long addr = (unsigned long)area->addr;
+	unsigned long size = get_vm_area_size(area);
+	unsigned int page_shift = area->page_shift;
+	unsigned int shift = page_shift + PAGE_SHIFT;
 	unsigned int nr_pages, array_size, i;
 	const gfp_t nested_gfp = (gfp_mask & GFP_RECLAIM_MASK) | __GFP_ZERO;
 	const gfp_t alloc_mask = gfp_mask | __GFP_NOWARN;
 	const gfp_t highmem_mask = (gfp_mask & (GFP_DMA | GFP_DMA32)) ?
-					0 :
-					__GFP_HIGHMEM;
+					0 : __GFP_HIGHMEM;
 
-	nr_pages = get_vm_area_size(area) >> PAGE_SHIFT;
+	nr_pages = size >> shift;
 	array_size = (nr_pages * sizeof(struct page *));
 
 	area->nr_pages = nr_pages;
@@ -2569,10 +2621,8 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 	for (i = 0; i < area->nr_pages; i++) {
 		struct page *page;
 
-		if (node == NUMA_NO_NODE)
-			page = alloc_page(alloc_mask|highmem_mask);
-		else
-			page = alloc_pages_node(node, alloc_mask|highmem_mask, 0);
+		page = alloc_pages_node(node,
+				alloc_mask|highmem_mask, page_shift);
 
 		if (unlikely(!page)) {
 			/* Successfully allocated i pages, free them in __vunmap() */
@@ -2584,8 +2634,9 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 			cond_resched();
 	}
 
-	if (map_vm_area(area, prot, pages))
+	if (vmap_hpages_range(addr, addr + size, prot, pages, page_shift) < 0)
 		goto fail;
+
 	return area->addr;
 
 fail:
@@ -2619,22 +2670,39 @@ void *__vmalloc_node_range(unsigned long size, unsigned long align,
 			pgprot_t prot, unsigned long vm_flags, int node,
 			const void *caller)
 {
-	struct vm_struct *area;
+	struct vm_struct *area = NULL;
 	void *addr;
 	unsigned long real_size = size;
+	unsigned long real_align = align;
+	unsigned int shift = PAGE_SHIFT;
 
 	size = PAGE_ALIGN(size);
 	if (!size || (size >> PAGE_SHIFT) > totalram_pages())
 		goto fail;
 
+	if (IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP)) {
+		unsigned long size_per_node;
+
+		size_per_node = size;
+		if (node == NUMA_NO_NODE)
+			size_per_node /= num_online_nodes();
+		if (size_per_node >= PMD_SIZE)
+			shift = PMD_SHIFT;
+	}
+again:
+	align = max(real_align, 1UL << shift);
+	size = ALIGN(real_size, align);
+
 	area = __get_vm_area_node(size, align, VM_ALLOC | VM_UNINITIALIZED |
 				vm_flags, start, end, node, gfp_mask, caller);
 	if (!area)
 		goto fail;
 
+	area->page_shift = shift - PAGE_SHIFT;
+
 	addr = __vmalloc_area_node(area, gfp_mask, prot, node);
 	if (!addr)
-		return NULL;
+		goto fail;
 
 	/*
 	 * In this function, newly allocated vm_struct has VM_UNINITIALIZED
@@ -2648,8 +2716,16 @@ void *__vmalloc_node_range(unsigned long size, unsigned long align,
 	return addr;
 
 fail:
-	warn_alloc(gfp_mask, NULL,
+	if (shift == PMD_SHIFT) {
+		shift = PAGE_SHIFT;
+		goto again;
+	}
+
+	if (!area) {
+		/* Warn for area allocation, page allocations already warn */
+		warn_alloc(gfp_mask, NULL,
 			  "vmalloc: allocation failure: %lu bytes", real_size);
+	}
 	return NULL;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
