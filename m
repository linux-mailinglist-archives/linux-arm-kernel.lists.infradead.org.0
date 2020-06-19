Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B22200715
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y102b7q6La1SC0b3c99J6dLiG0WJK3eL4t9kqsPawx4=; b=VsPMTB6ektVVMG8h2qVwOgoRcq
	ULNI6qRaDY9BsYqRVbXIPsi6DEvk2pHQlJBj+x3fXPcpwYKYvlngnW1fu+p54nWOxs74FoDjL2fDZ
	cEPnz1pAozeXQmGWqbIHQ2uhTktG3wR3hT22kyyNmMcWuffMPQ9HxESnpmUFybcf66Zdg2utTAwlX
	xi9lNc4JLj9opKd11NP1vf92q7+tYdjAqX2ytFq8BFT/E50hJu+wUdAXfIeyUeCXOGqA1uJ3p6nrw
	xgb7tE0LJglazmBIB5PPnAVrTf6JuuLAJjChOHaPVhHawXVfgZffV3Xdb47jasiNYtuRZZ6qepMVN
	qxPOQ4Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEVi-0005c8-C4; Fri, 19 Jun 2020 10:44:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOT-0005Gw-Cy
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:12 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103707euoutp027e65a208cdc315d4666cdd9b9b3ea1a5~Z66LDJgq82363023630euoutp02l
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103707euoutp027e65a208cdc315d4666cdd9b9b3ea1a5~Z66LDJgq82363023630euoutp02l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563027;
 bh=Z9l2woQ40ZPmHmgLmD1FIzI5uZAPuWFYYBjv7TcHHj8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lzRWGr4bOFJ3OooXJpEieNb7fxObSiAyBTUqTEH1YGUY8kDmr6xNtzOjK2wUYrkPp
 Z1sb7LlNbgkqov4gOC8FRWLrpxPXhcJrL7hNjCJgomcHWpEAHNUG9kTwYI+ZhHGoM+
 QYgaUFuwoN0OQzOi+XOO49b6325NPW09eECb/98c=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103707eucas1p1aa3961c5a770c18123d171f9ba781bc0~Z66KkHOgr3246432464eucas1p1u;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A4.9C.06318.2559CEE5; Fri, 19
 Jun 2020 11:37:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103706eucas1p2b9a9926941e812db1111ec46a97695cd~Z66KRaPFk2893928939eucas1p2d;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103706eusmtrp175a36441d776a8bb6dff075ae22b4b9d~Z66KQwXOU0949709497eusmtrp1a;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-70-5eec9552936b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7F.0B.06017.2559CEE5; Fri, 19
 Jun 2020 11:37:06 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103705eusmtip20afd05ddb910ee09064c1699ebcefa22~Z66Jl4QAg0246802468eusmtip2j;
 Fri, 19 Jun 2020 10:37:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 20/36] drm: tegra: fix common struct sg_table related issues
Date: Fri, 19 Jun 2020 12:36:20 +0200
Message-Id: <20200619103636.11974-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUYRSG+eYuc11GbqPkh4rCYIKRGwpeUSSjH/dHtKgQKY1OelHLGWXG
 nUhJKxu1Ms1lEjMxNZdcMzMrR7Kp1Klccsql1Ah3K5dUSpvbVfv3nvc873cOh49AhGrMgoiQ
 xTBymSRShBuiLS/XtQ6+t+bEzkNlHlSW9jWPaiiow6itlmyEGlhZxKn71V08quS5J5WmKkWp
 5YFxHtU4+QGj+tuKcOrqsgqnal+M8in1968Ytd5WjB40oWuKawD9dLUEpR+rRvn0o9UvGP05
 Q8Ojm8qS6eHNSYTO0VUA+snHFJzOSl3A6WvNVYBearQ+bhxg6BXKREbEMXIn72DD8PKxt0h0
 unPC4sMZPAXM2imBAQFJN6iemOYpgSEhJCsBvFdSiHDFMoAZa3mAK5YArJ5L5e9EcirLUa5R
 AeDgm0J0NzK8fBtjKZx0gcp5Jc5qM/ISgK+yjFkIITMR2JH3C7ANU/IEzC3o+weh5D7Y2zPF
 Y7WA9IZV5TqUG2cDq+s7EFYb6P3ZNDXGPgTJT3yY++Mnj4MOwytbbTinTeGMpnl7VyvYnZOJ
 coFUAMe1tXyuyASw/2IB4ChPOKLd0KcJ/X72sK7NibN9YMNEBsbakDSBuvk9rI3o5c2WfISz
 BTD9spCj7aBK82B3rPpd3zZCw558S+5A2QDe3WpHbgAb1f9ZJQBUAXMmViENYxSuMibeUSGR
 KmJlYY4hUdJGoP9Y3ZualVbw7PeZTkASQGQsmPKfFQsxSZwiUdoJIIGIzASHervFQkGoJDGJ
 kUcFyWMjGUUnsCRQkbnAtXT6tJAMk8Qw5xgmmpHvdHmEgUUKcDhmlZOkSxCqAg/464aLh026
 wupxe6PqmD8LAWMRI3t9NK7lEcr682LPoSrt+wBbd+CcZ519tm9tSOPXW2Q8JQuOd1xsiY3z
 ncsSBB11MwpMFrde6LAlNuLmx9ybs+2OeHl8W+sZ8s1M9bMYPNl+/VRCSEa9karJEQbX9hXc
 cRahinCJy35ErpD8BWSngTVUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7pBU9/EGaz9p2bRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0TJrEYvFlysPmSw2Pb7GanF51xw2i84vs9gs1h65y25x
 8MMTVoufu+axOPB5rJm3htFj77cFLB47Z91l99j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0Nr9j8+jbsorR4/MmuQCeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81gr
 I1MlfTublNSczLLUIn27BL2MZffOMxd0GFS83/qKrYHxtVoXIyeHhICJxOQVy1i6GLk4hASW
 Mkp0zH7PBpGQkTg5rYEVwhaW+HOtCywuJPCJUWJXrzqIzSZgKNH1FiTOxSEi0MkoMa37IzuI
 wywwhVli6v0GRpAqYQF/iQV3TrOD2CwCqhJnz7xgArF5BewkVi27wQKxQV5i9YYDzCA2J1D8
 dctBVohtthLLF7xnnsDIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZg/Gw79nPLDsau
 d8GHGAU4GJV4eF+EvI4TYk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGU6Cj
 JjJLiSbnA2M7ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD49Xv
 4t8un3XZfzh+4pcE9vnVs87x78vqvfJkZzpDuorUL02ht7s9lt9huWDFKnTzjvu67CMhlyuX
 Tliz+fSLJa5+M8Suxa2oCLiYqf409+/FtUwmcZ+338n46WCyt/jA9gTXdTe++ium1E+68MrZ
 +Y3kM8k56wuncpjaFF6smvL0iIqu862bwk1KLMUZiYZazEXFiQDgEq+0tQIAAA==
X-CMS-MailID: 20200619103706eucas1p2b9a9926941e812db1111ec46a97695cd
X-Msg-Generator: CA
X-RootMTR: 20200619103706eucas1p2b9a9926941e812db1111ec46a97695cd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103706eucas1p2b9a9926941e812db1111ec46a97695cd
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103706eucas1p2b9a9926941e812db1111ec46a97695cd@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033709_583715_28926606 
X-CRM114-Status: GOOD (  17.41  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
