Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19401A7D01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9Hcmv/EC4hSuYqtyvkP8Zs8s6lntoXGaRP3m1+/Mcg=; b=Zf5IWo9fWk+IlW
	aOWiUtT8gxq/ZU+ZclDwlM8gxkm6EG3efIYr4Mz4dqknfUUdhDf1SVYB/bL/Ecpsa6FAFFF7Gh0LW
	LYQX+259+8mg+jxVciYd7xrhG+pddG23ACiLj8grJY8LaydPHGekqEtLO5S3a32CNIs+M+5Q6EYfJ
	RWWyWpm/QJ3LMrN3UTWL9pgRsaP2x3CLBPD7N8m5ew0vWG0Y1r6KTO7vVdZbQ14uYz+Y/rWmy2uYt
	7kmtrHS2Z5dLtDe9ubu9rLzNeCwddM8dSwnwUamjZy/yipDZv8e2j1oqBc4NMyolUxmFJjObSCATE
	KleB5Su4GOe14dY0t+2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLTN-0005sK-VZ; Tue, 14 Apr 2020 13:19:30 +0000
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOs-000753-7t; Tue, 14 Apr 2020 13:14:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 17/29] mm: remove unmap_vmap_area
Date: Tue, 14 Apr 2020 15:13:36 +0200
Message-Id: <20200414131348.444715-18-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414131348.444715-1-hch@lst.de>
References: <20200414131348.444715-1-hch@lst.de>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function just has a single caller, open code it there.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 mm/vmalloc.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index b0c7cdc8701a..258220b203f1 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -1247,14 +1247,6 @@ int unregister_vmap_purge_notifier(struct notifier_block *nb)
 }
 EXPORT_SYMBOL_GPL(unregister_vmap_purge_notifier);
 
-/*
- * Clear the pagetable entries of a given vmap_area
- */
-static void unmap_vmap_area(struct vmap_area *va)
-{
-	unmap_kernel_range_noflush(va->va_start, va->va_end - va->va_start);
-}
-
 /*
  * lazy_max_pages is the maximum amount of virtual address space we gather up
  * before attempting to purge with a TLB flush.
@@ -1416,7 +1408,7 @@ static void free_vmap_area_noflush(struct vmap_area *va)
 static void free_unmap_vmap_area(struct vmap_area *va)
 {
 	flush_cache_vunmap(va->va_start, va->va_end);
-	unmap_vmap_area(va);
+	unmap_kernel_range_noflush(va->va_start, va->va_end - va->va_start);
 	if (debug_pagealloc_enabled_static())
 		flush_tlb_kernel_range(va->va_start, va->va_end);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
