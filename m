Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F471D15CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S5YIu7SSRzud2K4iIPdMMIdcU0g/h8gldukfjUteckc=; b=JNDzyCLlLJGw8ylV+wwNxsHdP/
	Ltk4ceXCho7WZCbeBoH97ZdM3qA3dzyluGfQm+zJ9+We9XBAQ2LmOUi9XFEiptKHHRTV+fJQCDFzs
	6We87P2M6tCoxkeQ2cOWzJ8cuRUIrOs33B2FxDhfkDKMHZesIL/u95O9V+WByeM3pzCDaPbZ/CJUf
	usVSgyuAQo5qwwU3Ex04j9MdOfFQfQh6ToDhhmj9rVI/6gh/ZLlTYXqmLIp0HY/YBlQ/HeWqrKTys
	Sq31pnequocHn9KWsLvA2SWVr2Sr8Zd0/DjMyg+nASpjkZng75Un2rF9VjIUECXmK9GoMfNFfceWt
	W4/atG4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrbA-0000CK-Cr; Wed, 13 May 2020 13:39:00 +0000
Received: from casper.infradead.org ([90.155.50.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVi-0001ir-T5
 for linux-arm-kernel@bombadil.infradead.org; Wed, 13 May 2020 13:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iqC2oZVnJgaJChFW8LQHxExYeOIzSgeJYogJZzzQn9Q=; b=E2QGecJRjIol3NQsTjToEkyFDS
 y2DcFejYpIkPK0desPRxPReRRovj5nUbyiTRHicjdsfYX5wpmnvd5TQz0Hfs4iT3WxpWwOrn56+jA
 s/nIyGQeIg/fiz/Z/OLaR05s/bkT4oRCY39d1HP3LP/Sf52zkvYYDgaZOoXznEDUQGH5VzmrjJKtp
 jjfBbvatfksU/ijDPXDfdy2pejo5KPjkQvEa8PJ6Ezh+zcZzytXhxVfMBQgIcTwe2wgpMS/e1T5uv
 DtoSyjB0cne41S5Dynk+JvgauNq3AcJaRymZGQ39EZ5IWSTcJ1r5LV/UTLse9KzgrdKG8w3pgs4vj
 NJz7fF5g==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVd-0006SE-AP
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:20 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314euoutp01ec01b13a422c577e63545ada89f67fe1~OmcYIm8jF2150421504euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133314euoutp01ec01b13a422c577e63545ada89f67fe1~OmcYIm8jF2150421504euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376794;
 bh=iqC2oZVnJgaJChFW8LQHxExYeOIzSgeJYogJZzzQn9Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kgIvu14JDUiA6XMVvB+L2rK/rQIv+zgZPM1DTeVrqdZCCzJ52vnbMFOLe3tfW9dha
 NUdHJYmPGQb0UVDphmOnYRcnKPZaUnSZuVYFU6NSUdfzGcysoyPuway6l1cXDQS7Fc
 qUxF9T0mSfujqR7e8LZAhOfwMKBN/p/p84lEPz1I=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133313eucas1p18c946e34516da0bf0109837ddcf87b07~OmcX0iILA2350723507eucas1p1A;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9C.D8.60698.917FBBE5; Wed, 13
 May 2020 14:33:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133313eucas1p1fa06e23680b6d983578f598166e64cd0~OmcXdpie62350623506eucas1p1T;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133313eusmtrp1a5b124bc0916ae01fb7b792bf802b311~OmcXcx3q41049110491eusmtrp1W;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-e6-5ebbf7196fbc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 91.47.07950.917FBBE5; Wed, 13
 May 2020 14:33:13 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eusmtip1e20ffe8ef0b7d0f61e3e6209279d8122~OmcWwSNw30131701317eusmtip1H;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 23/38] drm: tegra: fix common struct sg_table related issues
Date: Wed, 13 May 2020 15:32:30 +0200
Message-Id: <20200513133245.6408-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzm7N7d3Y1NblPy2BMmmUVlVsahFxUhN6IXRJHV9JYXldyMLS0j
 fM1HTldLqWSaLXGY81VmZhPf1ozKRK2MtDLtoWRWbmoS2rZr9d/35Dv8OCQmbeDPIyOUp1mV
 komUESK8+tGv5yu9Jmrlq62fNyBd+2MeupNTwUcz1Zcx1G0fJVBxyUMeMjZsRMmGAhzZuvt5
 qHLgJR91WfIIlG4zEKistU+Amr4P8tEvSz6+1Y0uzS8FdN24EacfGPoE9P3x93z6XYaVR98t
 jKffTA9gdHZPEaBrXycQtE7zjaAvVpkBPVa5aJ84SLQplI2MiGFVfltCROEdzStP1fuf/fL2
 EpEA0ny1gCQhtQ7e/KTQAhEppW4B+NQ4yuOIDUB7yxuMI2MAptXfILRA6GpkDFtwzigC8Fq6
 +X8lqydJ4EwRlD/UjmhdDQ8qBcA2ndgZwqhMDDZenQBOw53aD01Xu3hOjFNLYFHidZcuoTbD
 BEv/7NxiWHK7EXNioUMf7m1wTUOqUwBNz3p5XGgHfJGcPYvd4bC1SsDhBfBJduZsQQNgf3uZ
 gCOZAHYl5QAutRH2tk8Rzntg1DJYYfHj5G1Qk1WDcWdygz0jc5wy5oBZ1ddmZQm8kCrl0j7Q
 YC3/N9vU0YlxmIY1l3JcT5NSLQCOaig9WGz4v2UEwAw82Wi1IoxVr1WyZ1apGYU6Whm26kSU
 ohI4vtWTaau9BtT/Pt4MKBLIxJL3r2rlUj4To45VNANIYjIPyZ4KhyQJZWLPsaqoYFV0JKtu
 BvNJXOYpWVswdExKhTGn2ZMse4pV/XV5pHBeAkA7x+1ieb/yo9tcvU/erng0FIJr8giR8ZBX
 a2G5mYkbtOmvlE9ua0N9GYEBfh+afLd7hwq1yhXy3dLg1NyAe6b8uDULjwzNHI4JSYv/6Y3W
 H5VPLTUdTDR99YDdAXW3bV+892p+FKfkyY8O6AIvj+hR0Pm21kVRKbmT280HvGS4OpzxX46p
 1MwfefO9OVIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7qS33fHGex6qWjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0TJrEYvFlysPmSw2Pb7GanF51xw2i84vs9gs1h65y25x
 8MMTVoufu+axOPB5rJm3htFj77cFLB47Z91l99j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0Nr9j8+jbsorR4/MmuQCeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81gr
 I1MlfTublNSczLLUIn27BL2MC4d0C/YZVry418/WwNiu0cXIySEhYCLR/WoXSxcjF4eQwFJG
 iZP7b7FAJGQkTk5rYIWwhSX+XOtigyj6xCgxq/kPE0iCTcBQoustREJEoJNRYlr3R3YQh1lg
 CrPE1PsNjCBVwgL+Ek+nPwIbxSKgKrG8cS5YnFfAVqJh10M2iBXyEqs3HGAGsTmB4q/u7Ac7
 Q0ggX2Lv4n1sExj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMn23Hfm7Zwdj1LvgQ
 owAHoxIPr8Wt3XFCrIllxZW5hxglOJiVRHj91gOFeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0
 OR8Y23kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhh37ypt3fog
 hzl5Se+HiP4/1aKTTNkOXxT58OCIZT/TqZDLfQGCt2t6zzQ6bTzn9VDGXou93/oGe4PwtaRJ
 c5Qeboj/4ZqS9uLRyrf3d7MaJFrJu95W+T71ueGfd4blNd68+54Xtty8s3bRN89jq4LrLh5r
 9f7wqvPP27Klt18uzPU5YVbgkHpeiaU4I9FQi7moOBEAmWHw7rUCAAA=
X-CMS-MailID: 20200513133313eucas1p1fa06e23680b6d983578f598166e64cd0
X-Msg-Generator: CA
X-RootMTR: 20200513133313eucas1p1fa06e23680b6d983578f598166e64cd0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133313eucas1p1fa06e23680b6d983578f598166e64cd0
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133313eucas1p1fa06e23680b6d983578f598166e64cd0@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_143317_590784_4A7C1C33 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
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
