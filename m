Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6FD1CF10F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AYFoEzdGXfv1N7pjmzOLEyZFs1wGQ0u1QnbHG5hbFCE=; b=h7leeIMOszrNYCXZEPDFzBa4Qg
	iN2qz1UQL84EdvCGNvOpL8ZEilctgOUuL3VIsgnxUbl+4g41EmO5ngLafm8ctKSC6wuDySsPd2lPI
	dw74IQmtW9x6eHypB0zK/Xoffn1aQDLbfngMa8pZ635Z8e4EhEJXRACfqZWjl2mqbfMtIYqCQ7Kvg
	D3cjXPDEztfS6SqZI0iZ54FG9rCYAchMAachRoAffgtZmYU9nymM6gsqzlA7WcoWn2BATnc8bwnVo
	1XHaufj/mxisY8G8i83jbTPxMPoyQ87llEETvDyjV0wHKpVI6e2KSwYd6CuGEQbG8HN/mJu+LJyDE
	lInO4uxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQt2-0008UR-3k; Tue, 12 May 2020 09:07:40 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQms-0002ED-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:25 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117euoutp0121958521e1d121ab17e8ec6cedad9edb~OPFpfSCD52629726297euoutp01T
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090117euoutp0121958521e1d121ab17e8ec6cedad9edb~OPFpfSCD52629726297euoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274077;
 bh=QK3oV3GThH1mLbyMRASC+hEmi3B48cmvnyZEHAGh6eM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iyJA435dHOB7nsDD4LkeW7krsJuND2Tvw6Qk8DzAVW4po2OrCqVpormFdM4ZnSJ1V
 mjqqX+tOecMzDMFvK20nq2x5cXwNlzoBD57lA+xjrJUKcfFfpNOcJe9VqAlWbvr68b
 ATSNzt0y7F6z2JiWAK9tHBbqT3x9S27oqlxobHq4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eucas1p17d792157b650a40117110aadd5469cfe~OPFpNIKo11613916139eucas1p1e;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 80.67.61286.CD56ABE5; Tue, 12
 May 2020 10:01:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5~OPFo3pf0f0955009550eucas1p2s;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090116eusmtrp14004cd9fd0a34e696f88b67d4572d6b9~OPFo27p7f0188101881eusmtrp1J;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-74-5eba65dc25ff
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 39.F2.07950.CD56ABE5; Tue, 12
 May 2020 10:01:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eusmtip1dc725179573278247b96449deb5612c7~OPFoQBfKf1148011480eusmtip1V;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 16/38] drm: msm: fix common struct sg_table related issues
Date: Tue, 12 May 2020 11:00:36 +0200
Message-Id: <20200512090058.14910-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzm7Ow+XK5u0/D0MGlhj5GZFXTBsoIeF4LsBVFRuvI6V27ZppYR
 KFpiy0drkTZkrXc+eplYTiydjxnqLBVZK1tlZIpiNC3N0Ha7s/77ft/j9x1+HBJKGrA5pFKd
 yGrU8ngpLhJWNI7ZQ96xlkMrMk1r6Rz7SwH9uOAhRk9W6CHdOTKE04W9rYAuKmkQ0OYX4fRw
 50cBXdbThdH6F60E3WEpxOn79d0E3Xt9FNK13z5jdLehHmyYwZSaSgFT/cMsZCqN3QTz9McH
 jHFdsAmYJ7dSmbcTPZAxOO4CpupNGs7YLE6CyS0vBoy7bP4O3/2itTFsvDKZ1YRGRIviLpcM
 4QnWhae+OVtgGnAF6oAPiajVSF8yCjgsoe4B1GfbpQMiDx4GaMBdJOAHN0D6az1wKtFy2Uzw
 wl2APmUY4L/I8wGDgHPhVBjSDepwDvtT5wBqyvHlTJAyQvTVOv5X8KMiUV7ThCdNkkIqGF29
 uY+jxVQEqnY1A74tCJU8qvnb7OPhXdd+C7k9iHISyFE/ivGmTZ49fTiP/VC/rZzg8TzUbMj2
 BjIA+mi/T/BDNkAd6QXeinD0zv4L514BqaXooSWUpzeimrMtGEcjajpyDM7kaOiBlyryIU+L
 UVamhHcvQkbbg3+1ta/avddiUFWj23utBoDqHpvgRRBk/F9mBqAYBLBJWpWC1Yap2ZPLtXKV
 NkmtWH7kuKoMeD5X84Tt+zMw0n7YCigSSH3FWSsrD0kwebI2RWUFiIRSf/FZpYcSx8hTTrOa
 41GapHhWawVzSaE0QLzqRt9BCaWQJ7LHWDaB1UypAtJnThoIIdMty87kfmjrSJ+MVS849X7a
 7jGIxWYEti15nWUyhtz2C1q8LZOYt/1ApCyxblbv3q13RHn5rlalfU/f5jdRRcFblO3rg3/u
 dFS8lF0JTSGfn2eOhvdfKuv64pwcdvqnzthRnh+b35F0evzEePSYebZpsKp3dc26NU1hcG9C
 s0ImFWrj5GEyqNHK/wCS0IPcWAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7p3UnfFGSyfqmbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLOc/PMlqsXH2UyWLBfmuLL1ceMllsenyN1WLi/rPsFpd3zWGzWHvkLrvF
 84U/mC0OfnjCanF38hFGB36PNfPWMHrs/baAxWPnrLvsHtu/PWD1uN99nMlj85J6j9v/HjN7
 TL6xnNFj980GNo/ju26xe/RtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYml
 nqGxeayVkamSvp1NSmpOZllqkb5dgl7GlNXv2QoOKVd8uHWGuYHxvmwXIyeHhICJxJkpC9i7
 GLk4hASWMkr8+tXGBJGQkTg5rYEVwhaW+HOtiw2i6BOjRO/OZSwgCTYBQ4mutxAJEYFORolp
 3R/BRjELLGGW6Jt6iQ2kSljAV2Jf1xegURwcLAKqEjMXR4KEeQXsJPbeP80IsUFeYvWGA8wg
 NidQ/P78P2ALhAQKJR5dfcsygZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMBI2nbs
 55YdjF3vgg8xCnAwKvHwdhjtjBNiTSwrrsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7E
 aAp000RmKdHkfGCU55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRq
 YNy8f4OprtfytY+M/PPPnm7adSffXvT5je7LCaZua7bPqTFl0P78evJKHk8lf4Ga2MJWv/B4
 RZHMV9XysbUepqvmxk1ire28toDnyrLZR+w35T3hmc5sfSXt4anTpS/vCG5lvF37oHsFc/rc
 eRGBexVYY9PWmnTwnHjLdutgzAcpyX6JqbXx3kosxRmJhlrMRcWJAKePAWK6AgAA
X-CMS-MailID: 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5
X-Msg-Generator: CA
X-RootMTR: 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020119_603256_D4FA21AE 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
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
 drivers/gpu/drm/msm/msm_gem.c    | 13 +++++--------
 drivers/gpu/drm/msm/msm_gpummu.c | 14 ++++++--------
 drivers/gpu/drm/msm/msm_iommu.c  |  2 +-
 3 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index 5a6a79f..6318c20 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -53,11 +53,10 @@ static void sync_for_device(struct msm_gem_object *msm_obj)
 	struct device *dev = msm_obj->base.dev->dev;
 
 	if (get_dma_ops(dev) && IS_ENABLED(CONFIG_ARM64)) {
-		dma_sync_sg_for_device(dev, msm_obj->sgt->sgl,
-			msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
+		dma_sync_sgtable_for_device(dev, msm_obj->sgt,
+					    DMA_BIDIRECTIONAL);
 	} else {
-		dma_map_sg(dev, msm_obj->sgt->sgl,
-			msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
+		dma_map_sgtable(dev, msm_obj->sgt, DMA_BIDIRECTIONAL, 0);
 	}
 }
 
@@ -66,11 +65,9 @@ static void sync_for_cpu(struct msm_gem_object *msm_obj)
 	struct device *dev = msm_obj->base.dev->dev;
 
 	if (get_dma_ops(dev) && IS_ENABLED(CONFIG_ARM64)) {
-		dma_sync_sg_for_cpu(dev, msm_obj->sgt->sgl,
-			msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
+		dma_sync_sgtable_for_cpu(dev, msm_obj->sgt, DMA_BIDIRECTIONAL);
 	} else {
-		dma_unmap_sg(dev, msm_obj->sgt->sgl,
-			msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(dev, msm_obj->sgt, DMA_BIDIRECTIONAL, 0);
 	}
 }
 
diff --git a/drivers/gpu/drm/msm/msm_gpummu.c b/drivers/gpu/drm/msm/msm_gpummu.c
index 34980d8..5d8da4d 100644
--- a/drivers/gpu/drm/msm/msm_gpummu.c
+++ b/drivers/gpu/drm/msm/msm_gpummu.c
@@ -35,21 +35,19 @@ static int msm_gpummu_map(struct msm_mmu *mmu, uint64_t iova,
 {
 	struct msm_gpummu *gpummu = to_msm_gpummu(mmu);
 	unsigned idx = (iova - GPUMMU_VA_START) / GPUMMU_PAGE_SIZE;
-	struct scatterlist *sg;
+	struct sg_dma_page_iter dma_iter;
 	unsigned prot_bits = 0;
-	unsigned i, j;
 
 	if (prot & IOMMU_WRITE)
 		prot_bits |= 1;
 	if (prot & IOMMU_READ)
 		prot_bits |= 2;
 
-	for_each_sg(sgt->sgl, sg, sgt->nents, i) {
-		dma_addr_t addr = sg->dma_address;
-		for (j = 0; j < sg->length / GPUMMU_PAGE_SIZE; j++, idx++) {
-			gpummu->table[idx] = addr | prot_bits;
-			addr += GPUMMU_PAGE_SIZE;
-		}
+	for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
+		dma_addr_t addr = sg_page_iter_dma_address(&dma_iter);
+
+		BUILD_BUG_ON(GPUMMU_PAGE_SIZE != PAGE_SIZE);
+		gpummu->table[idx++] = addr | prot_bits;
 	}
 
 	/* we can improve by deferring flush for multiple map() */
diff --git a/drivers/gpu/drm/msm/msm_iommu.c b/drivers/gpu/drm/msm/msm_iommu.c
index ad58cfe..d322b39 100644
--- a/drivers/gpu/drm/msm/msm_iommu.c
+++ b/drivers/gpu/drm/msm/msm_iommu.c
@@ -43,7 +43,7 @@ static int msm_iommu_map(struct msm_mmu *mmu, uint64_t iova,
 	struct msm_iommu *iommu = to_msm_iommu(mmu);
 	size_t ret;
 
-	ret = iommu_map_sg(iommu->domain, iova, sgt->sgl, sgt->nents, prot);
+	ret = iommu_map_sgtable(iommu->domain, iova, sgt, prot);
 	WARN_ON(!ret);
 
 	return (ret == len) ? 0 : -EINVAL;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
