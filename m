Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588B1FF7CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tgBHha/r+cy3I2YiTXwk3FFVfw/IcvnsUmHdZ+yy/W0=; b=VroxJ1ZCGPk5yYMarCHXeJX0tf
	wJGyFOwvONlaLBbWtRr5l8h68A8NJE/u7Jlmt5JjWAQ9K2QLHEMJc64XMt6jtjsKxLFhNGCzgaA5J
	bWracwQIjRt72C1BQTRsSvMvGxGSmJbz+/eTd7yXD0+t+lLw+XRfbRJbBuTXRmJrW8ofbFvacJujr
	36o/0PsZ9DrD8GB9dhIPHy0so8jJZSNUm/GULYTzYqqBYke3fcUjV28W9kPvZH2XJXYk3SGI5Li+J
	0xLEx46TVGI7ZrZsECc/bUk7q6IwUG1IY/rsezklWTqc126+BlCopM6TA8ch8cL3RdpB3KjBlBeqy
	Qrzqsu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwjX-0002HV-UK; Thu, 18 Jun 2020 15:45:43 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweR-0004Dt-PL
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024euoutp01c9c9a5e492d7c1add22b76bc5312f941~ZrZrqDOWh1845018450euoutp012
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154024euoutp01c9c9a5e492d7c1add22b76bc5312f941~ZrZrqDOWh1845018450euoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494824;
 bh=ePXLHe/mfRhAa1xR5V0eqYUoM9rqbQC5MkvAEkUq1G0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ATZDW8CYehNxGSzbUJe/C9zxb730GeyAY8blPLMTAkUQw8+mjXebd+89tBpnPB9b3
 n2sps0AktumKgyQTmF29QcGU5ZGQxEyMcMt9cLAE7Bx/gSGYhBjBtGHxExc97Q6fBC
 dlhukTmGBFmFLgXSKgngsqhRb5gLzX94JR/NhpXo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154023eucas1p2c76353986edc8fa47f500f6958cd6ff9~ZrZrXy-wd0500605006eucas1p2v;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E0.DE.60679.7EA8BEE5; Thu, 18
 Jun 2020 16:40:23 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93~ZrZqsjD1q1755717557eucas1p1I;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154023eusmtrp2a3565a5ca2c08fe56a160f1ec7cc0fee~ZrZqr24EP0399203992eusmtrp2Z;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-32-5eeb8ae78786
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7A.EE.08375.6EA8BEE5; Thu, 18
 Jun 2020 16:40:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154022eusmtip17c625ab9615396284a89154a2f9a6468~ZrZp7-JR90742307423eusmtip1R;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 13/36] drm: msm: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:34 +0200
Message-Id: <20200618153956.29558-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe1BMYRjG59uz59JOy2kz+SRldjCTW8KMQzIYl2PG0Bj/YMSho2J3NedU
 2qYhJWNWpcsIqyFEd7E1XValVrU12aSarEshmspOMhXSmrKnE/77vc/zvO873zsfgSieoe5E
 qCac5TSMSonJpGWNv16s6NfZAleN/VxOJbU2S6jH14tRaqosFaE6vw9jVGa/BVB5BQ0SKuup
 HzXW+VFCGT51oVTqUwtOdRgzMaqovhun+u+MI1Tdt88o1Z1eDzbPpgtvFQK6+keWlK7Ud+N0
 +Y8PKP3+sllCl2Sfo99OfkLodGsOoJ+8jsVos/ENTieX5gN61OAZ4HxQtjGIVYVGspzPpqOy
 kMyXJWiYXhmVYmmQxAKLhw4QBCTXwpvNWh1wIhRkLoC9hT4ijwGYXXdWB2QOHgWwsX0cCIaQ
 bx20S0QjB8C+6nu4WDg6HuisqJDCSF+oG9JhAs8hEwBsSnIWQgipR+CAyT5tuJJ7YW99yvRY
 KbkYXit4Ps1ychO8MGyTiuu8YMGjWkRgJ4feYk5AhUGQ7MFhQkPNTGgbvDBVhYjsCr+YS3GR
 PeBU5W2J2BAP4MfWIlwsEgHsiLs+8yI/+K51AhOugZDesNjoI8pbYF9OGyYeaRa0DrkIMuLA
 tLJriCjL4aWLCjG9BOrND/+trWtrn4nQsDLRSzxQKoC2K10gBXjp/+/KAiAfzGUjeHUwy6/W
 sGdW8oyaj9AErzx+Wm0Ajq/VMmkeqwDG38dMgCSA0lk+sN8WqECZSF6rNgFIIMo58q2WlkCF
 PIjRRrPc6SNchIrlTWA+IVXOla+5O3hYQQYz4ewplg1jub+uhHByjwUxV5tenVNrksNr8u1J
 0btUGa4B8w5NSBdweRs3VPy+cQDZ6V5Qxa3IfuiivWl9Fddw8s7FhfF7yjHSvq7Hc2DRSA5y
 X8/4p60fBbFRU18zKFOMoWJ3L4ufCPbOtaXvcJN2l2p9oruIwYzztXxccY/b9pGQSa99lf54
 2qPkpGWhSikfwvguRTie+QOgax04VgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7rPul7HGbzstrboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFnOdnGS1Wrj7KZLFgv7XFlysPmSw2Pb7GajFx/1l2i8u75rBZrD1yl93i
 +cIfzBYHPzxhtbg7+QijA7/HmnlrGD32flvA4rFz1l12j+3fHrB63O8+zuSxeUm9x+1/j5k9
 Jt9Yzuix+2YDm8fxXbfYPfq2rGL0+LxJLoAnSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS9jzsXNrAWzlComnD3K1MB4VqaLkZNDQsBE4tzL30wg
 tpDAUkaJNdPDIeIyEienNbBC2MISf651sXUxcgHVfGKUmDXtMQtIgk3AUKLrLURCRKCTUWJa
 90d2EIdZYAmzRN/US0AZDg5hAV+JV/1sIA0sAqoS01efYQSxeQXsJFrev2aB2CAvsXrDAWYQ
 mxMofvp4KyvERbYSzz+0sU1g5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMI62Hfu5
 eQfjpY3BhxgFOBiVeHhfhLyOE2JNLCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEh
 RlOgoyYyS4km5wNjPK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dU
 A2Pzbd6pahNm3yq6ylW46XDBYUWPz3WREvfdjzBObXPwSlPq7nZ4xzJZ65Gv/6K2VVqz5knG
 LE+8Pv0k7+81jKX/WHgt/yzzvqD5aH7LhLLdLWdS5Lnbn8efaa1jDvv8+ELxet7I6QdimFc3
 ng+t3BCRe8Bg/5vt867m7RfmMJ/yuHrPPpk7+3YpsRRnJBpqMRcVJwIA7lJ9zrkCAAA=
X-CMS-MailID: 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93
X-Msg-Generator: CA
X-RootMTR: 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084028_058073_F4090F83 
X-CRM114-Status: GOOD (  15.03  )
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
 drivers/gpu/drm/msm/msm_gem.c    | 13 +++++--------
 drivers/gpu/drm/msm/msm_gpummu.c | 14 ++++++--------
 drivers/gpu/drm/msm/msm_iommu.c  |  2 +-
 3 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index 38b0c0e1f83e..e0d5fd36ea8f 100644
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
index 310a31b05faa..319f06c28235 100644
--- a/drivers/gpu/drm/msm/msm_gpummu.c
+++ b/drivers/gpu/drm/msm/msm_gpummu.c
@@ -30,21 +30,19 @@ static int msm_gpummu_map(struct msm_mmu *mmu, uint64_t iova,
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
index 3a381a9674c9..6c31e65834c6 100644
--- a/drivers/gpu/drm/msm/msm_iommu.c
+++ b/drivers/gpu/drm/msm/msm_iommu.c
@@ -36,7 +36,7 @@ static int msm_iommu_map(struct msm_mmu *mmu, uint64_t iova,
 	struct msm_iommu *iommu = to_msm_iommu(mmu);
 	size_t ret;
 
-	ret = iommu_map_sg(iommu->domain, iova, sgt->sgl, sgt->nents, prot);
+	ret = iommu_map_sgtable(iommu->domain, iova, sgt, prot);
 	WARN_ON(!ret);
 
 	return (ret == len) ? 0 : -EINVAL;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
