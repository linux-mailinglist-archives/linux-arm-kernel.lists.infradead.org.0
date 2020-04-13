Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A223E1A668E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ae926JRTOiI6iyF4zufWJUtO5mG6GNZwpmhX7JRh4+E=; b=NLpjeAn7ovV+o2
	TTikmgCNY8Rc64DBwL71MUVCmyCfq9OwZHd4rcW7vnDxRgFcYDk43OU14qr8qFxwAmQwZdDFXL4TB
	7pVcnzN0aysFTGEatEgzwiYe3gDQzugBcwDr9U5f174FFARWiRmjA8hOfmmGARZA99O/eE6wwQB2n
	BUhJKcScr1FjpJf8/+FCsOvIhf4iaQ7KhnGlNHYErfkTwBqTJ6wzRXGWqsjcTWeijwcghHWXv/vi7
	yzq4rE7hwaxpM3ELprxciszu294N8m0Qn1Q1s1eEmPHaslsvYJuIBOlEzJsojFYS//jvtaBQCxn/x
	5/xWp2zDiPBJAKo3xchQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNycy-0008JW-Ed; Mon, 13 Apr 2020 12:55:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNybu-0005GY-CP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:54:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id g32so4407607pgb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 05:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qk4un8ULMdXpM0K9LjOM98cSXRzF1nvffzEAv4Kshq8=;
 b=Q9cq4BSXvpDJkF44OYvCY3c1oNlMk/HQ/nVFmgKXULYf5hnvynyl4LikGYswNKiEGx
 /yI4NA4BAwec+DJ3xhTEO0gofWhtNsGyf/hrZsBHWCpFKdDzKptE6HacW24fZC43hd2B
 lG9h6Woq//WusKGad+EiF+BpB0Hhlj0V2OYr6VuW4/mWs8SUEfQvSBaGxx2CwbivYy0P
 z4B2EE3rOjqIN6Kup7jkFz6VasY4jB7+ESfCMYXSdBdo0bXRccODX4ziXzXrF162FjkF
 /oxw3WE+k0Q+lf9GxyYv5KWuztzuUHdjSEQWPxQ2yEUHEB6xZtR9h6YclLmVop3r8z9S
 c/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qk4un8ULMdXpM0K9LjOM98cSXRzF1nvffzEAv4Kshq8=;
 b=l7mIOAVjm1Dz+6yHQcsqeEppu0en//LGQo3r+yNYiFVeNJt3tRHCPfIHNPBSsLe0qR
 gFJa0+4U6zaZgng3I3JR3+SSF1EVMqamhx+U7gh6wF1bzrg8c6mDJ3VCo9SI4FrVNKoe
 q5rKBaGqHd+qt/2w3p9vcWP9sbWDpLIPpWEHCj0CVDWppEezU7f7pmgDceaJA8nvLKKA
 Ym9njJCF8uoNfoOeGhY6f8pZ68yC7y1oC53xd6ri57LiC3TDXwiRnrLjJOqnfffz9F17
 A8EMm/GY+pO4sB47qWqEXCTp+6lJsJ+BBjcQvf/JuD2//mNRSRFWyc/wZQEVxt9pLVcj
 bjtg==
X-Gm-Message-State: AGi0PubLkAb0wG6toxMW5wN4rqqseLxqbpxlxwY++WV0uIW3JiW1LPfe
 13IBm87J8bTs5nRGIlihIRBZpFV0
X-Google-Smtp-Source: APiQypIDipqbTZlvQxQvYbcGI5NK+NXEeeCaaI1z/YyLpYU1GKzS0bbZemmOMw2bVFHR03T3+hzcDw==
X-Received: by 2002:a62:7b84:: with SMTP id
 w126mr18057331pfc.202.1586782485609; 
 Mon, 13 Apr 2020 05:54:45 -0700 (PDT)
Received: from bobo.ibm.com (60-241-117-97.tpgi.com.au. [60.241.117.97])
 by smtp.gmail.com with ESMTPSA id j24sm9235610pji.20.2020.04.13.05.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 05:54:45 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
Date: Mon, 13 Apr 2020 22:53:03 +1000
Message-Id: <20200413125303.423864-5-npiggin@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200413125303.423864-1-npiggin@gmail.com>
References: <20200413125303.423864-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_055446_447577_BD5A5A2C 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For platforms that define HAVE_ARCH_HUGE_VMAP and support PMD vmap mappings,
have vmalloc attempt to allocate PMD-sized pages first, before falling back
to small pages. Allocations which use something other than PAGE_KERNEL
protections are not permitted to use huge pages yet, not all callers expect
this (e.g., module allocations vs strict module rwx).

This gives a 6x reduction in dTLB misses for a `git diff` (of linux), from
45600 to 6500 and a 2.2% reduction in cycles on a 2-node POWER9.

This can result in more internal fragmentation and memory overhead for a
given allocation. It can also cause greater NUMA unbalance on hashdist
allocations.

There may be other callers that expect small pages under vmalloc but use
PAGE_KERNEL, I'm not sure if it's feasible to catch them all. An
alternative would be a new function or flag which enables large mappings,
and use that in callers.

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
 include/linux/vmalloc.h |   2 +
 mm/vmalloc.c            | 135 +++++++++++++++++++++++++++++-----------
 2 files changed, 102 insertions(+), 35 deletions(-)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 291313a7e663..853b82eac192 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -24,6 +24,7 @@ struct notifier_block;		/* in notifier.h */
 #define VM_UNINITIALIZED	0x00000020	/* vm_struct is not fully initialized */
 #define VM_NO_GUARD		0x00000040      /* don't add guard page */
 #define VM_KASAN		0x00000080      /* has allocated kasan shadow memory */
+#define VM_HUGE_PAGES		0x00000100	/* may use huge pages */
 
 /*
  * VM_KASAN is used slighly differently depending on CONFIG_KASAN_VMALLOC.
@@ -58,6 +59,7 @@ struct vm_struct {
 	unsigned long		size;
 	unsigned long		flags;
 	struct page		**pages;
+	unsigned int		page_order;
 	unsigned int		nr_pages;
 	phys_addr_t		phys_addr;
 	const void		*caller;
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index c898d16ddd25..7b7e992c5ff1 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -436,7 +436,7 @@ static int vmap_pages_p4d_range(pgd_t *pgd, unsigned long addr,
  *
  * Ie. pte at addr+N*PAGE_SIZE shall point to pfn corresponding to pages[N]
  */
-static int vmap_pages_range_noflush(unsigned long start, unsigned long end,
+static int vmap_small_pages_range_noflush(unsigned long start, unsigned long end,
 				   pgprot_t prot, struct page **pages)
 {
 	pgd_t *pgd;
@@ -457,13 +457,44 @@ static int vmap_pages_range_noflush(unsigned long start, unsigned long end,
 	return nr;
 }
 
+static int vmap_pages_range_noflush(unsigned long start, unsigned long end,
+				    pgprot_t prot, struct page **pages,
+				    unsigned int page_shift)
+{
+	if (page_shift == PAGE_SIZE) {
+		return vmap_small_pages_range_noflush(start, end, prot, pages);
+	} else {
+		unsigned long addr = start;
+		unsigned int i, nr = (end - start) >> page_shift;
+
+		for (i = 0; i < nr; i++) {
+			int err;
+
+			err = vmap_range_noflush(addr,
+					addr + (1UL << page_shift),
+					__pa(page_address(pages[i])), prot,
+					page_shift);
+			if (err)
+				return err;
+
+			addr += 1UL << page_shift;
+		}
+
+		return 0;
+	}
+}
+
 static int vmap_pages_range(unsigned long start, unsigned long end,
-			   pgprot_t prot, struct page **pages)
+			    pgprot_t prot, struct page **pages,
+			    unsigned int page_shift)
 {
 	int ret;
 
-	ret = vmap_pages_range_noflush(start, end, prot, pages);
+	BUG_ON(page_shift < PAGE_SHIFT);
+
+	ret = vmap_pages_range_noflush(start, end, prot, pages, page_shift);
 	flush_cache_vmap(start, end);
+
 	return ret;
 }
 
@@ -2064,7 +2095,7 @@ void *vm_map_ram(struct page **pages, unsigned int count, int node, pgprot_t pro
 
 	kasan_unpoison_vmalloc(mem, size);
 
-	if (vmap_pages_range(addr, addr + size, prot, pages) < 0) {
+	if (vmap_pages_range(addr, addr + size, prot, pages, PAGE_SHIFT) < 0) {
 		vm_unmap_ram(mem, count);
 		return NULL;
 	}
@@ -2230,7 +2261,7 @@ void __init vmalloc_init(void)
 int map_kernel_range_noflush(unsigned long addr, unsigned long size,
 			     pgprot_t prot, struct page **pages)
 {
-	return vmap_pages_range_noflush(addr, addr + size, prot, pages);
+	return vmap_pages_range_noflush(addr, addr + size, prot, pages, PAGE_SHIFT);
 }
 
 /**
@@ -2277,7 +2308,7 @@ int map_vm_area(struct vm_struct *area, pgprot_t prot, struct page **pages)
 	unsigned long end = addr + get_vm_area_size(area);
 	int err;
 
-	err = vmap_pages_range(addr, end, prot, pages);
+	err = vmap_pages_range(addr, end, prot, pages, PAGE_SHIFT);
 
 	return err > 0 ? 0 : err;
 }
@@ -2325,9 +2356,11 @@ static struct vm_struct *__get_vm_area_node(unsigned long size,
 	if (unlikely(!size))
 		return NULL;
 
-	if (flags & VM_IOREMAP)
-		align = 1ul << clamp_t(int, get_count_order_long(size),
-				       PAGE_SHIFT, IOREMAP_MAX_ORDER);
+	if (flags & VM_IOREMAP) {
+		align = max(align,
+			    1ul << clamp_t(int, get_count_order_long(size),
+					   PAGE_SHIFT, IOREMAP_MAX_ORDER));
+	}
 
 	area = kzalloc_node(sizeof(*area), gfp_mask & GFP_RECLAIM_MASK, node);
 	if (unlikely(!area))
@@ -2534,7 +2567,7 @@ static void __vunmap(const void *addr, int deallocate_pages)
 			struct page *page = area->pages[i];
 
 			BUG_ON(!page);
-			__free_pages(page, 0);
+			__free_pages(page, area->page_order);
 		}
 		atomic_long_sub(area->nr_pages, &nr_vmalloc_pages);
 
@@ -2672,26 +2705,29 @@ void *vmap(struct page **pages, unsigned int count,
 EXPORT_SYMBOL(vmap);
 
 static void *__vmalloc_node(unsigned long size, unsigned long align,
-			    gfp_t gfp_mask, pgprot_t prot,
-			    int node, const void *caller);
+			gfp_t gfp_mask, pgprot_t prot, unsigned long vm_flags,
+			int node, const void *caller);
 static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
-				 pgprot_t prot, int node)
+				 pgprot_t prot, unsigned int page_shift,
+				 int node)
 {
 	struct page **pages;
+	unsigned long addr = (unsigned long)area->addr;
+	unsigned long size = get_vm_area_size(area);
+	unsigned int page_order = page_shift - PAGE_SHIFT;
 	unsigned int nr_pages, array_size, i;
 	const gfp_t nested_gfp = (gfp_mask & GFP_RECLAIM_MASK) | __GFP_ZERO;
 	const gfp_t alloc_mask = gfp_mask | __GFP_NOWARN;
 	const gfp_t highmem_mask = (gfp_mask & (GFP_DMA | GFP_DMA32)) ?
-					0 :
-					__GFP_HIGHMEM;
+					0 : __GFP_HIGHMEM;
 
-	nr_pages = get_vm_area_size(area) >> PAGE_SHIFT;
+	nr_pages = size >> page_shift;
 	array_size = (nr_pages * sizeof(struct page *));
 
 	/* Please note that the recursion is strictly bounded. */
 	if (array_size > PAGE_SIZE) {
 		pages = __vmalloc_node(array_size, 1, nested_gfp|highmem_mask,
-				PAGE_KERNEL, node, area->caller);
+				PAGE_KERNEL, 0, node, area->caller);
 	} else {
 		pages = kmalloc_node(array_size, nested_gfp, node);
 	}
@@ -2704,14 +2740,13 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 
 	area->pages = pages;
 	area->nr_pages = nr_pages;
+	area->page_order = page_order;
 
 	for (i = 0; i < area->nr_pages; i++) {
 		struct page *page;
 
-		if (node == NUMA_NO_NODE)
-			page = alloc_page(alloc_mask|highmem_mask);
-		else
-			page = alloc_pages_node(node, alloc_mask|highmem_mask, 0);
+		page = alloc_pages_node(node,
+				alloc_mask|highmem_mask, page_order);
 
 		if (unlikely(!page)) {
 			/* Successfully allocated i pages, free them in __vunmap() */
@@ -2725,8 +2760,9 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 	}
 	atomic_long_add(area->nr_pages, &nr_vmalloc_pages);
 
-	if (map_vm_area(area, prot, pages))
+	if (vmap_pages_range(addr, addr + size, prot, pages, page_shift) < 0)
 		goto fail;
+
 	return area->addr;
 
 fail:
@@ -2760,22 +2796,39 @@ void *__vmalloc_node_range(unsigned long size, unsigned long align,
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
 
-	area = __get_vm_area_node(real_size, align, VM_ALLOC | VM_UNINITIALIZED |
+	if (IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP) &&
+			(vm_flags & VM_HUGE_PAGES)) {
+		unsigned long size_per_node;
+
+		size_per_node = size;
+		if (node == NUMA_NO_NODE)
+			size_per_node /= num_online_nodes();
+		if (size_per_node >= PMD_SIZE)
+			shift = PMD_SHIFT;
+	}
+
+again:
+	align = max(real_align, 1UL << shift);
+	size = ALIGN(real_size, align);
+
+	area = __get_vm_area_node(size, align, VM_ALLOC | VM_UNINITIALIZED |
 				vm_flags, start, end, node, gfp_mask, caller);
 	if (!area)
 		goto fail;
 
-	addr = __vmalloc_area_node(area, gfp_mask, prot, node);
+	addr = __vmalloc_area_node(area, gfp_mask, prot, shift, node);
 	if (!addr)
-		return NULL;
+		goto fail;
 
 	/*
 	 * In this function, newly allocated vm_struct has VM_UNINITIALIZED
@@ -2789,8 +2842,16 @@ void *__vmalloc_node_range(unsigned long size, unsigned long align,
 	return addr;
 
 fail:
-	warn_alloc(gfp_mask, NULL,
+	if (shift > PAGE_SHIFT) {
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
 
@@ -2825,16 +2886,19 @@ EXPORT_SYMBOL_GPL(__vmalloc_node_range);
  * Return: pointer to the allocated memory or %NULL on error
  */
 static void *__vmalloc_node(unsigned long size, unsigned long align,
-			    gfp_t gfp_mask, pgprot_t prot,
-			    int node, const void *caller)
+			gfp_t gfp_mask, pgprot_t prot, unsigned long vm_flags,
+			int node, const void *caller)
 {
 	return __vmalloc_node_range(size, align, VMALLOC_START, VMALLOC_END,
-				gfp_mask, prot, 0, node, caller);
+				gfp_mask, prot, vm_flags, node, caller);
 }
 
 void *__vmalloc(unsigned long size, gfp_t gfp_mask, pgprot_t prot)
 {
-	return __vmalloc_node(size, 1, gfp_mask, prot, NUMA_NO_NODE,
+	unsigned long vm_flags = 0;
+	if (pgprot_val(prot) == pgprot_val(PAGE_KERNEL))
+		vm_flags |= VM_HUGE_PAGES;
+	return __vmalloc_node(size, 1, gfp_mask, prot, vm_flags, NUMA_NO_NODE,
 				__builtin_return_address(0));
 }
 EXPORT_SYMBOL(__vmalloc);
@@ -2842,7 +2906,7 @@ EXPORT_SYMBOL(__vmalloc);
 static inline void *__vmalloc_node_flags(unsigned long size,
 					int node, gfp_t flags)
 {
-	return __vmalloc_node(size, 1, flags, PAGE_KERNEL,
+	return __vmalloc_node(size, 1, flags, PAGE_KERNEL, VM_HUGE_PAGES,
 					node, __builtin_return_address(0));
 }
 
@@ -2850,7 +2914,8 @@ static inline void *__vmalloc_node_flags(unsigned long size,
 void *__vmalloc_node_flags_caller(unsigned long size, int node, gfp_t flags,
 				  void *caller)
 {
-	return __vmalloc_node(size, 1, flags, PAGE_KERNEL, node, caller);
+	return __vmalloc_node(size, 1, flags, PAGE_KERNEL, VM_HUGE_PAGES,
+					node, caller);
 }
 
 /**
@@ -2925,7 +2990,7 @@ EXPORT_SYMBOL(vmalloc_user);
  */
 void *vmalloc_node(unsigned long size, int node)
 {
-	return __vmalloc_node(size, 1, GFP_KERNEL, PAGE_KERNEL,
+	return __vmalloc_node(size, 1, GFP_KERNEL, PAGE_KERNEL, VM_HUGE_PAGES,
 					node, __builtin_return_address(0));
 }
 EXPORT_SYMBOL(vmalloc_node);
@@ -3014,7 +3079,7 @@ void *vmalloc_exec(unsigned long size)
  */
 void *vmalloc_32(unsigned long size)
 {
-	return __vmalloc_node(size, 1, GFP_VMALLOC32, PAGE_KERNEL,
+	return __vmalloc_node(size, 1, GFP_VMALLOC32, PAGE_KERNEL, 0,
 			      NUMA_NO_NODE, __builtin_return_address(0));
 }
 EXPORT_SYMBOL(vmalloc_32);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
