Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2CD1FF7E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y102b7q6La1SC0b3c99J6dLiG0WJK3eL4t9kqsPawx4=; b=rHa9qYZQnO88DfUZmSPAixRWod
	aEu1UkvfSin1nlQS29My1JiXfEjCk4XuNjOHxN7adBdihv71u86gnaSJzR4U1crO571Qt51+NVpym
	NIJsag3V246bPowVj4V1OhZ1lHBWlSYTrqdEpovP5ekX1XiSITmj/fQWg58tN4Ws3tSIUGBkwO1HP
	H4yX2hxPzhV7heRRPHfvjWJJUOWXGMrnDaBvLwLXpEN0+1Gjv/Mx52ExmT0KL0MoaspCJHXFmZAlP
	yeptYgzGKuiU4kyL3Xg9sCy3GXxPTnOsFr2/OGCx5BWEy6QUZ/5q5+9CTLABzQKDkqnrbfxhNGbct
	A6pcltrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwlR-0003xj-DX; Thu, 18 Jun 2020 15:47:41 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweW-0004K8-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154028euoutp01718942b9328f8695a2d69b00d69b6cdc~ZrZwAFDL91844818448euoutp01A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154028euoutp01718942b9328f8695a2d69b00d69b6cdc~ZrZwAFDL91844818448euoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494828;
 bh=Z9l2woQ40ZPmHmgLmD1FIzI5uZAPuWFYYBjv7TcHHj8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kkV5RIWk4KPX3ARjrf1FXfZVmYNH6EOkW11jr6Wfxj6BEFoFZez+Kp4nEVSTw9qHW
 5/eEMVQxldssB8OJ8RhuD3cwNyw55HHKcwropMUhql/WfJ1Cfiw95b/a5wFQpNapNf
 oZkq78CNgIX9lb0ynhwIdbx5pfOLG9GXLIqc6s4Q=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154028eucas1p2438a6c6bc7ac83f61cdd5013d4895c1f~ZrZvrT6d20501005010eucas1p2k;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 48.60.60698.CEA8BEE5; Thu, 18
 Jun 2020 16:40:28 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154027eucas1p2aad00de9752e396ee41babaf78285e68~ZrZvQ2v1J2924929249eucas1p2L;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eusmtrp238547d9cb33737656f6bc6cf6a4e23c6~ZrZvQKJ2y0399203992eusmtrp2f;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-39-5eeb8aec243f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4F.EE.08375.BEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154027eusmtip1b8e519876709ec915b3fb9eaa489cd16~ZrZuk3u7q0744107441eusmtip12;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 20/36] drm: tegra: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:41 +0200
Message-Id: <20200618153956.29558-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+XYum9PJcRp+WCmsEhPygkEnDCktOv1hGVlQpDXzpJa3Nmdq
 f2je0nmhlaiNUBlempfM29SZt5EukTTUzFBTMUKd17xliWvzZP33+573eXheXj4Owm/DbDgh
 4VG0KFwYKsC5qKp7q//YvFTn79LUaUVm9fWwyJr8aozUq2QIObS+hJPKii4WWdTuTibLFSi5
 NjTFImunhzFyUP0SJ9PX5DhZ9W6cTXYuf8PILXUBetqcqiyoBFTrRhFKNcvH2VTjxiRGTWRo
 WVRdcTw1ujONUM9HygDV8iUBp7KSFnEqu74cUKu1tj5mN7inAunQkGha5Oxxmxtc+rUfiUxz
 iVlqmMMTgM5eCkw4kDgOhxuUbCPziVcA6kpDpIBr4DUAK9c0ODNYBTB3+tFe4PfYDmBMZQCu
 bMpQxmRItOXeMzJOuELpgnQ3bEWkAPg+y8wYQIhMBHbkbgLjwJK4DLtXc3YZJY7AmQoZYmQe
 4QEz+96ymTY7WPGmY1c3Mei92hSM0QfYcLstlOGzsDitBWXYEs5p6/9mD0B9cyHLWAyJJACn
 +qrYzCMTwMHEfMC43OFY3y/DqhzDekdhtdqZkc/AbqmObZQhYQ5HFiyMMmLAZ6o8hJF5MC2V
 z7jtoVz7+l9t58cBhGEK/qxTsJhjyQDUfyoAT4Gd/H9ZEQDlwJqWiMOCaLFbOP3QSSwME0vC
 g5zuRITVAsOv6t3RrjeBtu0ADSA4QGDGm/HV+fMxYbQ4NkwDIAcRWPE8P/T683mBwtg4WhRx
 SyQJpcUasJ+DCqx5bopZPz4RJIyi79N0JC3am7I4JjYJQOntMBpnVnbwc4Nf4uFl+klNtSPh
 7aumf6jGNzQPyKpm0wl1Xd7jSf20qcrLwwGbT01fenEuezJkNkCR4blQ4mK7cffalZXzNw91
 VXJzC7d9vHoklwCdbLEYk6442R4nz44nHZSx1+MljTJt64nvaOTMBUSHRdpeHFVe3ZdTIkDF
 wUJXR0QkFv4BbenCa1EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7qvu17HGVyeamHRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0TJrEYvFlysPmSw2Pb7GanF51xw2i84vs9gs1h65y25x
 8MMTVoufu+axOPB5rJm3htFj77cFLB47Z91l99j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0Nr9j8+jbsorR4/MmuQCeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81gr
 I1MlfTublNSczLLUIn27BL2MZffOMxd0GFS83/qKrYHxtVoXIyeHhICJxO87/xi7GLk4hASW
 MkpsuPiCHSIhI3FyWgMrhC0s8edaFxtE0SdGiX275jCBJNgEDCW63kIkRAQ6GSWmdX9kB3GY
 BaYwS0y938AIUiUs4C8xvekomM0ioCrxYvVEZhCbV8BOoufcHqh18hKrNxwAi3MCxU8fbwVb
 LSRgK/H8QxvbBEa+BYwMqxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQIjaNuxn5t3MF7aGHyI
 UYCDUYmH90XI6zgh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0BTpqIrOU
 aHI+MLrzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwFjHP7fLp
 r97x4NOv4pvi5n5Va4PfnAn59rnF2/aV4Ikvd9g45nFti7JeeUHFa3HaNonpJ7jvd/PITzFt
 OMJp+G3GigmS56U2Mjal+nPO3RX3bPnps9e5LfvyjgW+TNL0OjBffV3+sju77NZ/y/MO/m63
 vsN+jtS5CHPDL+lO+/h+tujddJsqr8RSnJFoqMVcVJwIAFwnSPW2AgAA
X-CMS-MailID: 20200618154027eucas1p2aad00de9752e396ee41babaf78285e68
X-Msg-Generator: CA
X-RootMTR: 20200618154027eucas1p2aad00de9752e396ee41babaf78285e68
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154027eucas1p2aad00de9752e396ee41babaf78285e68
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154027eucas1p2aad00de9752e396ee41babaf78285e68@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084032_817669_3487047A 
X-CRM114-Status: GOOD (  16.65  )
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
 drivers/gpu/drm/tegra/gem.c   | 27 ++++++++++-----------------
 drivers/gpu/drm/tegra/plane.c | 15 +++++----------
 2 files changed, 15 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 723df142a981..01d94befab11 100644
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
 
@@ -571,7 +566,7 @@ tegra_gem_prime_map_dma_buf(struct dma_buf_attachment *attach,
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
index 9ccfb56e9b01..0d2ef1662a39 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
