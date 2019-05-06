Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E41B1560B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zk8z1lkIZ6ACNoQTTh2Pnee3K/4P34lI6T/UpfsnV0Y=; b=TzUIrMWX2nEgma+AZAkieijkcR
	iY+iUEJqVA/af0dh1D6fU040pgfqHddfsMUk1VRVPzlcWJYzC7LGNPFFE525NJSkk6MMv3bUi3Q++
	1DgN2ihguzsTP5yEW7LSOL93jGzPRriXqFA9hfcqvCHmvfsAluDy8adj0sy4Ksk3IWhE27NvtbHon
	i2X3aIu9C1qyYTX9Ukz04nRBpDg5ETlkiX5XD7TdKoyVycAPS9x2JLcxmx5+pCKy/0LBER9YCz1Hf
	12EMEsdYt6B4xSdnVNeLEGD5BdK8EDp+Nek071kpmjorYGwPkbshPpMZwcRdVLZBvWUJ3dBt4n9YQ
	aMfczntw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmCv-0006g8-8S; Mon, 06 May 2019 22:35:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmCe-0006YY-7l
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 22:35:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id w22so5863087pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 15:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ej/Ro/6MoIBqWhxs/bm5kdLDOFr0cOwCG34qRqhI9Dc=;
 b=UPA6SoQYsSPvTylk1dQZ1L0t3hqYf8CMFgWp7WrrySREH4BXXS6CrosQyhYUxq6bzu
 0/auwEgH13pqwb88QCnI494RFvGSpdsh5ZsdoBk7ahVJF4k9yg8TUfwj2vcUYXRfdUkG
 X2eI1T0tAk6QpGuxNLfxbJyeDGQ/q9u7v5QBC3ggMYbrmLcdJ+5H6ZTVSd0qLbV4VhVb
 o5Icz83S/8nHIpj33SkFQH4XKYf05SRNqVWjpRglrGTupccHvJydIXKDY7NhBBKpxkAM
 Hh7rOspNjtP60Xq+iCpyecPwcmLwq+kKF9RstBjx6zkbMaEEHlc0IWgZMxxtGQFIu4VH
 n+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ej/Ro/6MoIBqWhxs/bm5kdLDOFr0cOwCG34qRqhI9Dc=;
 b=HYKhCDzranmW1Au1ImtYXbubuwm4BkR0mIMVuMbuZOn8eB0VwdnvAzLt5cMP6aUofy
 Ols0QDFei7/UuWcUe4MkEMz1uhdSt9eB9TMtDRisx/JjyGpY99LLfcIkSUOA4UujUAwB
 0V2TzZC2Gikte6qK66p2XuM4i3mcqHUXA30GEGQXbrSltUOYXA6RVx4Lw9FEBJXJAfov
 7XHA4Lx4sADv+UieNwno36V/zszYqMpb8ECabgAHyVCbJDSOfAHTTBBOdEw2A8i9hlRq
 0+MWyFAd7SMH6DKM/yaCd+udltMB1HCESzauCw1LakJGT30mSf8oEsICodz4x3v1Lgmh
 CscQ==
X-Gm-Message-State: APjAAAUNzUj+A5R75n9tqDjftX8jr+MTUSwmLVfrJSjF0eLinRdWSboN
 Yhsw5fvDYDDGlj28LCQzlpY=
X-Google-Smtp-Source: APXvYqwsKimZ9Q/0xbHPsNmrVpLZSdGARiXYhvF8TmpC5VJvQmzT9/PzK0TAk5oLAz87VaTu0/1l7g==
X-Received: by 2002:aa7:99c7:: with SMTP id v7mr37336357pfi.103.1557182115662; 
 Mon, 06 May 2019 15:35:15 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id c19sm14254976pgi.42.2019.05.06.15.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 15:35:15 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [PATCH v2 1/2] dma-contiguous: Abstract dma_{alloc, free}_contiguous()
Date: Mon,  6 May 2019 15:33:33 -0700
Message-Id: <20190506223334.1834-2-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506223334.1834-1-nicoleotsuka@gmail.com>
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_153520_284046_D81BDEB7 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
operations into the two new functions: dma_{alloc,free}_contiguous.

As some callers of dma_{alloc,release}_from_contiguous() might be
complicated, this patch just implements these two new functions to
kernel/dma/direct.c only as an initial step.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
Changelog
v1->v2:
 * Added new functions beside the old ones so we can replace callers
   one by one later.
 * Applied new functions to dma/direct.c only, because it's the best
   example caller to apply and should be safe with the new functions.

 include/linux/dma-contiguous.h | 10 +++++++
 kernel/dma/contiguous.c        | 48 ++++++++++++++++++++++++++++++++++
 kernel/dma/direct.c            | 24 +++--------------
 3 files changed, 62 insertions(+), 20 deletions(-)

diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index f247e8aa5e3d..dacbdcb91a89 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -115,6 +115,8 @@ struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
 				       unsigned int order, bool no_warn);
 bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 				 int count);
+struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp);
+void dma_free_contiguous(struct device *dev, struct page *page, size_t size);
 
 #else
 
@@ -157,6 +159,14 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 	return false;
 }
 
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
