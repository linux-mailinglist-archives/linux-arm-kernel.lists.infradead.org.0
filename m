Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402701D157E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iSOLIObEFCL6pXxfUAyV+yvie02ArIJa4YUDjWyfsi0=; b=inHOgKZMOatlRbIZrH58OG4aKZ
	HRvHQlYMDeXYxSuefYwTE/ilhN6OV1sDRaMvXu4Bo02yDQSvkz5dfkfdGNb250BTp6EmPXc97NQt/
	J3f5mq60izGKiCROdk2Hu0op3cENEjnFfjJKHpRpsmzIjtj7+OaElEDCdk8le+eEpOvcmS/3Hdc7X
	aSNYJGPGZHkf9doiypJMrRLe2R4WhK++8yKTVJH2Na6j9Xi6zFRAcNhg6XIIc+nWukgrJ+OSA5CYB
	SpsclcFco+E+mbup7E8xy30kRkRdHqIJBgd+mEUz5LSgpz/HSBHWZUZN5d/PichPuaWTqQlyUVzlj
	jHOQwjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrXe-0002yP-8B; Wed, 13 May 2020 13:35:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVO-0001NA-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133301euoutp02c104fe3e5742d6dcedec05d79bfd5dfa~OmcL5hIMq3219432194euoutp02l
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133301euoutp02c104fe3e5742d6dcedec05d79bfd5dfa~OmcL5hIMq3219432194euoutp02l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376781;
 bh=e7ABmfdI9B75hvMJCYvhxwC6RVc5LYcz1+/cLzejBgg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Dcvh8Q0JWcT14B27Z1fkEDNvuXrksXNwVQ+nzr4MCIIsRCiPlKGKrkG8rrkgeoY8i
 uDKRvy2HHxobtoqJQHHQbvBKHEiR1XZIRjCOEgJjuAPwrteAwdAUAUCpi7u24ApN5C
 V/3n1xGK4pZic94/7ntIWsW8QMC/S73ywiqILAO8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133300eucas1p20e8f3961cf2d5145cfe0ca51afd5343c~OmcLnX4n62029120291eucas1p2P;
 Wed, 13 May 2020 13:33:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id CD.C8.60698.C07FBBE5; Wed, 13
 May 2020 14:33:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133300eucas1p2fced04876641789a0f5623e70c910690~OmcLRCwPi2029120291eucas1p2O;
 Wed, 13 May 2020 13:33:00 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133300eusmtrp1cd8bfdda32f837a14db621e343c68c1d~OmcLQPYgQ0994509945eusmtrp1f;
 Wed, 13 May 2020 13:33:00 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-b3-5ebbf70c44e3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F0.37.07950.C07FBBE5; Wed, 13
 May 2020 14:33:00 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133259eusmtip13a44c6d820b4a359d67a3c82e9e36954~OmcKaR9DZ0698906989eusmtip1l;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 06/38] drm: core: fix common struct sg_table related issues
Date: Wed, 13 May 2020 15:32:13 +0200
Message-Id: <20200513133245.6408-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djPc7o833fHGTzaZGzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o7hsUlJzMstSi/TtErgyprRMYi54pVZxrGMiawPj
 aoUuRk4OCQETiXsX9jGC2EICKxglDhzJ7GLkArK/MEpsO/WRCcL5zChx89MLRpiO5sPzWSAS
 yxkllv+fwATXsuH0crAqNgFDia63XWwgtohAK6PEiV4ekCJmgQXMEj8/t4EVCQsESPw7fpYV
 xGYRUJXY1HaIBcTmFbCROL/xLSvEOnmJ1RsOMIPYnAK2Eq/u7AdbLSFwiV3i2t5rUDe5SMz7
 NIsFwhaWeHV8CzuELSNxenIPVEMzo8TDc2vZIZweRonLTTOguq0l7pz7BXQrB9B9mhLrd+lD
 hB0l1h7ZygISlhDgk7jxVhAkzAxkTto2nRkizCvR0SYEUa0mMev4Ori1By9cYoawPSSmHf3I
 Dgmhw0AnPJvAPIFRfhbCsgWMjKsYxVNLi3PTU4uN81LL9YoTc4tL89L1kvNzNzEC09bpf8e/
 7mDc9yfpEKMAB6MSD++D67vjhFgTy4orcw8xSnAwK4nw+q0HCvGmJFZWpRblxxeV5qQWH2KU
 5mBREuc1XvQyVkggPbEkNTs1tSC1CCbLxMEp1cC48G9az5EFfRc+/7x3cfL07uf3DEKUK2eK
 Lqh0EVSpWGqe+NZec84FjZzYD2FH9A6x+7KtUlIveNw90eOse+SKKmGbkzFNdTHeT8uEjczM
 40sqRAv0LlptywzNOi9hXXLr1pcIlyiGf5vSL0R47T0+90BFe8/XDZtfqe7uLyxsTJF8wxXx
 uFaJpTgj0VCLuag4EQA4A5qvVwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7o833fHGey6K2nRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQyprRMYi54pVZxrGMiawPjaoUuRk4OCQETiebD81lAbCGB
 pYwS98+WQMRlJE5Oa2CFsIUl/lzrYuti5AKq+cQocepEP1iCTcBQoustREJEoJNRYlr3R3YQ
 h1lgBbPEq31zwcYKC/hJvP3/gQnEZhFQldjUdggszitgI3F+41uoFfISqzccYAaxOQVsJV7d
 2Q91Ur7E3sX72CYw8i1gZFjFKJJaWpybnltspFecmFtcmpeul5yfu4kRGEXbjv3csoOx613w
 IUYBDkYlHl6LW7vjhFgTy4orcw8xSnAwK4nw+q0HCvGmJFZWpRblxxeV5qQWH2I0BTpqIrOU
 aHI+MMLzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwboic6vHj
 mM3PToayjcWP+3f6pArVF+VG+F/bJh7wUJcxeOeN+Mx7sUfO3NKp0I9+cHJlx/TZ77kCNzL4
 +q9vUuCd4qe6WnhWhvSJha1WcTUhkrJX3juXr/ybHb6urumKeOWu/Q/jjqo8zr0kfqzld1Q8
 8yVWZ4knnKUC2TNfXLB6d/Gf4eS9SizFGYmGWsxFxYkAspXa47gCAAA=
X-CMS-MailID: 20200513133300eucas1p2fced04876641789a0f5623e70c910690
X-Msg-Generator: CA
X-RootMTR: 20200513133300eucas1p2fced04876641789a0f5623e70c910690
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133300eucas1p2fced04876641789a0f5623e70c910690
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133300eucas1p2fced04876641789a0f5623e70c910690@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063302_786560_B25497DC 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
returns the number of the created entries in the DMA address space.
However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
dma_unmap_sg must be called with the original number of the entries
passed to the dma_map_sg().

struct sg_table is a common structure used for describing a non-contiguous
memory buffer, used commonly in the DRM and graphics subsystems. It
consists of a scatterlist with memory pages and DMA addresses (sgl entry),
as well as the number of scatterlist entries: CPU pages (orig_nents entry)
and DMA mapped pages (nents entry).

It turned out that it was a common mistake to misuse nents and orig_nents
entries, calling DMA-mapping functions with a wrong number of entries or
ignoring the number of mapped entries returned by the dma_map_sg()
function.

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/drm_cache.c            |  2 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c | 14 +++++++++-----
 drivers/gpu/drm/drm_prime.c            | 11 ++++++-----
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index 03e01b0..0fe3c49 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -127,7 +127,7 @@ static void drm_cache_flush_clflush(struct page *pages[],
 		struct sg_page_iter sg_iter;
 
 		mb(); /*CLFLUSH is ordered only by using memory barriers*/
-		for_each_sg_page(st->sgl, &sg_iter, st->nents, 0)
+		for_each_sgtable_page(st, &sg_iter, 0)
 			drm_clflush_page(sg_page_iter_page(&sg_iter));
 		mb(); /*Make sure that all cache line entry is flushed*/
 
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index df31e57..00a43e8 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -117,8 +117,8 @@ void drm_gem_shmem_free_object(struct drm_gem_object *obj)
 		kvfree(shmem->pages);
 	} else {
 		if (shmem->sgt) {
-			dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
-				     shmem->sgt->nents, DMA_BIDIRECTIONAL);
+			dma_unmap_sgtable(obj->dev->dev, shmem->sgt,
+					  DMA_BIDIRECTIONAL, 0);
 			sg_free_table(shmem->sgt);
 			kfree(shmem->sgt);
 		}
@@ -395,8 +395,7 @@ void drm_gem_shmem_purge_locked(struct drm_gem_object *obj)
 
 	WARN_ON(!drm_gem_shmem_is_purgeable(shmem));
 
-	dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
-		     shmem->sgt->nents, DMA_BIDIRECTIONAL);
+	dma_unmap_sgtable(obj->dev->dev, shmem->sgt, DMA_BIDIRECTIONAL, 0);
 	sg_free_table(shmem->sgt);
 	kfree(shmem->sgt);
 	shmem->sgt = NULL;
@@ -623,12 +622,17 @@ struct sg_table *drm_gem_shmem_get_pages_sgt(struct drm_gem_object *obj)
 		goto err_put_pages;
 	}
 	/* Map the pages for use by the h/w. */
-	dma_map_sg(obj->dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
+	ret = dma_map_sgtable(obj->dev->dev, sgt, DMA_BIDIRECTIONAL, 0);
+	if (ret)
+		goto err_free_sgt;
 
 	shmem->sgt = sgt;
 
 	return sgt;
 
+err_free_sgt:
+	sg_free_table(sgt);
+	kfree(sgt);
 err_put_pages:
 	drm_gem_shmem_put_pages(shmem);
 	return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index dfdf4d4..5ed22dd 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -617,6 +617,7 @@ struct sg_table *drm_gem_map_dma_buf(struct dma_buf_attachment *attach,
 {
 	struct drm_gem_object *obj = attach->dmabuf->priv;
 	struct sg_table *sgt;
+	int ret;
 
 	if (WARN_ON(dir == DMA_NONE))
 		return ERR_PTR(-EINVAL);
@@ -626,11 +627,12 @@ struct sg_table *drm_gem_map_dma_buf(struct dma_buf_attachment *attach,
 	else
 		sgt = obj->dev->driver->gem_prime_get_sg_table(obj);
 
-	if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-			      DMA_ATTR_SKIP_CPU_SYNC)) {
+	ret = dma_map_sgtable(attach->dev, sgt, dir,
+			      DMA_ATTR_SKIP_CPU_SYNC);
+	if (ret) {
 		sg_free_table(sgt);
 		kfree(sgt);
-		sgt = ERR_PTR(-ENOMEM);
+		sgt = ERR_PTR(ret);
 	}
 
 	return sgt;
@@ -652,8 +654,7 @@ void drm_gem_unmap_dma_buf(struct dma_buf_attachment *attach,
 	if (!sgt)
 		return;
 
-	dma_unmap_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-			   DMA_ATTR_SKIP_CPU_SYNC);
+	dma_unmap_sgtable(attach->dev, sgt, dir, DMA_ATTR_SKIP_CPU_SYNC);
 	sg_free_table(sgt);
 	kfree(sgt);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
