Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F1A28FD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 06:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gy6aSeinRa56DGncGzJ4RU9rrLzDGDpcuhVqP8xcMJE=; b=XVRKKl2y+us4RPS7dV5PKTVhIp
	gstRH24NdN3+NrvzRmvrIFetk9UWCNq61/JcP6WsIb1W0Jj04Ep70KqWiTRaAUAtICJ3JqOKS6B7R
	2UK4nIcSNY/kRwq5zfviOq/n5DR0ItWCMsmnnaKYxyQdnSM+KstrNCcpdVH/P7oaEKLCwAXdcA2OT
	FKlDTe1e8lYH5NyL4GBEIQcgf+RlLWevfLGk067PEjBqBRGanZdqMELiYmDY7EiitHPm+bVazJ19H
	krK7vKQ/mYOjUih5soyuDacFEdZc1js/PZFOftCsCIbqAyB5eR/MUV7TImIl6v7l0k3mO5B4nive3
	4XMWSkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1VS-0001EY-OP; Fri, 24 May 2019 04:08:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Uz-0000r6-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 04:08:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so4281016pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 21:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dTxvT9mC2yTH7bA91mv9m7CkISDrjjXm+XA0cpum2uY=;
 b=q3gEWc9Yk89TvNqPulhJbgJnR9XjIbib6zN5vu6rt9OmbdYwblIxnrH8BOSiXOXKMh
 no0A6P3H8sQToDEDZiSOhSf63yZWHyOvo/zSUVk758PfIb13+PYZiXOIblYzRQEW6Bu4
 IDgMFMLl2MvpprV+li8xjmqiXDGLFlZhfIZRlDmGHdC4Wy8I4brg3QEr6BIdinuFFeJN
 /6AlLeG32l07sXTU+ncXCf756W2P3HZTowLV+FguNBHfE6i/TYpJkkLyT8aXadyNv0u8
 kIBxcuwGu6KNFrUOJreBc7Z+0o1tRuMOxF59N7F6yoY/UsHsPltbcyTJasXPsdgm3Ek+
 aWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dTxvT9mC2yTH7bA91mv9m7CkISDrjjXm+XA0cpum2uY=;
 b=QsTYHVF5sXv+dryD/A5o/19waLMajCS4x1H7o0iKbgjqjXrJAPPi9vG5S6kvNEjqP0
 qRlh3piQE0NiLC+8Sc2isA0PpRBio0DrilhOl9MGBP7sWERdMyZkm1aPAD30GyI582FM
 Cb34a6MF6hZHtpEeK4Jc3KzDLOMm3tKXcJ8W0MTw7SEfyPsR+P98Uh50QS+yUn5mZJgS
 YqrzqlwcybYkcSaEsae/WV3EnDwDfXr1CPzFPJjm7VFACWv6L01KaNprHVp5ys2b2fu1
 UG8UcXqkvYYZ7XobbqkZM5Gidk7BUCLpssLViclGttbCjJY3eygK8cPSHswLIrfdLsOn
 kvLQ==
X-Gm-Message-State: APjAAAUVZ6Dl1t8PhxbHgKjzqIae2woiDAUYjCl41U7bWiNVRXWNd35c
 i2MkgRo/8gXxP4CcMQIsWvA=
X-Google-Smtp-Source: APXvYqwWGeEz8UB+yjAPWZ/fzf8KpSxJxakwAqDiMCEdYJOOa5hkqutsEhSaAMyi9ujtJEHiGf9BVA==
X-Received: by 2002:aa7:864e:: with SMTP id a14mr99209859pfo.132.1558670883726; 
 Thu, 23 May 2019 21:08:03 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id e123sm786412pgc.29.2019.05.23.21.08.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 21:08:03 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [PATCH v3 1/2] dma-contiguous: Abstract dma_{alloc, free}_contiguous()
Date: Thu, 23 May 2019 21:06:32 -0700
Message-Id: <20190524040633.16854-2-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524040633.16854-1-nicoleotsuka@gmail.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_210806_003305_1D90D177 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 dann.frazier@canonical.com, akpm@linux-foundation.org, treding@nvidia.com,
 dwmw2@infradead.org, iamjoonsoo.kim@lge.com,
 linux-arm-kernel@lists.infradead.org
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
operations into the two new functions: dma_{alloc,free}_contiguous.

As some callers of dma_{alloc,release}_from_contiguous() might be
complicated, this patch just implements these two new functions to
kernel/dma/direct.c only as an initial step.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
Changelog
v2->v3:
 * Added missing "static inline" in header file to fix build error.
v1->v2:
 * Added new functions beside the old ones so we can replace callers
   one by one later.
 * Applied new functions to dma/direct.c only, because it's the best
   example caller to apply and should be safe with the new functions.

 include/linux/dma-contiguous.h | 11 ++++++++
 kernel/dma/contiguous.c        | 48 ++++++++++++++++++++++++++++++++++
 kernel/dma/direct.c            | 24 +++--------------
 3 files changed, 63 insertions(+), 20 deletions(-)

diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index f247e8aa5e3d..00a370c1c140 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -115,6 +115,8 @@ struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
 				       unsigned int order, bool no_warn);
 bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 				 int count);
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp);
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size);
 
 #else
 
@@ -157,6 +159,15 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 	return false;
 }
 
+static inline
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
+{
+	return NULL;
+}
+
+static inline
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size) { }
+
 #endif
 
 #endif
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index b2a87905846d..21f39a6cb04f 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -214,6 +214,54 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 	return cma_release(dev_get_cma_area(dev), pages, count);
 }
 
+/**
+ * dma_alloc_contiguous() - allocate contiguous pages
+ * @dev:   Pointer to device for which the allocation is performed.
+ * @size:  Requested allocation size.
+ * @gfp:   Allocation flags.
+ *
+ * This function allocates contiguous memory buffer for specified device. It
+ * first tries to use device specific contiguous memory area if available or
+ * the default global one, then tries a fallback allocation of normal pages.
+ */
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
+{
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
+
+	return page;
+}
+
+/**
+ * dma_free_contiguous() - release allocated pages
+ * @dev:   Pointer to device for which the pages were allocated.
+ * @page:  Pointer to the allocated pages.
+ * @size:  Size of allocated pages.
+ *
+ * This function releases memory allocated by dma_alloc_contiguous(). As the
+ * cma_release returns false when provided pages do not belong to contiguous
+ * area and true otherwise, this function then does a fallback __free_pages()
+ * upon a false-return.
+ */
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size)
+{
+	if (!cma_release(dev_get_cma_area(dev), page, size >> PAGE_SHIFT))
+		__free_pages(page, get_order(size));
+}
+
 /*
  * Support for reserved memory regions defined in device tree
  */
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
