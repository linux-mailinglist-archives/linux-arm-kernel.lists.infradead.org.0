Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E35C1CF12D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VaBiD0bn054/BUVzYLHPFCRSzzD7ZKY5LGyeMPzez7w=; b=JBH/myCQWLU+ZCn1aUGnRi2S4V
	8YTdpthcb0ndIU5QMdSAVq9NMajhFWCJPBg7Pq30kPmEcdJiAAiWMrdTeoEyXFmeJOsQgrFuV2GNb
	8lhYO7NETtAcXoVjWbivaPA3PqHawftgmAk5E6pBaADSXj71Em6vPSeqaXtUwv9rV/ClRcYyKic21
	7eX0Xy7witDqlJCgldHOEKOee7pRtPPysIGo7SacFThfbUTszQf7DsVBqu/hCQgDIcdEQohj0uYzo
	7AIpeNInyPLd3f+7oHh9TrKXChuWlgwxqm4X5m+uZApqF2a81ttGgsKdmOFfDY+ZYvqhenTt+0l3W
	nI78GSkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQva-0002Ye-II; Tue, 12 May 2020 09:10:18 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn5-0002Qq-BD
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IuMhko8uNNYAT9c99UTvFxNLutkif/MgExqfDBs33Qs=; b=zeJA69lNnxZZIb7Lmg4cXvXhbf
 z1XeEdq3fNL7ylGz14Zl25jJRcM2SFfu6kvqpAgoIQAmb2051m+VWhADXIuQDCG/ZRv1Az/UTzdHY
 jmW3uNmu/ge3UmbycUqqaT4DPl7tLg4vYTVUys+UAm+R13FirRsA6jVdS7LSRp1gq8+eLtgFpi4sI
 GkXsCqR7U0gDVaPsmF0Dplh1USt0m1iraGIigLVUKMeg2/IJMdgiSGNC1KIjc+MA2Y4yT2YLokHYh
 eKFEj6o8ssB+hCDZ4MqMr0nlKyk+uMADmGkR+i1e/F1FUPkcoYhCJiJLRD2M3iq4yp2Z8ULW71Tp9
 86vBigKQ==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn0-0004V2-S1
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090121euoutp01d4ca1ac8bcae4582255bf8a41adf7fee~OPFtU21fc2633726337euoutp01V
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090121euoutp01d4ca1ac8bcae4582255bf8a41adf7fee~OPFtU21fc2633726337euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274081;
 bh=IuMhko8uNNYAT9c99UTvFxNLutkif/MgExqfDBs33Qs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gX3EJXx54NCl5Os2nPmbrUINxDzd5hTTsn3qnYEkO5DnqZYcSjjYtv1VxUleAxwRg
 VQJdjZ/ndkc3GVpmenihCD+K5KcKBr11CKYVnOQ9duidZzrm/HpsMzQ2ukEMI6kO9F
 env3zNDgYta6J+9aHbjRSIbqIhLA8Lq0WI2ZT100=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090121eucas1p2313695106b489cda9191a98c79fbc068~OPFtGgUys3097230972eucas1p2E;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A2.7B.60698.1E56ABE5; Tue, 12
 May 2020 10:01:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090120eucas1p18ae5489153837bbf5b8baa5089234c40~OPFsx4ei-1183411834eucas1p14;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090120eusmtrp266f67f3a38ce3d8f483467e40d032fdf~OPFsxL-Mb0472504725eusmtrp2R;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-38-5eba65e1511b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 46.45.08375.0E56ABE5; Tue, 12
 May 2020 10:01:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090120eusmtip117b3beef9271a6520efbc5602070b8db~OPFsJVsQ81181011810eusmtip1p;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 23/38] drm: tegra: fix common struct sg_table related issues
Date: Tue, 12 May 2020 11:00:43 +0200
Message-Id: <20200512090058.14910-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFvZ12OiBthkLCDRoxjRDUCCI+TAIhmPRh5IElJjxgBKpMAKUs
 LXtUiixCpYBAoDQGCLLJqkCQVkEgQpFNU/YgIAGJYlD2RQnYcUDevv8/5/wnubkYIujgWGLB
 oZGUNFQcIkSN2S09ux8vzVFa38tljSaEcugDi3ilauAQBy1PEWJk8xdKvKjpZhEl75yIZHUp
 m9gYmWMRjfNjHGJY+wwl0jfUKFH3fppLdK4scIhdbRHblU/WFtUCsm2rhE1q1NNc8vXWFw45
 +0THIpvKEsip/XmEzJ2oBOSbSTlKKpN+omRmczUg1xvPeJr4GDsHUCHB0ZTU3sXfOOit6g8S
 3uYQqxrOROUg1VYBjDCIX4UDO8moAhhjArwKwP0fxYAZNgCs6l3gMsM6gFmbk5yjyFL77KFQ
 CWBble44Upi9xqVdKO4AFcsKlGZzPAXAXqUJbULwDAR25G8DWjDDvaCmsvdfgI1bw5nETEMF
 hvFwFzi4x2farGDNyw6EZiPDerZ4j03fgbieC3PH81DGJIIzGWsshs3gkq6Zy/BpeKApZjGB
 JADnhuq4zJAB4PAjFWBcTvDz0G+Ubkbw87BBa08jxK/BmkTIIB9OLJvSZsSAOS0FCLPmwbRU
 AXPDBqp19f9bOz/pEYZJ2JeuOnzfbgB19RUgG1ipj7tKAKgGFlSUTBJIyRxDqRg7mVgiiwoN
 tLsTJmkEhn/Vv6/bbAXte7e7AI4BoQkv7YrGV8ARR8viJF0AYojQnJccbFjxAsRx8ZQ0zE8a
 FULJusApjC204DmWfr8lwAPFkdQ9igqnpEcqCzOylAOsYsfV2SPxsUNEwmL4qn+9vmCqu2XE
 z9Z7tLzd3bT//nWjhz3dgXnKc4knv07n+xemeNt+szix7X931NXD3fOB23jSPKs8J8amdeqm
 z0qPKi2Xv+w2L7/YG+u1GKG0A6I5U0nTqp0kOkSeFTEYINLyq8eQG/EeZ/usN0Rpzwf0QrYs
 SOxwAZHKxH8B8RB5RlMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7oPUnfFGRx5rW/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0TJrEYvFlysPmSw2Pb7GanF51xw2i84vs9gs1h65y25x
 8MMTVoufu+axOPB5rJm3htFj77cFLB47Z91l99j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0Nr9j8+jbsorR4/MmuQCeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81gr
 I1MlfTublNSczLLUIn27BL2MPTN+MxfsNayYcbmPrYGxTaOLkZNDQsBE4tW+++xdjFwcQgJL
 GSU+/X7KCpGQkTg5rQHKFpb4c62LDaLoE6PE6d5FYAk2AUOJrrcQCRGBTkaJad0fwUYxC0xh
 lph6v4ERpEpYwF9i4r+pTCA2i4CqxL3GPqBuDg5eATuJs3/4IDbIS6zecIAZxOYECt+f/4cF
 xBYSKJR4dPUtywRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzEC42fbsZ+bdzBe2hh8
 iFGAg1GJh7fDaGecEGtiWXFl7iFGCQ5mJRHelkygEG9KYmVValF+fFFpTmrxIUZToJsmMkuJ
 JucDYzuvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjfqDhOS67
 LP4k0ycLox5qi5l0+sVZhTuJbK/ayRcckKz13CSvxvf1BFspoRfxD+stH71/z/jp3wGHk3q3
 GGyeL1udvOdIdGXT9TsG1m52kw8Ubfiwy//CrkmPtTiF37P1N+ycyNtSsr8oiOG42mL3SxHV
 +3QeeDz6rCj4+PeXUnemRWvF9q9RYinOSDTUYi4qTgQAq8ZCe7UCAAA=
X-CMS-MailID: 20200512090120eucas1p18ae5489153837bbf5b8baa5089234c40
X-Msg-Generator: CA
X-RootMTR: 20200512090120eucas1p18ae5489153837bbf5b8baa5089234c40
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090120eucas1p18ae5489153837bbf5b8baa5089234c40
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090120eucas1p18ae5489153837bbf5b8baa5089234c40@eucas1p1.samsung.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/tegra/gem.c   | 27 ++++++++++-----------------
 drivers/gpu/drm/tegra/plane.c | 15 +++++----------
 2 files changed, 15 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 6237681..2169130 100644
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
+		dma_unmap_sgtable(drm->dev, bo->sgt, DMA_FROM_DEVICE, 0);
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
+	err = dma_map_sgtable(drm->dev, bo->sgt, DMA_FROM_DEVICE, 0);
+	if (err)
 		goto free_sgt;
-	}
 
 	return 0;
 
@@ -571,7 +566,7 @@ int tegra_drm_mmap(struct file *file, struct vm_area_struct *vma)
 			goto free;
 	}
 
-	if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+	if (dma_map_sgtable(attach->dev, sgt, dir, 0))
 		goto free;
 
 	return sgt;
@@ -590,7 +585,7 @@ static void tegra_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	struct tegra_bo *bo = to_tegra_bo(gem);
 
 	if (bo->pages)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sgtable(attach->dev, sgt, dir, 0);
 
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
index 9ccfb56..0d2ef16 100644
--- a/drivers/gpu/drm/tegra/plane.c
+++ b/drivers/gpu/drm/tegra/plane.c
@@ -130,12 +130,9 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		}
 
 		if (sgt) {
-			err = dma_map_sg(dc->dev, sgt->sgl, sgt->nents,
-					 DMA_TO_DEVICE);
-			if (err == 0) {
-				err = -ENOMEM;
+			err = dma_map_sgtable(dc->dev, sgt, DMA_TO_DEVICE, 0);
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
+			dma_unmap_sgtable(dc->dev, sgt, DMA_TO_DEVICE, 0);
 
 		host1x_bo_unpin(dc->dev, &bo->base, sgt);
 		state->iova[i] = DMA_MAPPING_ERROR;
@@ -185,8 +181,7 @@ static void tegra_dc_unpin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		struct sg_table *sgt = state->sgt[i];
 
 		if (sgt)
-			dma_unmap_sg(dc->dev, sgt->sgl, sgt->nents,
-				     DMA_TO_DEVICE);
+			dma_unmap_sgtable(dc->dev, sgt, DMA_TO_DEVICE, 0);
 
 		host1x_bo_unpin(dc->dev, &bo->base, sgt);
 		state->iova[i] = DMA_MAPPING_ERROR;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
