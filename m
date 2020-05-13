Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A53C1D1635
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XYNukZDvhgiSp7IrPcaWXzsxqOoG0E7KYQkwGIyJQkA=; b=bTNFIlFqHKEAF68+hrMpjOjXIe
	lTvbNxx8mDCBX4nEnTIsSxPVZKgKRWXNhdINUrm4c442+picJpaUZZeSkOCwds6EXyzVpFmqYXc48
	Rcff+r8fr1yjD//cUg7W06GeMZt2JffIsL5uwRrgcBcxo82DHoCy3BYLX2/gVaeDYX4fzcFrinr55
	xsmO/2Hnk3CvyXbvHKrRGF3gkWMF4MYHEqKsi2hYY+d0phlcCN+AYu23DTeEl8SuVPa+9X222khzD
	UirJ06ExqNsz1xAB4FqLk5fVfl4/G/hXPmMZx9iZEY0qKFBmw3yy0KPUzk0Rf4LlVhAZS9sC46mu/
	pTcHvwrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrgV-00076l-BB; Wed, 13 May 2020 13:44:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVl-0001lU-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323euoutp019e1a6a71db2ae0bf2ebc79fd3f607334~Omcg9eHHb2140621406euoutp01i
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133323euoutp019e1a6a71db2ae0bf2ebc79fd3f607334~Omcg9eHHb2140621406euoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376803;
 bh=CZbbwG/c/y8+wYH8ObEE3tIAUZE/HWxN0ulpE2QNiE4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eYEKmPYmJIwJzHHc7tM+Ya6oHzwuAHyWDJNgCtvLhP1EZ1S4iJ93PwZ/VipmNANlt
 ouNyos6OzWlnGGgEpMoZBWQrA+3RwhVI3fK5ZTiCq/qZ2VOZBLTSVZqS2lspJibx+A
 FUMXvzny6ewSMHyJbZIZddUwVwQ/vx3AUG9IrnuY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323eucas1p167560f10137968d51959b06f96d18508~OmcgqQDwP0384603846eucas1p1k;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 49.11.60679.327FBBE5; Wed, 13
 May 2020 14:33:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515~OmcgULNyA0785007850eucas1p1G;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323eusmtrp12afaeda27ef00a9d1e53f0fb03dfb511~OmcgTZQiB1050710507eusmtrp1a;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-77-5ebbf723f197
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 77.2A.08375.327FBBE5; Wed, 13
 May 2020 14:33:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133322eusmtip15b0156e78861f281e5548f723b5c1813~OmcfiHzeD0693406934eusmtip1d;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 35/38] rapidio: fix common struct sg_table related issues
Date: Wed, 13 May 2020 15:32:42 +0200
Message-Id: <20200513133245.6408-35-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSzUcRzH+/4e7n5uzn6dq/sOYzvVli2i/vhtqmVa/WqtefirRF35DeOO
 7hBt6nIeLypkhGSyeY4QcuMikbRLSITkqSGSeU6jOz/03+vz/nze38/DvgQq0OBmhJ8smJHL
 JAFiDg+rblnVHbJe1ngdfjRhRiXq2hBqpKgXpV6kl+HURnUSSnUvznKowuK3CJWjdaQWuocR
 qmK0B6e66rI4VGnzIJdK/biMUo2/x/CTfLokuwTQ9Us5GP0qY5BLJ0xH4XTN0necHrrXitCV
 eXfo/vVRlE7pzQe0pk/Joe9XFQF6vsLSxfgS75g3E+AXysjtTlzl+fbHWwSphGHK3DlcCb6R
 amBEQPIobCuoBGrAIwRkAYDlymiMDRYA7FTPIWwwD+CziSSwbRlOTeWyiXwAJz5koTuWns/F
 iKGKQ9pD9YyaY2AhGQ3gu0RjA6PkLwQ2z9sY2JQ8D7ti6jEDY+R+2KHJ3PTyyeOwu3YRY7tZ
 weLy16iBjfT61IB2cz5IvufCkfYGDlt0CmYsx6Esm8Kp1iouyxawPSVhy6ACcFhXymWDBAC7
 ItO3FnKEA7o/+pcI/XgHYVmdHSs7wRVNAWKQIWkCe2d2swuYwOTqNJSV+TAuRsBWH4AZrc93
 2jZ2dG6NQ8PBvuytA70BMDIrB38IrDL+N8sBoAiImBCF1IdROMiYm7YKiVQRIvOxvR4orQD6
 L9W+3rpQC+r+XmsCJAHExnzqq8ZLgEtCFeHSJgAJVCzkXyjTS3xvSfgtRh54RR4SwCiagDmB
 iUX8I7mTngLSRxLM+DNMECPfziKEkZkS7Bl1D2ux/ZEWafNTtld0zs/STXs2BZud1ob2Cevp
 M5gzL+y2W7yLr/dkedPQg8I1lcPq4yd55nLPiA0Rddp1fEM1cHdf0pez/mvODWGxLQ7uL5ko
 c1Xn5bFOr6he0tHiotDLNdOaZ1LjsZJmIooQPHW6ERj8ibIfLtPG7hpP9hBjCl+JvQ0qV0j+
 AZ22r+JOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7rK33fHGbxtZrboPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/O
 JiU1J7MstUjfLkEv43anTEGzSEXDoo+sDYz3BLoYOTkkBEwkHk6dyt7FyMUhJLCUUeL2wyvM
 EAkZiZPTGlghbGGJP9e62CCKPjFKtLafYwdJsAkYSnS9hUiICHQySkzr/gg2ilngG5PEpKW3
 2ECqhAV8JC637WUBsVkEVCUu7J7NBGLzCthKXNnxlQVihbzE6g0HwFZzAsVf3dkPFhcSyJfY
 u3gf2wRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECo2bbsZ+bdzBe2hh8iFGAg1GJ
 h9fi1u44IdbEsuLK3EOMEhzMSiK8fuuBQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOi8
 knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M89T2LWmXyqwpTXhQ
 qdMzLX/tv2UFv7dERKhOt/iaw8FgdWRJituRJzkqE7ymC/5dzOB/4HHcGv7q+oZiN9/HZk+n
 Pk/L+c0e2nNNUu/Y/wKFwLhZ9/Lk3pzl4e35KWdeMynnHofXK8+dq+M5ePZoSpw/ca6y3SJR
 8leopMznuvzpx2axXCtUYinOSDTUYi4qTgQAssdja7ACAAA=
X-CMS-MailID: 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515
X-Msg-Generator: CA
X-RootMTR: 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063325_778873_EBA9508D 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/rapidio/devices/rio_mport_cdev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/rapidio/devices/rio_mport_cdev.c b/drivers/rapidio/devices/rio_mport_cdev.c
index 4029637..92d8742 100644
--- a/drivers/rapidio/devices/rio_mport_cdev.c
+++ b/drivers/rapidio/devices/rio_mport_cdev.c
@@ -574,8 +574,7 @@ static void dma_req_free(struct kref *ref)
 	struct mport_cdev_priv *priv = req->priv;
 	unsigned int i;
 
-	dma_unmap_sg(req->dmach->device->dev,
-		     req->sgt.sgl, req->sgt.nents, req->dir);
+	dma_unmap_sgtable(req->dmach->device->dev, req->sgt, req->dir, 0);
 	sg_free_table(&req->sgt);
 	if (req->page_list) {
 		for (i = 0; i < req->nr_pages; i++)
@@ -927,9 +926,8 @@ static int do_dma_request(struct mport_dma_req *req,
 				xfer->offset, xfer->length);
 	}
 
-	nents = dma_map_sg(chan->device->dev,
-			   req->sgt.sgl, req->sgt.nents, dir);
-	if (nents == 0) {
+	ret = dma_map_sgtable(chan->device->dev, req->sgt, dir, 0);
+	if (ret) {
 		rmcd_error("Failed to map SG list");
 		ret = -EFAULT;
 		goto err_pg;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
