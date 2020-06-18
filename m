Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D9D1FF7A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tL0HMNmFSErr7xn6MOKb3KXiKllNyDoLmS4J/d6Khng=; b=WZP6NR/pFptoVwFMNg2d3bj+51
	LbYptSpfRXVyJ2264V/QTwcD2Jyj2lAB/SozTuQVwBwE8LXuzrSQHpq+F/Xv9m/zgILjp651QHvtB
	Omtv7kXvgPsP6beC3vSTvECMTn70UO5PSPepxJI9MmUlxONQw2sGaXaMTp3k4TEGSH5BIv9HMETg5
	GkS7ZQgFJv7/SnOQQCAIHjM7Z7TacswfAiWPQPXyoplTxaAlqxrHysg+0HaQ7SzN65WSsOhN+cu6n
	fRcRftCE80z8qRqPPjL+HiwZHXl3t726W7bOMa7DAtKTG8HWH0kbUe/vXMClCNcxuqMSRHrYZPJci
	x8zbonNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwhy-0006yk-Fe; Thu, 18 Jun 2020 15:44:06 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweO-00049W-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154018euoutp01e8a490e5e0359486de50c3227e5b29c4~ZrZm2TaGA1835418354euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154018euoutp01e8a490e5e0359486de50c3227e5b29c4~ZrZm2TaGA1835418354euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494818;
 bh=BUDsnzPfM8pecFmTHTRzLrmx2aEqpYyXAUW4mvYfV28=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j2ZV2oFRMrGCaywwNNrqCbdbyyW5U75ngXK/V2zR6qmOh/dluGTEVEDky5ITNQEyk
 4g/IpRjRpvljHuRi+CSWA61J6/AoBy/Pxh2Y7DmFG/EnxdhCRKO9NKMfFTE0sDA3r0
 t/q8+U6oz1QKTxGfo5lDIRPeV9wbaXUeHG5lSE/k=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154018eucas1p26ba7a8cdc44363cbbd10ab03428eab17~ZrZmi99Za0607806078eucas1p2O;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DE.0F.61286.2EA8BEE5; Thu, 18
 Jun 2020 16:40:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154018eucas1p1037a99bc0dc24e0ba61242e7b34c5818~ZrZmBgStb1248212482eucas1p1j;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154018eusmtrp26611e9f6b80cabf5be0abbf0d9a6e422~ZrZmA3jaW0399203992eusmtrp2T;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-be-5eeb8ae2fe0e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D3.EE.08375.1EA8BEE5; Thu, 18
 Jun 2020 16:40:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154017eusmtip183dd4207368bf9a26fc090eb2dfead5c~ZrZlXRMas0834108341eusmtip1L;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 06/36] drm: etnaviv: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:27 +0200
Message-Id: <20200618153956.29558-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUURzHeTN7jJsr4yr5sFLYyjDIIyOmPNASHEhIyIikNlcd1HJ13VFL
 gxKvbM3byrZLTfK+VtnKWzFXs7wzLUUtz1SSvMpQcx2t/z6/7+/75fve42GoQMk2xHz9gyiZ
 v9hPyOGxVM2/O458lc+ILNbrDhDx7a0IUZZewiY2VMko0bv0g0NUpg9yibyCtwiRUWdNjDwd
 QIjF3lGEUH7rYxM9lU84RFHTEJdomB9j2/PJwmeFgKxZzmCRr5ZH2ORwnBohy7Nvk1/Wv6Fk
 an8OIKsGwjlk4poFmVCRD8gFpZHLLjeejRfl5xtCyczt3Hk+K+UxXOnK/hsvm7s44SDBSA4w
 DOLH4OdZRA54mADPBfBj3xqXGRYBTOjP294sAFhaW8XaSeTdOc7oOQC+z3qwadJiEqooXQ1z
 cEson5NzNKyPRwPYEq+tYRQfRuCf6asa1sPPwdaKrq0sCz8INyI0fgzj47ZQVSTWyBA3hgWl
 9aiGtXA72KaOZmt6Id7Mhfc757mMyRH2KZpZDOvB7+qKbX0v3HjzHGECkQCOthdxmeEegD0R
 6YBxWcPB9tWtZhQ3hSWV5ozsAFdT8jnMhXVg/5wuc34dmKJ6iDIyH8bGCBi3CVSoi//VNnR2
 owyT8PHq+PaDJgO4PDTBTgLGiv9lGQDkAwMqmJZ4U7SlP3XdjBZL6GB/bzPPAIkSbP6ktnX1
 z9dgqdujEeAYEGrz7S/MiARscQgdKmkEEEOF+vxTH9pEAr6XODSMkgVckQX7UXQj2IOxhAZ8
 q6zpywLcWxxEXaMoKSXb2SKYlmE4iJzIjPP0mI1QzJ4NrXB1lwVlOqaLrLJFHqZpTtIT/U7v
 EJdLbia/Wma7jsqNUgrPxOZKs6iO8JsrU8XO9dU9TfPjLxwC9+0Os62+e7pscmkyWZWWVO18
 /uKUzZhra8Cj7BYTM/74J5ZhcI3kkNUtQa40MdBcORyV2nOyVtJC89qELNpHbHkYldHivwPO
 JYZFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7oPu17HGSzYYG3Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLXTPusFusXH2UyWLBfmuLB3NvMll8ufKQyWLT42usFpd3zWGzWHvkLrvF
 wQ9PWB14PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR/9fA4++
 LasYPT5vkgvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DL+L65jb3gu3LFsmMX2RoY++S6GDk4JARMJFa2m3UxcnEICSxllDj0ZwpbFyMnUFxG
 4uS0BlYIW1jiz7UuNoiiT4wS9w6uZQJJsAkYSnS9hUiICHQySkzr/sgOkmAWeM4k8bJFH8QW
 FgiUmLBhOdhUFgFVif9NIA0cHLwCthLb1iZCLJCXWL3hADOIzSlgJ3H6eCvYYiGgkucf2tgm
 MPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgl24793LyD8dLG4EOMAhyMSjy8L0Je
 xwmxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVEk/OBEZxXEm9o
 amhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoGR087TkcF3lcZ8E9kekdeH
 o9Lv8B/mTBCaxHFvwjzVYK7w9hTNqmyFM+8NN2vuWSx9Nyrc0tLfdG1JueXG17M/71opltFn
 zHBpZvajwDKbs0Iex9euvz3ndnhJhNAt/r21VV9kb3AaH/miOkc9JCZbv/tR9satuw+vaK49
 4OZjf09s0Wo/s5tKLMUZiYZazEXFiQDSfWdeqAIAAA==
X-CMS-MailID: 20200618154018eucas1p1037a99bc0dc24e0ba61242e7b34c5818
X-Msg-Generator: CA
X-RootMTR: 20200618154018eucas1p1037a99bc0dc24e0ba61242e7b34c5818
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154018eucas1p1037a99bc0dc24e0ba61242e7b34c5818
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154018eucas1p1037a99bc0dc24e0ba61242e7b34c5818@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084024_423748_2E657CA4 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, etnaviv@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>,
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
 drivers/gpu/drm/etnaviv/etnaviv_gem.c | 12 +++++-------
 drivers/gpu/drm/etnaviv/etnaviv_mmu.c | 13 +++----------
 2 files changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
index f5e5bb8ba953..9f4613f7e255 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
@@ -27,7 +27,7 @@ static void etnaviv_gem_scatter_map(struct etnaviv_gem_object *etnaviv_obj)
 	 * because display controller, GPU, etc. are not coherent.
 	 */
 	if (etnaviv_obj->flags & ETNA_BO_CACHE_MASK)
-		dma_map_sg(dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
+		dma_map_sgtable(dev->dev, sgt, DMA_BIDIRECTIONAL, 0);
 }
 
 static void etnaviv_gem_scatterlist_unmap(struct etnaviv_gem_object *etnaviv_obj)
@@ -51,7 +51,7 @@ static void etnaviv_gem_scatterlist_unmap(struct etnaviv_gem_object *etnaviv_obj
 	 * discard those writes.
 	 */
 	if (etnaviv_obj->flags & ETNA_BO_CACHE_MASK)
-		dma_unmap_sg(dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(dev->dev, sgt, DMA_BIDIRECTIONAL, 0);
 }
 
 /* called with etnaviv_obj->lock held */
@@ -404,9 +404,8 @@ int etnaviv_gem_cpu_prep(struct drm_gem_object *obj, u32 op,
 	}
 
 	if (etnaviv_obj->flags & ETNA_BO_CACHED) {
-		dma_sync_sg_for_cpu(dev->dev, etnaviv_obj->sgt->sgl,
-				    etnaviv_obj->sgt->nents,
-				    etnaviv_op_to_dma_dir(op));
+		dma_sync_sgtable_for_cpu(dev->dev, etnaviv_obj->sgt,
+					 etnaviv_op_to_dma_dir(op));
 		etnaviv_obj->last_cpu_prep_op = op;
 	}
 
@@ -421,8 +420,7 @@ int etnaviv_gem_cpu_fini(struct drm_gem_object *obj)
 	if (etnaviv_obj->flags & ETNA_BO_CACHED) {
 		/* fini without a prep is almost certainly a userspace error */
 		WARN_ON(etnaviv_obj->last_cpu_prep_op == 0);
-		dma_sync_sg_for_device(dev->dev, etnaviv_obj->sgt->sgl,
-			etnaviv_obj->sgt->nents,
+		dma_sync_sgtable_for_device(dev->dev, etnaviv_obj->sgt,
 			etnaviv_op_to_dma_dir(etnaviv_obj->last_cpu_prep_op));
 		etnaviv_obj->last_cpu_prep_op = 0;
 	}
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_mmu.c b/drivers/gpu/drm/etnaviv/etnaviv_mmu.c
index 3607d348c298..13b100553a0b 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_mmu.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_mmu.c
@@ -79,7 +79,7 @@ static int etnaviv_iommu_map(struct etnaviv_iommu_context *context, u32 iova,
 	if (!context || !sgt)
 		return -EINVAL;
 
-	for_each_sg(sgt->sgl, sg, sgt->nents, i) {
+	for_each_sgtable_dma_sg(sgt, sg, i) {
 		u32 pa = sg_dma_address(sg) - sg->offset;
 		size_t bytes = sg_dma_len(sg) + sg->offset;
 
@@ -95,14 +95,7 @@ static int etnaviv_iommu_map(struct etnaviv_iommu_context *context, u32 iova,
 	return 0;
 
 fail:
-	da = iova;
-
-	for_each_sg(sgt->sgl, sg, i, j) {
-		size_t bytes = sg_dma_len(sg) + sg->offset;
-
-		etnaviv_context_unmap(context, da, bytes);
-		da += bytes;
-	}
+	etnaviv_context_unmap(context, iova, da - iova);
 	return ret;
 }
 
@@ -113,7 +106,7 @@ static void etnaviv_iommu_unmap(struct etnaviv_iommu_context *context, u32 iova,
 	unsigned int da = iova;
 	int i;
 
-	for_each_sg(sgt->sgl, sg, sgt->nents, i) {
+	for_each_sgtable_dma_sg(sgt, sg, i) {
 		size_t bytes = sg_dma_len(sg) + sg->offset;
 
 		etnaviv_context_unmap(context, da, bytes);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
