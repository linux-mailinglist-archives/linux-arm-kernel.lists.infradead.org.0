Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8574EE9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GCcvkojQ/s13oA0Bk8QQNVHtqmx1JnWdgVZbMSsKmsM=; b=XdL1Cms42j4k3IJMKIqJzuwDb7
	6uHNMKw7drSgB142G+R2GlqQ8OxzmqQEgXuDgpwgFqaPI+0czsDN0qB7/xhni7o5QfSJimm6b3h1R
	ta8lgBOd7Zhhpjwf76r+uohwtk0CRkiUPEiiDtiLYCbQfUMeV+UHSFw6zlw2syMMhTFGmCIiYyDXI
	8SnWnic77y3/e+OD8hz8N9e1//+kN7N9O3obOIRsngp/Tm6C8lIp2+W9CuULs/8le9uwt5D4+3LAi
	8xcbnqRfDYidhjqb4hQBm0nie5kXKOb1/ODlDsZZF7zctkjkSX5N+/YZ4wfjipWFdTBrCXFSPf9NF
	ZQc0mwFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLI1O-0006XL-MK; Tue, 30 Apr 2019 01:57:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLI11-0006I9-GE
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:57:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id l18so6063639pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 18:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WZpM7K7P0CuzBSyHZl7+KTM+4oLr+xXajJlvms/Nl/A=;
 b=B+FXkyEZNLdrg8uj3pje0gt1X2/vuDZsvkBlMBcTx5NwwS3cgCqAKzP3iyByqET+8W
 RnJ2+rjJRburIjEs2C6eTipWFjpixu8m6JfIt3zLeaGaGBO9oPv3nfqlQZthE3kNKfOM
 IV16GhdTiEOFjfM5BwJjiEEV9BV0M+jeylz9Vbeqdcpm+izvtrqp7fnx3RR6lQ73aZhJ
 U+yhZ+QPJq+w27zojDS5/5KuF2Ag5BIK89bxTM/CdBSVZMRsD+5QP9G8FytagMOy0u/k
 aBi8RzuuJQxt1TNOI6p6htFJmt7wcXMPay2Xc2CYlrmsXVm36NH4bU4Xodsyiqra3AD2
 wykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WZpM7K7P0CuzBSyHZl7+KTM+4oLr+xXajJlvms/Nl/A=;
 b=F83efiBkNDqAKxtiU9vt7MgmECkaEHFDABiWktZHLn0L0givmkSi0/bDrERLDFmBG2
 wF7OURUpKtdaQaPO7E3EMGAPPuQS339Ozv6CRV4woV3fiSCxQu1AggYFqpaSb6SJJnK6
 QpTZ+zKJBJDPEdnZupujkkTpiRAQgVOfyPLxn9Uz6r+WAhToQxBmoovXiQtBFc3CRskd
 EVMGBcrlrwB5u10rERlbV/HmDpk6/OfxZSsHdqA/DZlC9wafEfWIfO3/1DoMMQGML7nS
 Wq1GWme9tuFGynxQFt7ZBlubY2Xn7CC7RPUcrutHChITeyzdd+4AWDGEDQeVWAJ24uCa
 NHOw==
X-Gm-Message-State: APjAAAUflK3n2us+eavkRhylPxh25XrxgXa2l1KSAA5QOn0OYabVOx7q
 KlEVq+L85fwv1agl2lOXj4c=
X-Google-Smtp-Source: APXvYqwTCAXaRPN+eOGvwfutkpxWrj5gIr3qIOBHLYy0RpW1rbvQBKnmfKbzBsbq206oeGfmZcB9GA==
X-Received: by 2002:a63:4558:: with SMTP id u24mr60462583pgk.225.1556589422492; 
 Mon, 29 Apr 2019 18:57:02 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id a12sm36918995pgq.21.2019.04.29.18.57.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 18:57:01 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [RFC/RFT PATCH 1/2] dma-contiguous: Simplify dma_*_from_contiguous()
 function calls
Date: Mon, 29 Apr 2019 18:55:20 -0700
Message-Id: <20190430015521.27734-2-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430015521.27734-1-nicoleotsuka@gmail.com>
References: <20190430015521.27734-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_185703_543138_0EBD4942 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com,
 akpm@linux-foundation.org, treding@nvidia.com, dwmw2@infradead.org,
 iamjoonsoo.kim@lge.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both dma_alloc_from_contiguous() and dma_release_from_contiguous()
are very simply implemented, but requiring callers to pass certain
parameters like count and align, and taking a boolean parameter to
check __GFP_NOWARN in the allocation flags. So every function call
duplicates similar work:
  /* A piece of example */
  unsigned long order = get_order(size);
  size_t count = size >> PAGE_SHIFT;
  page = dma_alloc_from_contiguous(dev, count, order, gfp & __GFP_NOWARN);
  [...]
  dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);

Additionally, as CMA can be used only in the context which permits
sleeping, most of callers do a gfpflags_allow_blocking() check and
a corresponding fallback allocation of normal pages upon any false
result:
  /* A piece of example */
  if (gfpflags_allow_blocking(flag))
      page = dma_alloc_from_contiguous();
  if (!page)
      page = alloc_pages();
  [...]
  if (!dma_release_from_contiguous(dev, page, count))
      __free_pages(page, get_order(size));

So this patch simplifies those function calls by abstracting these
operations into the two functions, and drops "_from" from function
names to make them shorter.

Also, for dma_release_contiguous() function specifically:
a) Change it to a void type as there's no longer a need of return.
b) Rename to dma_free_contiguous(), because "free" is shorter and
   more commonly used under kernel/dma/ folder.
c) Rename one parameter from "struct page *pages" to "struct page
   *page", as most of callers use the naming "page" while "pages"
   are more oftenly used for "struct page **pages".

It then accordingly updates/cleans up all the function callers.

Note:
1) Prior to this change, amd_iommu.c has a reversed routine with
   alloc_pages() first and then falling back to CMA allocation.
   So this change may impact platforms that use amd_iommu driver.
2) This change adds an internal gfpflags_allow_blocking() check.
   So callers, that previously did not have this check but would
   potentially fail the check, might end up in the fallback path.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
 arch/arm/mm/dma-mapping.c      | 14 ++++-----
 arch/arm64/mm/dma-mapping.c    | 11 +++----
 arch/xtensa/kernel/pci-dma.c   | 19 +++---------
 drivers/iommu/amd_iommu.c      | 20 ++++---------
 drivers/iommu/intel-iommu.c    | 20 ++-----------
 include/linux/dma-contiguous.h | 15 +++-------
 kernel/dma/contiguous.c        | 55 ++++++++++++++++++++--------------
 kernel/dma/direct.c            | 24 +++------------
 kernel/dma/remap.c             | 11 ++-----
 9 files changed, 64 insertions(+), 125 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 12e0812e988c..795e99ad36ed 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -583,12 +583,10 @@ static void *__alloc_from_contiguous(struct device *dev, size_t size,
 				     const void *caller, bool want_vaddr,
 				     int coherent_flag, gfp_t gfp)
 {
-	unsigned long order = get_order(size);
-	size_t count = size >> PAGE_SHIFT;
 	struct page *page;
 	void *ptr = NULL;
 
-	page = dma_alloc_from_contiguous(dev, count, order, gfp & __GFP_NOWARN);
+	page = dma_alloc_contiguous(dev, size, gfp);
 	if (!page)
 		return NULL;
 
@@ -600,7 +598,7 @@ static void *__alloc_from_contiguous(struct device *dev, size_t size,
 	if (PageHighMem(page)) {
 		ptr = __dma_alloc_remap(page, size, GFP_KERNEL, prot, caller);
 		if (!ptr) {
-			dma_release_from_contiguous(dev, page, count);
+			dma_free_contiguous(dev, page, size);
 			return NULL;
 		}
 	} else {
@@ -622,7 +620,7 @@ static void __free_from_contiguous(struct device *dev, struct page *page,
 		else
 			__dma_remap(page, size, PAGE_KERNEL);
 	}
-	dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
+	dma_free_contiguous(dev, page, size);
 }
 
 static inline pgprot_t __get_dma_pgprot(unsigned long attrs, pgprot_t prot)
@@ -1290,11 +1288,9 @@ static struct page **__iommu_alloc_buffer(struct device *dev, size_t size,
 
 	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS)
 	{
-		unsigned long order = get_order(size);
 		struct page *page;
 
-		page = dma_alloc_from_contiguous(dev, count, order,
-						 gfp & __GFP_NOWARN);
+		page = dma_alloc_contiguous(dev, size, gfp);
 		if (!page)
 			goto error;
 
@@ -1369,7 +1365,7 @@ static int __iommu_free_buffer(struct device *dev, struct page **pages,
 	int i;
 
 	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		dma_release_from_contiguous(dev, pages[0], count);
+		dma_free_contiguous(dev, pages[0], size);
 	} else {
 		for (i = 0; i < count; i++)
 			if (pages[i])
diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 78c0a72f822c..3f07f26d6bcd 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -158,15 +158,13 @@ static void *__iommu_alloc_attrs(struct device *dev, size_t size,
 		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
 		struct page *page;
 
-		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
-					get_order(size), gfp & __GFP_NOWARN);
+		page = dma_alloc_contiguous(dev, size, gfp);
 		if (!page)
 			return NULL;
 
 		*handle = iommu_dma_map_page(dev, page, 0, iosize, ioprot);
 		if (*handle == DMA_MAPPING_ERROR) {
-			dma_release_from_contiguous(dev, page,
-						    size >> PAGE_SHIFT);
+			dma_free_contiguous(dev, page, size);
 			return NULL;
 		}
 		addr = dma_common_contiguous_remap(page, size, VM_USERMAP,
@@ -178,8 +176,7 @@ static void *__iommu_alloc_attrs(struct device *dev, size_t size,
 			memset(addr, 0, size);
 		} else {
 			iommu_dma_unmap_page(dev, *handle, iosize, 0, attrs);
-			dma_release_from_contiguous(dev, page,
-						    size >> PAGE_SHIFT);
+			dma_free_contiguous(dev, page, size);
 		}
 	} else {
 		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
@@ -222,7 +219,7 @@ static void __iommu_free_attrs(struct device *dev, size_t size, void *cpu_addr,
 		struct page *page = vmalloc_to_page(cpu_addr);
 
 		iommu_dma_unmap_page(dev, handle, iosize, 0, attrs);
-		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
+		dma_free_contiguous(dev, page, size);
 		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
 	} else if (is_vmalloc_addr(cpu_addr)){
 		struct vm_struct *area = find_vm_area(cpu_addr);
diff --git a/arch/xtensa/kernel/pci-dma.c b/arch/xtensa/kernel/pci-dma.c
index 9171bff76fc4..b3f5acfee604 100644
--- a/arch/xtensa/kernel/pci-dma.c
+++ b/arch/xtensa/kernel/pci-dma.c
@@ -145,7 +145,6 @@ void __attribute__((weak)) *platform_vaddr_to_cached(void *p)
 void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 		gfp_t flag, unsigned long attrs)
 {
-	unsigned long count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	struct page *page = NULL;
 
 	/* ignore region speicifiers */
@@ -155,13 +154,7 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 	if (dev == NULL || (dev->coherent_dma_mask < 0xffffffff))
 		flag |= GFP_DMA;
 
-	if (gfpflags_allow_blocking(flag))
-		page = dma_alloc_from_contiguous(dev, count, get_order(size),
-						 flag & __GFP_NOWARN);
-
-	if (!page)
-		page = alloc_pages(flag | __GFP_ZERO, get_order(size));
-
+	page = dma_alloc_contiguous(dev, size, flag | __GFP_ZERO);
 	if (!page)
 		return NULL;
 
@@ -178,10 +171,8 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 		p = dma_common_contiguous_remap(page, size, VM_MAP,
 						pgprot_noncached(PAGE_KERNEL),
 						__builtin_return_address(0));
-		if (!p) {
-			if (!dma_release_from_contiguous(dev, page, count))
-				__free_pages(page, get_order(size));
-		}
+		if (!p)
+			dma_free_contiguous(dev, page, size);
 		return p;
 	}
 #endif
@@ -193,7 +184,6 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 void arch_dma_free(struct device *dev, size_t size, void *vaddr,
 		dma_addr_t dma_handle, unsigned long attrs)
 {
-	unsigned long count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	struct page *page;
 
 	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
@@ -207,6 +197,5 @@ void arch_dma_free(struct device *dev, size_t size, void *vaddr,
 		page = pfn_to_page(PHYS_PFN(dma_to_phys(dev, dma_handle)));
 	}
 
-	if (!dma_release_from_contiguous(dev, page, count))
-		__free_pages(page, get_order(size));
+	dma_free_contiguous(dev, page, size);
 }
diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index f467cc4b498e..23f78e29a2d0 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -2640,16 +2640,9 @@ static void *alloc_coherent(struct device *dev, size_t size,
 	flag     &= ~(__GFP_DMA | __GFP_HIGHMEM | __GFP_DMA32);
 	flag     |= __GFP_ZERO;
 
-	page = alloc_pages(flag | __GFP_NOWARN,  get_order(size));
-	if (!page) {
-		if (!gfpflags_allow_blocking(flag))
-			return NULL;
-
-		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
-					get_order(size), flag & __GFP_NOWARN);
-		if (!page)
-			return NULL;
-	}
+	page = dma_alloc_contiguous(dev, size, flag | __GFP_NOWARN);
+	if (!page)
+		return NULL;
 
 	if (!dma_mask)
 		dma_mask = *dev->dma_mask;
@@ -2663,9 +2656,7 @@ static void *alloc_coherent(struct device *dev, size_t size,
 	return page_address(page);
 
 out_free:
-
-	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
-		__free_pages(page, get_order(size));
+	dma_free_contiguous(dev, page, size);
 
 	return NULL;
 }
@@ -2684,8 +2675,7 @@ static void free_coherent(struct device *dev, size_t size,
 	size = PAGE_ALIGN(size);
 
 	__unmap_single(dma_dom, dma_addr, size, DMA_BIDIRECTIONAL);
-	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
-		__free_pages(page, get_order(size));
+	dma_free_contiguous(dev, page, size);
 }
 
 /*
diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index d93c4bd7de75..6f94b916c386 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -3787,23 +3787,13 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 				  unsigned long attrs)
 {
 	struct page *page = NULL;
-	int order;
 
 	if (!iommu_need_mapping(dev))
 		return dma_direct_alloc(dev, size, dma_handle, flags, attrs);
 
 	size = PAGE_ALIGN(size);
-	order = get_order(size);
 
-	if (gfpflags_allow_blocking(flags)) {
-		unsigned int count = size >> PAGE_SHIFT;
-
-		page = dma_alloc_from_contiguous(dev, count, order,
-						 flags & __GFP_NOWARN);
-	}
-
-	if (!page)
-		page = alloc_pages(flags, order);
+	page = dma_alloc_contiguous(dev, size, flags);
 	if (!page)
 		return NULL;
 	memset(page_address(page), 0, size);
@@ -3813,8 +3803,7 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 					 dev->coherent_dma_mask);
 	if (*dma_handle != DMA_MAPPING_ERROR)
 		return page_address(page);
-	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
-		__free_pages(page, order);
+	dma_free_contiguous(dev, page, size);
 
 	return NULL;
 }
@@ -3822,18 +3811,15 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 static void intel_free_coherent(struct device *dev, size_t size, void *vaddr,
 				dma_addr_t dma_handle, unsigned long attrs)
 {
-	int order;
 	struct page *page = virt_to_page(vaddr);
 
 	if (!iommu_need_mapping(dev))
 		return dma_direct_free(dev, size, vaddr, dma_handle, attrs);
 
 	size = PAGE_ALIGN(size);
-	order = get_order(size);
 
 	intel_unmap(dev, dma_handle, size);
-	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
-		__free_pages(page, order);
+	dma_free_contiguous(dev, page, size);
 }
 
 static void intel_unmap_sg(struct device *dev, struct scatterlist *sglist,
diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index f247e8aa5e3d..c8ae5ab968c8 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -111,10 +111,8 @@ static inline int dma_declare_contiguous(struct device *dev, phys_addr_t size,
 	return ret;
 }
 
-struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
-				       unsigned int order, bool no_warn);
-bool dma_release_from_contiguous(struct device *dev, struct page *pages,
-				 int count);
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp);
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size);
 
 #else
 
@@ -144,18 +142,13 @@ int dma_declare_contiguous(struct device *dev, phys_addr_t size,
 }
 
 static inline
-struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
-				       unsigned int order, bool no_warn)
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 {
 	return NULL;
 }
 
 static inline
-bool dma_release_from_contiguous(struct device *dev, struct page *pages,
-				 int count)
-{
-	return false;
-}
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size) { }
 
 #endif
 
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index b2a87905846d..afe5a673668e 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -178,40 +178,51 @@ int __init dma_contiguous_reserve_area(phys_addr_t size, phys_addr_t base,
 }
 
 /**
- * dma_alloc_from_contiguous() - allocate pages from contiguous area
+ * dma_alloc_contiguous() - allocate contiguous pages
  * @dev:   Pointer to device for which the allocation is performed.
- * @count: Requested number of pages.
- * @align: Requested alignment of pages (in PAGE_SIZE order).
- * @no_warn: Avoid printing message about failed allocation.
+ * @size:  Requested allocation size.
+ * @gfp:   Allocation flags.
  *
- * This function allocates memory buffer for specified device. It uses
- * device specific contiguous memory area if available or the default
- * global one. Requires architecture specific dev_get_cma_area() helper
- * function.
+ * This function allocates contiguous memory buffer for specified device. It
+ * first tries to use device specific contiguous memory area if available or
+ * the default global one, then tries a fallback allocation of normal pages.
  */
-struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
-				       unsigned int align, bool no_warn)
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 {
-	if (align > CONFIG_CMA_ALIGNMENT)
-		align = CONFIG_CMA_ALIGNMENT;
+	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
+	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	size_t align = get_order(PAGE_ALIGN(size));
+	struct cma *cma = dev_get_cma_area(dev);
+	struct page *page = NULL;
+
+	/* CMA can be used only in the context which permits sleeping */
+	if (cma && gfpflags_allow_blocking(gfp)) {
+		align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
+		page = cma_alloc(cma, count, align, gfp & __GFP_NOWARN);
+	}
+
+	/* Fallback allocation of normal pages */
+	if (!page)
+		page = alloc_pages_node(node, gfp, align);
 
-	return cma_alloc(dev_get_cma_area(dev), count, align, no_warn);
+	return page;
 }
 
 /**
- * dma_release_from_contiguous() - release allocated pages
+ * dma_free_contiguous() - release allocated pages
  * @dev:   Pointer to device for which the pages were allocated.
- * @pages: Allocated pages.
- * @count: Number of allocated pages.
+ * @page:  Pointer to the allocated pages.
+ * @size:  Size of allocated pages.
  *
- * This function releases memory allocated by dma_alloc_from_contiguous().
- * It returns false when provided pages do not belong to contiguous area and
- * true otherwise.
+ * This function releases memory allocated by dma_alloc_contiguous(). As the
+ * cma_release returns false when provided pages do not belong to contiguous
+ * area and true otherwise, this function then does a fallback __free_pages()
+ * upon a false-return.
  */
-bool dma_release_from_contiguous(struct device *dev, struct page *pages,
-				 int count)
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size)
 {
-	return cma_release(dev_get_cma_area(dev), pages, count);
+	if (!cma_release(dev_get_cma_area(dev), page, size >> PAGE_SHIFT))
+		__free_pages(page, get_order(size));
 }
 
 /*
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 2c2772e9702a..0816c1e8b05a 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -96,8 +96,6 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
 struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
-	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	int page_order = get_order(size);
 	struct page *page = NULL;
 	u64 phys_mask;
 
@@ -109,20 +107,9 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
 	gfp |= __dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
 			&phys_mask);
 again:
-	/* CMA can be used only in the context which permits sleeping */
-	if (gfpflags_allow_blocking(gfp)) {
-		page = dma_alloc_from_contiguous(dev, count, page_order,
-						 gfp & __GFP_NOWARN);
-		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
-			dma_release_from_contiguous(dev, page, count);
-			page = NULL;
-		}
-	}
-	if (!page)
-		page = alloc_pages_node(dev_to_node(dev), gfp, page_order);
-
+	page = dma_alloc_contiguous(dev, size, gfp);
 	if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
-		__free_pages(page, page_order);
+		dma_free_contiguous(dev, page, size);
 		page = NULL;
 
 		if (IS_ENABLED(CONFIG_ZONE_DMA32) &&
@@ -154,7 +141,7 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 	if (PageHighMem(page)) {
 		/*
 		 * Depending on the cma= arguments and per-arch setup
-		 * dma_alloc_from_contiguous could return highmem pages.
+		 * dma_alloc_contiguous could return highmem pages.
 		 * Without remapping there is no way to return them here,
 		 * so log an error and fail.
 		 */
@@ -176,10 +163,7 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 
 void __dma_direct_free_pages(struct device *dev, size_t size, struct page *page)
 {
-	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-
-	if (!dma_release_from_contiguous(dev, page, count))
-		__free_pages(page, get_order(size));
+	dma_free_contiguous(dev, page, size);
 }
 
 void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
diff --git a/kernel/dma/remap.c b/kernel/dma/remap.c
index 2b750f13bc8f..9512684a18b8 100644
--- a/kernel/dma/remap.c
+++ b/kernel/dma/remap.c
@@ -107,17 +107,11 @@ early_param("coherent_pool", early_coherent_pool);
 
 int __init dma_atomic_pool_init(gfp_t gfp, pgprot_t prot)
 {
-	unsigned int pool_size_order = get_order(atomic_pool_size);
-	unsigned long nr_pages = atomic_pool_size >> PAGE_SHIFT;
 	struct page *page;
 	void *addr;
 	int ret;
 
-	if (dev_get_cma_area(NULL))
-		page = dma_alloc_from_contiguous(NULL, nr_pages,
-						 pool_size_order, false);
-	else
-		page = alloc_pages(gfp, pool_size_order);
+	page = dma_alloc_contiguous(NULL, atomic_pool_size, gfp);
 	if (!page)
 		goto out;
 
@@ -148,8 +142,7 @@ int __init dma_atomic_pool_init(gfp_t gfp, pgprot_t prot)
 	gen_pool_destroy(atomic_pool);
 	atomic_pool = NULL;
 free_page:
-	if (!dma_release_from_contiguous(NULL, page, nr_pages))
-		__free_pages(page, pool_size_order);
+	dma_free_contiguous(NULL, page, atomic_pool_size);
 out:
 	pr_err("DMA: failed to allocate %zu KiB pool for atomic coherent allocation\n",
 		atomic_pool_size / 1024);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
