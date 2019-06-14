Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C2745F95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=227+bK4Jw26xXakNBDbc9IP0dAq18+wmJjWx9a2IvkM=; b=GHiZG58cOCtc9O
	LcLpj40c4Y6i5BYh9N96FkfK0+b6KAQhKPu4Iwl3cmr6CWJsJv2JXPx35bDRlogwM6e1KydXFyXHr
	TLC21nucsghzXbpeM97u5ubz0K6/xo/NgFgyBPnritT3W+tnybn0Mb5/QKk9bkeYT2IbuIVutIEnh
	2R9/Kz5RH0zPmJpRomgGxy9MdwJVST9q4SkSxn63JTonuvudSKFUNIx6MdfLDhsG948gc9P/RqrFI
	IrbVPs/x+KKuI2Usj5RCcw9wJ3B1nYAdp/testmcZNEZYsYEwxKTt2ti7PMZdxHffzzUymFCoEB4X
	C/euwmtnn3Ct8t624vIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmdR-0004hL-9J; Fri, 14 Jun 2019 13:52:53 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZ7-0005kh-Ep; Fri, 14 Jun 2019 13:48:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 15/16] dma-mapping: clear __GFP_COMP in dma_alloc_attrs
Date: Fri, 14 Jun 2019 15:47:25 +0200
Message-Id: <20190614134726.3827-16-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lift the code to clear __GFP_COMP from arm into the common DMA
allocator path.  For one this fixes the various other patches that
call alloc_pages_exact or split_page in case a bogus driver passes
the argument, and it also prepares for doing exact allocation in
the generic dma-direct allocator.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping.c | 17 -----------------
 kernel/dma/mapping.c      |  9 +++++++++
 2 files changed, 9 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 0a75058c11f3..86135feb2c05 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -759,14 +759,6 @@ static void *__dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 	if (mask < 0xffffffffULL)
 		gfp |= GFP_DMA;
 
-	/*
-	 * Following is a work-around (a.k.a. hack) to prevent pages
-	 * with __GFP_COMP being passed to split_page() which cannot
-	 * handle them.  The real problem is that this flag probably
-	 * should be 0 on ARM as it is not supported on this
-	 * platform; see CONFIG_HUGETLBFS.
-	 */
-	gfp &= ~(__GFP_COMP);
 	args.gfp = gfp;
 
 	*handle = DMA_MAPPING_ERROR;
@@ -1527,15 +1519,6 @@ static void *__arm_iommu_alloc_attrs(struct device *dev, size_t size,
 		return __iommu_alloc_simple(dev, size, gfp, handle,
 					    coherent_flag, attrs);
 
-	/*
-	 * Following is a work-around (a.k.a. hack) to prevent pages
-	 * with __GFP_COMP being passed to split_page() which cannot
-	 * handle them.  The real problem is that this flag probably
-	 * should be 0 on ARM as it is not supported on this
-	 * platform; see CONFIG_HUGETLBFS.
-	 */
-	gfp &= ~(__GFP_COMP);
-
 	pages = __iommu_alloc_buffer(dev, size, gfp, attrs, coherent_flag);
 	if (!pages)
 		return NULL;
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index f7afdadb6770..4b618e1abbc1 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -252,6 +252,15 @@ void *dma_alloc_attrs(struct device *dev, size_t size, dma_addr_t *dma_handle,
 	/* let the implementation decide on the zone to allocate from: */
 	flag &= ~(__GFP_DMA | __GFP_DMA32 | __GFP_HIGHMEM);
 
+	/*
+	 * __GFP_COMP interacts badly with splitting up a larger order
+	 * allocation.  But as our allocations might not even come from the
+	 * page allocator, the callers can't rely on the fact that they
+	 * even get pages, never mind which kind.
+	 */
+	if (WARN_ON_ONCE(flag & __GFP_COMP))
+		flag &= ~__GFP_COMP;
+
 	if (dma_is_direct(ops))
 		cpu_addr = dma_direct_alloc(dev, size, dma_handle, flag, attrs);
 	else if (ops->alloc)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
