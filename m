Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B47D1CF12F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a1WvFV0t/YsdLAmeNg6JBMi8udxu4vwQiVBLchxIjOk=; b=Aw+aqkHq6qEVZFnEftehNjSBZb
	xGEG38hUwMTQVQ6asSJeDc+r5vAByHOU4niCipTYGpbR/0g+Ld78c/OxVj+ZzTOPoTxCMGHb9u+pv
	myrXmJzR2khRGiJ+clXL8ilhlFhZpxbeMnCDuXdy2POBua8FvDhgXZOZp0XwNAqfSq0dmAOQkjVk+
	qH5AgQWmF1KtmJrNfWFQw1KnseX2dlaFRVWKWHFs3n+9wx3tCg9F+xr4XorvapfXvefqEjsTpmPRb
	wSvpRAqN3VM2Ou7/UeGlng9i/9Sc23bJcpgav9GJ5FKzlAiOS1t+FTGw2eVQm6IFv1CtQQhhAaunk
	CKXsFp0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQvv-0002sG-V5; Tue, 12 May 2020 09:10:40 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn6-0002Qq-ED
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LANz/nyu8DV77Z78ejKJQdltlPOf4e5b46TWqMiQeyU=; b=2/3SjTUwRKP3gGujW1E0D8e7re
 2SLgKmHuuRSqjhGSAl0ba3BLWKyXA0W8rhMxExs3zjyl28Wx16T2QqhmaIr9iO+3ZGUhP2Lo7n4R1
 9ARl5F92p6JZnFSJMHRCqXZTWhd4qTcnOwTb5mKxmFNoE/5/jXe/UQuJwLZMzuFXLDprdSSembV/i
 v2uB0HtYtugp2zfJ+aSRmYrUkZ3smvSUcbYYI0WdeWfk/qH7lUtraBN/TrFTqcBK0bbWHjqS5MQ6v
 hs6UULN7Xik1Ue6zgXEiazZ54bfBA6N093FVLE9MiBRa7gd7fMqWEfI0lO37EX41qmn0KaPYT8scy
 wrxF/ZzQ==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmz-0004UI-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:27 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090118euoutp01f5555cd3cd4658ab78081922af8da140~OPFqhZMbz2636526365euoutp01F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090118euoutp01f5555cd3cd4658ab78081922af8da140~OPFqhZMbz2636526365euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274078;
 bh=LANz/nyu8DV77Z78ejKJQdltlPOf4e5b46TWqMiQeyU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T9HOX3ZdqRSX5PUUnznPtJs++vjqpzGMpNF/B/C7ksr29oZnTZlZUcBHCK1h8g8UY
 +SWl2fNFCc1QUrB7qhp0lyOLJ+TsAC4V19WK/krsiWiQBvBZJRnzMZAW+SuuEFAGVs
 uPypJVRMHPTbVBugSimrhVlEtgu9A4gREJTzrBD4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090118eucas1p198633515d1bbe299cc514d15142e04df~OPFqS3qDA3053130531eucas1p1o;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5E.6B.60698.ED56ABE5; Tue, 12
 May 2020 10:01:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3~OPFp2cLDX1612716127eucas1p1g;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eusmtrp15c58dbf9459f63539ed08635a4f7afeb~OPFp1zwhK0188101881eusmtrp1L;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-28-5eba65de16bb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EA.F2.07950.DD56ABE5; Tue, 12
 May 2020 10:01:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eusmtip1d62f8b1449dbdc944fcec14d9a1115b7~OPFpVX97m1148011480eusmtip1W;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 18/38] drm: omapdrm: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:38 +0200
Message-Id: <20200512090058.14910-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djP87r3UnfFGRxdzm3Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGWsXPuDpWC9aMWvY5tYGhhPCHYxcnJICJhI/HvRyAhiCwms
 YJTYd5G7i5ELyP7CKLHj5mYWCOczo8SXhvWsMB0HN/1ggkgsZ5TY8H0vO1zLtp5/7CBVbAKG
 El1vu9hAbBGBVkaJE708IEXMAoeYJLa0XmUBSQgLBEvcnvUGzGYRUJWYc/06E4jNK2AnMXXP
 MmaIdfISqzccALM5geL35/9hgYjvY5c499cawnaRmLZ1FhOELSzx6vgWdghbRuL05B6wHyQE
 mhklHp5byw7h9DBKXG6awQhRZS1x59wvoFM5gM7TlFi/Sx8i7ChxqqsXLCwhwCdx4y04wJiB
 zEnbpjNDhHklOtqEIKrVJGYdXwe39uCFS1Dne0h0PtrBBgnfo4wSk25XTGCUn4WwawEj4ypG
 8dTS4tz01GLjvNRyveLE3OLSvHS95PzcTYzAdHT63/GvOxj3/Uk6xCjAwajEw9thtDNOiDWx
 rLgy9xCjBAezkghvSyZQiDclsbIqtSg/vqg0J7X4EKM0B4uSOK/xopexQgLpiSWp2ampBalF
 MFkmDk6pBsbYnZ93hH6aKnFnyZfzf6efMPdhixCofOnbvFvO4E7Z/oVPk++e+v6uxD/R0DdO
 hyf2auP2b6pHUqfx+qlXlpnvnVh641OjoZSein3cfslry/TEVD6E9z5Nvz3FtePJZCenVgaL
 i9+T5+jwrjtY0lwf1zTz6Ibfyz5sKrZearJdiHnpE8+1P1YqsRRnJBpqMRcVJwIAF+opq0MD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7p3U3fFGWzq1LLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DJWrv3BUrBetOLXsU0sDYwnBLsYOTkkBEwkDm76wdTFyMUhJLCUUaKh6wUzREJG4uS0BlYI
 W1jiz7UuNoiiT4wSN2ceYwJJsAkYSnS9hUiICHQySkzr/sgO4jALnGCSuLd3PiNIlbBAoMSz
 vc1go1gEVCXmXL8O1s0rYCcxdc8yqHXyEqs3HACzOYHi9+f/YQGxhQQKJR5dfcsygZFvASPD
 KkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMAY2Xbs55YdjF3vgg8xCnAwKvHwdhjtjBNiTSwr
 rsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGD85pXEG5oamltYGpob
 mxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYHTcuSfJ/uvu9JVcBTKX3Pdvmllw+2+D
 ytZp2zLrLi2//ljm37Sgn6KpShH3DBtubXZpOqFvd69u2wvXGKeHOW/kpxy+ktDxmDMgOf7V
 LckJHevS0iWyFHT4JHp2HZi70mX53ugPX8oEdY+9+LhiunXUhd88V7g3vjhq0lit3l8kq//3
 zVWe+ElKLMUZiYZazEXFiQBoAy1dpwIAAA==
X-CMS-MailID: 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3
X-Msg-Generator: CA
X-RootMTR: 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3@eucas1p1.samsung.com>
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
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
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

Fix the code to refer to proper nents or orig_nents entries. This driver
checks for a buffer contiguity in DMA address space, so it should test
sg_table->nents entry.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/omapdrm/omap_gem.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_gem.c b/drivers/gpu/drm/omapdrm/omap_gem.c
index c259411..cbcb361 100644
--- a/drivers/gpu/drm/omapdrm/omap_gem.c
+++ b/drivers/gpu/drm/omapdrm/omap_gem.c
@@ -48,7 +48,7 @@ struct omap_gem_object {
 	 *   OMAP_BO_MEM_DMA_API flag set)
 	 *
 	 * - buffers imported from dmabuf (with the OMAP_BO_MEM_DMABUF flag set)
-	 *   if they are physically contiguous (when sgt->orig_nents == 1)
+	 *   if they are physically contiguous (when sgt->nents == 1)
 	 *
 	 * - buffers mapped through the TILER when dma_addr_cnt is not zero, in
 	 *   which case the DMA address points to the TILER aperture
@@ -1279,7 +1279,7 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 	union omap_gem_size gsize;
 
 	/* Without a DMM only physically contiguous buffers can be supported. */
-	if (sgt->orig_nents != 1 && !priv->has_dmm)
+	if (sgt->nents != 1 && !priv->has_dmm)
 		return ERR_PTR(-EINVAL);
 
 	gsize.bytes = PAGE_ALIGN(size);
@@ -1293,7 +1293,7 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 
 	omap_obj->sgt = sgt;
 
-	if (sgt->orig_nents == 1) {
+	if (sgt->nents == 1) {
 		omap_obj->dma_addr = sg_dma_address(sgt->sgl);
 	} else {
 		/* Create pages list from sgt */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
