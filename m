Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60F01C5142
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vWErXn0XoI8gBP08Uo70w+KRMMxaw3GrB41JqgF1ZpI=; b=BAASd9QTi5uKxk0p3u0dq7YiW7
	WkEzhzO2F2g3Fuzse6rPHCUIgGe3xovuwyvZDUCbiwBuUQ9UQofIgLaKtlQ2nu+pF1Pw7p5YeCMod
	j+RMsLZHZTHs0XDfoR1FLAWl+byxUyoK0dnts6wy+OsyvUXyRB3TE0fUs6AxQ1jP6z/uOF5MMsRsM
	V2WV9ZSx4tmXiFjQ9HpFZQTRLsVrwDkIo0KRd6s/z2W6oBmFiiT5jrxPjvCoKH2PUdESWDvlgOUwr
	8sb3s5Af+9QWm4OODo1yff9h4UUBhSFrJDMnQy/wDF8vIH7o/UNK/Sxz0STjgS3di1WJDR/6N4DEG
	OZmoiQug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtI5-0006fW-1N; Tue, 05 May 2020 08:51:01 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDl-0000W4-Id
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:36 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084632euoutp02cf76a7445ef098eb26ed89bff3982ca7~MFXxPQz-c2636626366euoutp02W
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084632euoutp02cf76a7445ef098eb26ed89bff3982ca7~MFXxPQz-c2636626366euoutp02W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668392;
 bh=tHDlQyReDHSakP4n0w8zZwTHTfqtPZ5oVbBQ/2Iglzg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FM2Jkaut+Y7HVRWEQL1nVlIxQgdqHI4ZBXrddLrfxA2mOPi/8nQKa6a7Qxe0CyaUa
 H0vtaxloKnon32rhHz7qhMAFr+5vTNGew+L59j8yeVW2i3mQFTnMrwLxP5zHz1wFRE
 m1tAlryWS9KwqdJceZwENfDifMuGS+cg+6m1yArM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084631eucas1p27b5428febcb7e27e63404bc9e2562723~MFXw_RSkk2337523375eucas1p26;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E4.CF.61286.7E721BE5; Tue,  5
 May 2020 09:46:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084631eucas1p11121f9373a1d282f0262d1faa33f35fb~MFXwm4GNn1829518295eucas1p1G;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084631eusmtrp1b2a447b426b11851ccc7beb9dbe4c0a3~MFXwmFhb00942309423eusmtrp1c;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-a8-5eb127e7e116
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F9.14.08375.7E721BE5; Tue,  5
 May 2020 09:46:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084630eusmtip1b6044d22f68a33f9e85b8c312b39f146~MFXv_JryM0686606866eusmtip1K;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 13/25] drm: tegra: fix common struct sg_table related issues
Date: Tue,  5 May 2020 10:46:02 +0200
Message-Id: <20200505084614.30424-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH973nueeeO86ejvGdRLspY0OqtaeJUTZP6g+ytWpFF8+w/No9
 KKZlRBxasmHHkPwovx0uncmP5Y7UzY5J+VHGulKXxlFqkfNI/70+n8/7/fl8P599cUTUx7XF
 o2ITaGmsJFqMCVClel3rqndqCzlUXuxB5muHOWRbSQuX3FQWIOT46hJGPmkY5JCVvZ7kHXkV
 ShrH5zikYn6CS46pyjAyxyjHyKYXMzyy//sCl1xXlaM+FlRjeSOgetYqUeqZfIZHPV37wKXe
 52o4VHv1bWpqYx6hCifrANX9Ng2j8jO+YdS9jnpArSjsA80vCU6E09FRSbTU3fuqIPL5rB7E
 Z7ne1KtqeGlA4SgDfBwSR+FwbSdXBgS4iHgMYObiIMIGRgCbvwxw2GAFwE+lr7cq+LalJecW
 m68DUFEuQ3cdo4ZSjqkvRnhAmUGGmdiKyARwKN/cJEKIPAT2Ff0ApoIlEQS7Z4u2DShxAM52
 9W7nhYQ3zK54h7IPdIANrX2Iiflb+XndNGZqBIkJHiz4quCwIj+oLviNsWwJFzUdPJbt4Ehh
 HsoaMgCc0zbx2CAPwLH0EsCqPOG09hdmWg4hnGGLyp3d0xfWvzrHogWcNOwxiZEtfKAs3rmE
 EGZnidgeB6Fc07w7tX9Uh7BMwU31ys4VBwH8k12G3gcO8v+zKgGoBzZ0IhMTQTMesfQNN0YS
 wyTGRriFxcUowNa/GtnQLHeBVd21AUDgQGwuvLDSEiLiSpKY5JgBAHFEbCWs/dkaIhKGS5JT
 aGlcqDQxmmYGwF4cFdsIj1R9viIiIiQJ9HWajqel/6ocnG+bBiqCjwkOBw7td7Sov+uzVqad
 PG62ZA2cAlaXiYfWQUiqQWBnW3NSN6LqyPPSTI21p4tzT1fJGnoX7JOrs4gzH1/qlUZG2FNm
 ERAo1o65lBaEdnb6PnojTr24GHbZi1TTsrP56znjpNp/33ldkzM/xeyUf0qtr2dbiTHYys+4
 JEaZSImHCyJlJH8B71YrTFMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7rP1TfGGTR+l7DoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2aJm1iMXiy5WHTBabHl9jtbi8aw6bReeXWWwWa4/cZbc4
 +OEJq8XPXfNYHPg81sxbw+ix99sCFo+ds+6ye2z/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dx6m9+xefRtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayV
 kamSvp1NSmpOZllqkb5dgl7GvnvPGQvadCue71rK3sC4SaWLkYNDQsBEYn1nbRcjF4eQwFJG
 ibsnZzN1MXICxWUkTk5rYIWwhSX+XOtigyj6xCix6fJrNpAEm4ChRNdbiISIQCejxLTuj+wg
 DrPAFGaJqfcbGEGqhAX8JT6eOQ7WwSKgKnFvx36wOK+AnUTH/FssECvkJVZvOMAMYnMCxR9f
 ugNWLyRQKPHh/HfWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTGz7ZjPzfvYLy0
 MfgQowAHoxIPb8Tn9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOio
 icxSosn5wNjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXA2BcS
 2G3T91VZwrTt/T39zIeWNmcjOG+ob0wrntxwK3ztnNwS+wtSnYqPuPRezs3Ze8R3ho5djrh9
 V0FB2NX97bLcxX9qLU9t8j7LPemhp3n0e+XTJw8fnyMS3cl7cGZapstDxr3hJspit/Yem27p
 W/OpcEvZRN+9fLNOW3VGfQtWErq1yuCSEktxRqKhFnNRcSIAcRqvT7UCAAA=
X-CMS-MailID: 20200505084631eucas1p11121f9373a1d282f0262d1faa33f35fb
X-Msg-Generator: CA
X-RootMTR: 20200505084631eucas1p11121f9373a1d282f0262d1faa33f35fb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084631eucas1p11121f9373a1d282f0262d1faa33f35fb
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084631eucas1p11121f9373a1d282f0262d1faa33f35fb@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014633_795436_85FC0392 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Airlie <airlied@linux.ie>, Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of the entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. A common mistake was to ignore a result
of the dma_map_sg function and don't use the sg_table->orig_nents at all.

To avoid such issues, lets use common dma-mapping wrappers operating
directly on the struct sg_table objects and adjust references to the
nents and orig_nents respectively.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
---
 drivers/gpu/drm/tegra/gem.c   | 27 ++++++++++-----------------
 drivers/gpu/drm/tegra/plane.c | 15 +++++----------
 2 files changed, 15 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 6237681..4554fbb 100644
--- a/drivers/gpu/drm/tegra/gem.c
+++ b/drivers/gpu/drm/tegra/gem.c
@@ -98,8 +98,8 @@ static struct sg_table *tegra_bo_pin(struct device *dev, struct host1x_bo *bo,
 		 * the SG table needs to be copied to avoid overwriting any
 		 * other potential users of the original SG table.
 		 */
-		err = sg_alloc_table_from_sg(sgt, obj->sgt->sgl, obj->sgt->nents,
-					     GFP_KERNEL);
+		err = sg_alloc_table_from_sg(sgt, obj->sgt->sgl,
+					     obj->sgt->orig_nents, GFP_KERNEL);
 		if (err < 0)
 			goto free;
 	} else {
@@ -196,8 +196,7 @@ static int tegra_bo_iommu_map(struct tegra_drm *tegra, struct tegra_bo *bo)
 
 	bo->iova = bo->mm->start;
 
-	bo->size = iommu_map_sg(tegra->domain, bo->iova, bo->sgt->sgl,
-				bo->sgt->nents, prot);
+	bo->size = iommu_map_sgtable(tegra->domain, bo->iova, bo->sgt, prot);
 	if (!bo->size) {
 		dev_err(tegra->drm->dev, "failed to map buffer\n");
 		err = -ENOMEM;
@@ -264,8 +263,7 @@ static struct tegra_bo *tegra_bo_alloc_object(struct drm_device *drm,
 static void tegra_bo_free(struct drm_device *drm, struct tegra_bo *bo)
 {
 	if (bo->pages) {
-		dma_unmap_sg(drm->dev, bo->sgt->sgl, bo->sgt->nents,
-			     DMA_FROM_DEVICE);
+		dma_unmap_sgtable(drm->dev, bo->sgt, DMA_FROM_DEVICE);
 		drm_gem_put_pages(&bo->gem, bo->pages, true, true);
 		sg_free_table(bo->sgt);
 		kfree(bo->sgt);
@@ -290,12 +288,9 @@ static int tegra_bo_get_pages(struct drm_device *drm, struct tegra_bo *bo)
 		goto put_pages;
 	}
 
-	err = dma_map_sg(drm->dev, bo->sgt->sgl, bo->sgt->nents,
-			 DMA_FROM_DEVICE);
-	if (err == 0) {
-		err = -EFAULT;
+	err = dma_map_sgtable(drm->dev, bo->sgt, DMA_FROM_DEVICE);
+	if (err)
 		goto free_sgt;
-	}
 
 	return 0;
 
@@ -571,7 +566,7 @@ int tegra_drm_mmap(struct file *file, struct vm_area_struct *vma)
 			goto free;
 	}
 
-	if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+	if (dma_map_sgtable(attach->dev, sgt, dir))
 		goto free;
 
 	return sgt;
@@ -590,7 +585,7 @@ static void tegra_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	struct tegra_bo *bo = to_tegra_bo(gem);
 
 	if (bo->pages)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sgtable(attach->dev, sgt, dir);
 
 	sg_free_table(sgt);
 	kfree(sgt);
@@ -609,8 +604,7 @@ static int tegra_gem_prime_begin_cpu_access(struct dma_buf *buf,
 	struct drm_device *drm = gem->dev;
 
 	if (bo->pages)
-		dma_sync_sg_for_cpu(drm->dev, bo->sgt->sgl, bo->sgt->nents,
-				    DMA_FROM_DEVICE);
+		dma_sync_sgtable_for_cpu(drm->dev, bo->sgt, DMA_FROM_DEVICE);
 
 	return 0;
 }
@@ -623,8 +617,7 @@ static int tegra_gem_prime_end_cpu_access(struct dma_buf *buf,
 	struct drm_device *drm = gem->dev;
 
 	if (bo->pages)
-		dma_sync_sg_for_device(drm->dev, bo->sgt->sgl, bo->sgt->nents,
-				       DMA_TO_DEVICE);
+		dma_sync_sgtable_for_device(drm->dev, bo->sgt, DMA_TO_DEVICE);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/tegra/plane.c b/drivers/gpu/drm/tegra/plane.c
index 9ccfb56..4b1c2ae6 100644
--- a/drivers/gpu/drm/tegra/plane.c
+++ b/drivers/gpu/drm/tegra/plane.c
@@ -130,12 +130,9 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		}
 
 		if (sgt) {
-			err = dma_map_sg(dc->dev, sgt->sgl, sgt->nents,
-					 DMA_TO_DEVICE);
-			if (err == 0) {
-				err = -ENOMEM;
+			err = dma_map_sgtable(dc->dev, sgt, DMA_TO_DEVICE);
+			if (err)
 				goto unpin;
-			}
 
 			/*
 			 * The display controller needs contiguous memory, so
@@ -143,7 +140,7 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 			 * map its SG table to a single contiguous chunk of
 			 * I/O virtual memory.
 			 */
-			if (err > 1) {
+			if (sgt->nents > 1) {
 				err = -EINVAL;
 				goto unpin;
 			}
@@ -165,8 +162,7 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		struct sg_table *sgt = state->sgt[i];
 
 		if (sgt)
-			dma_unmap_sg(dc->dev, sgt->sgl, sgt->nents,
-				     DMA_TO_DEVICE);
+			dma_unmap_sgtable(dc->dev, sgt, DMA_TO_DEVICE);
 
 		host1x_bo_unpin(dc->dev, &bo->base, sgt);
 		state->iova[i] = DMA_MAPPING_ERROR;
@@ -185,8 +181,7 @@ static void tegra_dc_unpin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		struct sg_table *sgt = state->sgt[i];
 
 		if (sgt)
-			dma_unmap_sg(dc->dev, sgt->sgl, sgt->nents,
-				     DMA_TO_DEVICE);
+			dma_unmap_sgtable(dc->dev, sgt, DMA_TO_DEVICE);
 
 		host1x_bo_unpin(dc->dev, &bo->base, sgt);
 		state->iova[i] = DMA_MAPPING_ERROR;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
