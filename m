Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443E61FF754
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2rbgwlKmU3ub5nMawdCa4n+LVdud/ojQrhnssINORcI=; b=AaYzmUUCttoZLI19YjDJ+n5wSp
	L+/5T96RWfYmQkIDKWMBVlsLredKqPJuEIq7mmgytig+flQ3QAd+Gstq8bFqBMdeM8r+Rzq86p/sg
	M7g233O/0wDEcGRylsL44N0uwt+p7vj09ePHp4XS5NI4Ka9yUKWJIvPOiLEBMXRpyOGOacVZpX7r3
	3VqkooTvUlHCq2aZaceBa4Gd5Wqzgzz/kJkTjlzpjnmK5HeydPmSRkIIdRRORTQ+b4xn8MFK2HWXw
	/NlLmxMy1pvWf7ztjM/hEcrhwzTJhOBO0HCdPTm8LGndFDFXBqpnUSYLEyZpIfNdJtf2MbpCh1Xon
	lF1gTK5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwej-0004CU-5X; Thu, 18 Jun 2020 15:40:45 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweM-00049S-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:24 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154017euoutp02806d467f3f7ee6fb7d02bb7548c6a500~ZrZlGOAog1250012500euoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154017euoutp02806d467f3f7ee6fb7d02bb7548c6a500~ZrZlGOAog1250012500euoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494817;
 bh=o3n17PAPqgr5Ky+VD2W1n0eo3Kk6jU14NOp7eM+meSo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RQapxnEsrhTXSEyk/0sE36/B39owhY0NsCvTzc4ZIqCnL4e+1aoDZXZdGyd8rm+PJ
 frBc1MwX1zKfPUzHp30c+azsrXMLSmxJIClSGNGwNvH8HDimx/UvYeoYJTM8Rb5J8U
 xTysbmhfowOWIXH/sc97Xe5rE8FHXnv3IYL24Hoo=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154016eucas1p11edbf62c873dc040bab2d0300927626f~ZrZkfubXZ1547315473eucas1p1G;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9F.50.60698.0EA8BEE5; Thu, 18
 Jun 2020 16:40:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154016eucas1p1bd6cf758a2fe10a7c2e819b242af474f~ZrZkKtUXL1547315473eucas1p1F;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154016eusmtrp11d53bbb6e6788610ec960d3c01a06577~ZrZkJ7ck52169821698eusmtrp1I;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-18-5eeb8ae02add
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7F.D9.07950.FDA8BEE5; Thu, 18
 Jun 2020 16:40:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154015eusmtip161d3280cb144e94130059b1124cce1f4~ZrZjgr6ee0833608336eusmtip1M;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 03/36] drm: core: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:24 +0200
Message-Id: <20200618153956.29558-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzf756Xe8jZ41h+U0u7pqYtLzF7NjJafzypP7SsP2xdXTw7ylv3
 oKSti7m6Q5GFUSYrHCd1RDEXwrFbl6Gb6grJ8pIpL9fETp7u6L/P6+/73Xc/AhH2YB5EfFIq
 I0uSJIhwR7Slb/XdoXHVnNhPoXSl8o0DPOp5aSNGbbQUItTIygJOqet7eVTl62BqeWSCR2kn
 TRg13PYApxp6PvOpR79eoJRCWY1RXT+/YVTzj0IszJnWVGgA3WGpRGltnRKnWy3jGF0xcIoe
 y9Xz6KbHN+hP1kmELhqtAXT7BzlO32muA3STIZNe0u6JFEQ7hsQyCfHpjMw39LxjXI/iDZrS
 4XU1v9zKk4P7nirgQEAyEE5Vj/JUwJEQkrUA9uiz7WQZwLK8r8BGlgDUyZv4W5WbZqXdqAHw
 YbmZv12pevId5VI46Q9V8yqcw25kDoD9+U5cCCErEbi6pACc4UpGwt5XdzEOo6QXHFhZ/KcL
 yCNw6vcKsI3zhPXPOhEOO5Ch0KDPwbiHIPmRD4sK1PadjsH16Sl7wRXO6pvt+m5oKMpDbYVs
 ACeMDXwbyQNwOKvU3giGZuOfzV2Jzf28YWObr00Oh2ZLBcLJkHSGo/MunIxswnstJXZZAG8r
 hLb0flimf7o9tmtwyB6hYd58kO1AhQCaai38AuBZ9n9WJQB1wJ1JYxOlDBuQxFzxYSWJbFqS
 1CcmOVELNv+WwapfeQl06xe6AUkAkZNgOmpOLMQk6WxGYjeABCJyExx9axALBbGSjGuMLPmc
 LC2BYbvBLgIVuQsCqmbOCkmpJJW5xDApjGzL5REOHnIQsTZbhUjbD4hxbz9D8A7rslEUFKZe
 zKHHBomIrIEv/SXi95EuppMXnStOnEk7bhL5BkrbuobilnNjrkdV8Sc21GNUuOmWX2vmWutM
 faBWKwoPHZNbRndqNNDa1+ceqbwsN4Ycnm8Pc9h3OiyDNet0EaXFivS4vbHRnQvFuAhl4yT+
 BxEZK/kLZ/QfUFcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7oPul7HGay5yGjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQyjrQdZinYq1rRO/sfUwPjVPkuRk4OCQETicY7nYxdjFwc
 QgJLGSX6DjSyQSRkJE5Oa2CFsIUl/lzrYoMo+sQo8fnFHkaQBJuAoUTXW4iEiEAno8S07o/s
 IA6zwApmiVf75rKAVAkL+EmsaO8FG8sioCpx8usnsG5eAVuJp9+/MkKskJdYveEAM4jNKWAn
 cfp4K9hqIaCa5x/a2CYw8i1gZFjFKJJaWpybnltspFecmFtcmpeul5yfu4kRGEfbjv3csoOx
 613wIUYBDkYlHt4XIa/jhFgTy4orcw8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqTWnyI0RTo
 qInMUqLJ+cAYzyuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwBh1
 SF3zfNKpu10VR0+bP9ogy38gsle7Pt3kPAN/1u+vSbu6ZYTDg3N6Nx6a0RK7MveshKKmppP4
 wcnSZxfPn73w9JMnT3ettuR6kq2yYN06Yf7ZQvYnbA6ybH7l8FQs14Zd9eXsXlbfF137dt+4
 vbPxr2Zm9zM/j2jLamWedZdOrtu9hOmE1CElluKMREMt5qLiRADdkKG+uQIAAA==
X-CMS-MailID: 20200618154016eucas1p1bd6cf758a2fe10a7c2e819b242af474f
X-Msg-Generator: CA
X-RootMTR: 20200618154016eucas1p1bd6cf758a2fe10a7c2e819b242af474f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154016eucas1p1bd6cf758a2fe10a7c2e819b242af474f
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154016eucas1p1bd6cf758a2fe10a7c2e819b242af474f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084022_868506_6DA3EA7D 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/gpu/drm/drm_cache.c            |  2 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c | 14 +++++++++-----
 drivers/gpu/drm/drm_prime.c            | 11 ++++++-----
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index 03e01b000f7a..0fe3c496002a 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -127,7 +127,7 @@ drm_clflush_sg(struct sg_table *st)
 		struct sg_page_iter sg_iter;
 
 		mb(); /*CLFLUSH is ordered only by using memory barriers*/
-		for_each_sg_page(st->sgl, &sg_iter, st->nents, 0)
+		for_each_sgtable_page(st, &sg_iter, 0)
 			drm_clflush_page(sg_page_iter_page(&sg_iter));
 		mb(); /*Make sure that all cache line entry is flushed*/
 
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 4b7cfbac4daa..47d8211221f2 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -126,8 +126,8 @@ void drm_gem_shmem_free_object(struct drm_gem_object *obj)
 		drm_prime_gem_destroy(obj, shmem->sgt);
 	} else {
 		if (shmem->sgt) {
-			dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
-				     shmem->sgt->nents, DMA_BIDIRECTIONAL);
+			dma_unmap_sgtable(obj->dev->dev, shmem->sgt,
+					  DMA_BIDIRECTIONAL, 0);
 			sg_free_table(shmem->sgt);
 			kfree(shmem->sgt);
 		}
@@ -424,8 +424,7 @@ void drm_gem_shmem_purge_locked(struct drm_gem_object *obj)
 
 	WARN_ON(!drm_gem_shmem_is_purgeable(shmem));
 
-	dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
-		     shmem->sgt->nents, DMA_BIDIRECTIONAL);
+	dma_unmap_sgtable(obj->dev->dev, shmem->sgt, DMA_BIDIRECTIONAL, 0);
 	sg_free_table(shmem->sgt);
 	kfree(shmem->sgt);
 	shmem->sgt = NULL;
@@ -697,12 +696,17 @@ struct sg_table *drm_gem_shmem_get_pages_sgt(struct drm_gem_object *obj)
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
index 22953ee1e2ba..dc2efa8a8dd3 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
