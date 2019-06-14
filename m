Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1774C45F94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peiiTlwEhBQIhkqtzT69xa+QxjNN3YyW28B/9CkLSAU=; b=ljkUGZ3ZjJsY1I
	3OSVavXqnw2o37pniNShaZoGRAj+KMZz3l6dsbwiDhoeua/Wr/La4+EtGGR78JV+r2z0qQdrIrcQA
	xdR+wY5mwrdKBnDipSZew1RFE4i9P/hxH8/suWGDxNojckB1Q8sHpvFkCCeuSiQ/RcTRdsFr7eEnk
	b4xLrGOvkLWencxxkJFOXZTXDX5DGHcOnPU4OAaoc5o5SrN5YWv/5qVCGc9jIKiPxuhWNQkz+Zara
	qQ1/YACYjwZhlO2MRZujGQ4+ZKGtXyYcbnFHzH6rC3OssJrc9NXnFyfely7KDDTGaWkgjHfxVRnl1
	WlFQKoWrL0EqUIyqKBrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmd7-0004Mv-8f; Fri, 14 Jun 2019 13:52:33 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZ3-0005hB-Ky; Fri, 14 Jun 2019 13:48:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 14/16] mm: use alloc_pages_exact_node to implement
 alloc_pages_exact
Date: Fri, 14 Jun 2019 15:47:24 +0200
Message-Id: <20190614134726.3827-15-hch@lst.de>
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

No need to duplicate the logic over two functions that are almost the
same.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/gfp.h |  5 +++--
 mm/page_alloc.c     | 39 +++++++--------------------------------
 2 files changed, 10 insertions(+), 34 deletions(-)

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index 4274ea6bc72b..c616a23a3f81 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -530,9 +530,10 @@ extern struct page *alloc_pages_vma(gfp_t gfp_mask, int order,
 extern unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);
 extern unsigned long get_zeroed_page(gfp_t gfp_mask);
 
-void *alloc_pages_exact(size_t size, gfp_t gfp_mask);
 void free_pages_exact(void *virt, size_t size);
-void * __meminit alloc_pages_exact_node(int nid, size_t size, gfp_t gfp_mask);
+void *alloc_pages_exact_node(int nid, size_t size, gfp_t gfp_mask);
+#define alloc_pages_exact(size, gfp_mask) \
+	alloc_pages_exact_node(NUMA_NO_NODE, size, gfp_mask)
 
 #define __get_free_page(gfp_mask) \
 		__get_free_pages((gfp_mask), 0)
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index dd2fed66b656..dec68bd21a71 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -4859,34 +4859,6 @@ static void *make_alloc_exact(unsigned long addr, unsigned int order,
 	return (void *)addr;
 }
 
-/**
- * alloc_pages_exact - allocate an exact number physically-contiguous pages.
- * @size: the number of bytes to allocate
- * @gfp_mask: GFP flags for the allocation, must not contain __GFP_COMP
- *
- * This function is similar to alloc_pages(), except that it allocates the
- * minimum number of pages to satisfy the request.  alloc_pages() can only
- * allocate memory in power-of-two pages.
- *
- * This function is also limited by MAX_ORDER.
- *
- * Memory allocated by this function must be released by free_pages_exact().
- *
- * Return: pointer to the allocated area or %NULL in case of error.
- */
-void *alloc_pages_exact(size_t size, gfp_t gfp_mask)
-{
-	unsigned int order = get_order(size);
-	unsigned long addr;
-
-	if (WARN_ON_ONCE(gfp_mask & __GFP_COMP))
-		gfp_mask &= ~__GFP_COMP;
-
-	addr = __get_free_pages(gfp_mask, order);
-	return make_alloc_exact(addr, order, size);
-}
-EXPORT_SYMBOL(alloc_pages_exact);
-
 /**
  * alloc_pages_exact_node - allocate an exact number of physically-contiguous
  *			   pages on a node.
@@ -4894,12 +4866,15 @@ EXPORT_SYMBOL(alloc_pages_exact);
  * @size: the number of bytes to allocate
  * @gfp_mask: GFP flags for the allocation, must not contain __GFP_COMP
  *
- * Like alloc_pages_exact(), but try to allocate on node nid first before falling
- * back.
+ * This function is similar to alloc_pages_node(), except that it allocates the
+ * minimum number of pages to satisfy the request while alloc_pages() can only
+ * allocate memory in power-of-two pages.  This function is also limited by
+ * MAX_ORDER.
  *
- * Return: pointer to the allocated area or %NULL in case of error.
+ * Returns a pointer to the allocated area or %NULL in case of error, memory
+ * allocated by this function must be released by free_pages_exact().
  */
-void * __meminit alloc_pages_exact_node(int nid, size_t size, gfp_t gfp_mask)
+void *alloc_pages_exact_node(int nid, size_t size, gfp_t gfp_mask)
 {
 	unsigned int order = get_order(size);
 	struct page *p;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
