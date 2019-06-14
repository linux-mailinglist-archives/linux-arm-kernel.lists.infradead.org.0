Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FB345F9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zj+NDzq9lDstvBrRnaMwHzqEYkeDv+y3jkVh4kwYrRw=; b=u3IE2b6zgMUr44
	oPcBtPNwY/E0NEBvADewt46OA/0V1ScxEKhahg1OI7AGCEnJRvTPCAItdoMQbHTjyKX/Nwc8763+V
	oODUiQ/CukxAAC0iv3eM8/Mz/2QfsdA4x0oRscIKcznXSA07IQM4a9lZ9HuxWjxNb7d57nVt9Qeqw
	ebpp9/m8pKf/e9N36KzkGLETkK9OXwiMUaosxCYEbAUX5ZDhigLRsHmM4Q3u184Iu9YG9CAdfNDoW
	TxKqUQYVPLArHG6vBQQPW+JAIxtpZKEjXuJ2MblMODzYSCHeuP2/i4841mPxMxs3om/hIuqzFCUwv
	R/xJk/HS0BxPSuDT2nhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbme2-0005gT-Dm; Fri, 14 Jun 2019 13:53:30 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZB-0005nI-Ab; Fri, 14 Jun 2019 13:48:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Date: Fri, 14 Jun 2019 15:47:26 +0200
Message-Id: <20190614134726.3827-17-hch@lst.de>
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

Many architectures (e.g. arm, m68 and sh) have always used exact
allocation in their dma coherent allocator, which avoids a lot of
memory waste especially for larger allocations.  Lift this behavior
into the generic allocator so that dma-direct and the generic IOMMU
code benefit from this behavior as well.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/dma-contiguous.h |  8 +++++---
 kernel/dma/contiguous.c        | 17 +++++++++++------
 2 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index c05d4e661489..2e542e314acf 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -161,15 +161,17 @@ static inline struct page *dma_alloc_contiguous(struct device *dev, size_t size,
 		gfp_t gfp)
 {
 	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
-	size_t align = get_order(PAGE_ALIGN(size));
+	void *cpu_addr = alloc_pages_exact_node(node, size, gfp);
 
-	return alloc_pages_node(node, gfp, align);
+	if (!cpu_addr)
+		return NULL;
+	return virt_to_page(p);
 }
 
 static inline void dma_free_contiguous(struct device *dev, struct page *page,
 		size_t size)
 {
-	__free_pages(page, get_order(size));
+	free_pages_exact(page_address(page), get_order(size));
 }
 
 #endif
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index bfc0c17f2a3d..84f41eea2741 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -232,9 +232,8 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 {
 	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
 	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	size_t align = get_order(PAGE_ALIGN(size));
-	struct page *page = NULL;
 	struct cma *cma = NULL;
+	void *cpu_addr;
 
 	if (dev && dev->cma_area)
 		cma = dev->cma_area;
@@ -243,14 +242,20 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 
 	/* CMA can be used only in the context which permits sleeping */
 	if (cma && gfpflags_allow_blocking(gfp)) {
+		size_t align = get_order(PAGE_ALIGN(size));
+		struct page *page;
+
 		align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
 		page = cma_alloc(cma, count, align, gfp & __GFP_NOWARN);
+		if (page)
+			return page;
 	}
 
 	/* Fallback allocation of normal pages */
-	if (!page)
-		page = alloc_pages_node(node, gfp, align);
-	return page;
+	cpu_addr = alloc_pages_exact_node(node, size, gfp);
+	if (!cpu_addr)
+		return NULL;
+	return virt_to_page(cpu_addr);
 }
 
 /**
@@ -267,7 +272,7 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 void dma_free_contiguous(struct device *dev, struct page *page, size_t size)
 {
 	if (!cma_release(dev_get_cma_area(dev), page, size >> PAGE_SHIFT))
-		__free_pages(page, get_order(size));
+		free_pages_exact(page_address(page), get_order(size));
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
