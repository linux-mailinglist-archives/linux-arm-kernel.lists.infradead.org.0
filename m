Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B2D1D160B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ziiQmKL1KmIx7VrPgb3L+Ld6WdSLZf+y/rXJcDPU55U=; b=WgLvvtJsTjgLXfKTFfDETsI4lb
	zQejV+ryWHRuEHQNEyDTqumCW20ip9Qgx8DYS7By82MjBhfykPSxqhQ4m81W4peJ6h9ZGz+cRyAfL
	CsixXIwWdoyOCSOI46laQw9fwCDA4kibB6Y8xcCuJtaKUI1ZhIHbvzJRYCL+R0dBjevADgN2kGnRK
	S1OEELsYTdpQ3E5TQySzgRfvwmLmJ5NCgMXL8F0/4qFus8H7uznXTWrqZN0JAotLyqItEixnd9I+H
	y+I6olzdtxU6m077jFERbLUykfth2JUTLBqZrbkyXm0P/1gc6ikUBiJ7LDLE3VEXvwFZPmPvhDf79
	aTevlLpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYreE-00059r-Kr; Wed, 13 May 2020 13:42:10 +0000
Received: from casper.infradead.org ([90.155.50.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVn-0001m5-1t
 for linux-arm-kernel@bombadil.infradead.org; Wed, 13 May 2020 13:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Lxat/cHNFCaPnCTiGbzTboPtTOwp4VgCujx0aicrwjY=; b=f6mV7R8jWPqhuLKmTetcWtgsCc
 VRopDN2D6DERmReRhbprYvb0bbWJ+wx045Dm4UAB3Qcuumds3heB78z9qKYHvvVqhkBK+mA3EijwS
 ihvSiJSnnaN4uVH2d0YTGoXjG21y3RDrFlp7j/ffu5gL2ZZO5dBasqg0K9sKGJQej8qxN1KzljnCA
 Wp17t7vv8mzI0cZoCk+TWmMDIZTlSMK86XJAG4AeQbalKf9lRTpGOhho2uXpWASQfbW6qyOh7KVkC
 hfmg3BOr4d/bGmvjshiATubjgFLqzThOeeyD4Imh4kYEZW4izJ3NdYVCtMH0MsaQ5FjGNSlJ/f6jR
 rUNYGPPg==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVg-0006Sb-SJ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:24 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133319euoutp02651c3792f1cf42f0cf8bc76d7fc9063b~Omcc_c9jQ3219432194euoutp02H
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133319euoutp02651c3792f1cf42f0cf8bc76d7fc9063b~Omcc_c9jQ3219432194euoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376799;
 bh=Lxat/cHNFCaPnCTiGbzTboPtTOwp4VgCujx0aicrwjY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D7jEl/Ue5PRCgr4GrfQUCJr+LsbqHZTJXqQliW1b1HXFTFDSgU0bsicvBCtHItGQP
 HFTM2m8A/zP2enmuMRLPiR/qDLOuRBJvQa4ZKQ/yDhXQ31YHP8ggS6pq7XRCLO4Fuf
 4toTu7d+fRXYX8QVDx1WIgvP6IC57CBcWaNXz5KQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133319eucas1p22be5456f62df1768a9c90da8a4cd4d85~OmcchOCrT1832718327eucas1p2k;
 Wed, 13 May 2020 13:33:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 25.D5.61286.E17FBBE5; Wed, 13
 May 2020 14:33:19 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34~OmccOWi5C0874908749eucas1p1C;
 Wed, 13 May 2020 13:33:18 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133318eusmtrp15d3d3fa1fbb26e7094d0a572b26e0a71~OmccNgAPR1050610506eusmtrp1Y;
 Wed, 13 May 2020 13:33:18 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-74-5ebbf71e36bb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D8.47.07950.E17FBBE5; Wed, 13
 May 2020 14:33:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133317eusmtip1357abafa80a7b15e4d3caea89056f39b~OmcbgtxCp0693306933eusmtip1J;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 30/38] dmabuf: fix common struct sg_table related issues
Date: Wed, 13 May 2020 15:32:37 +0200
Message-Id: <20200513133245.6408-30-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUhUURTGufNWl7HXqHgxSRoySEuTgh6YoVTwIAohAg0yR32ouc9zSQ0c
 l8RGLU1MEZPBMh3XcUnDbVxSU8lkNHOtTNMSTXHF/tDm9dT++87vfOd+h8MlEUkbZkkGhESw
 8hBZkBQ3RBt6dj6etd5u9jw3eoLOGOwT0TV51Ri915CF0CObKzitLu8W0SqtEz0/0YfQGyMz
 Irp2dhSjh5sKcDpd8wajK99NE3TH6hxG90+vEy4mTEVhBWBat1QoMzXagjONW98w5mtar4ip
 exXPTO7OIkz2WAlgmscVOLPS9glnntSXAWa99rib8R3DS75sUEAUK3e47GXoP5IXF/bc6oEm
 ux9VgGoLJTAgIXUB5vbsYLyWUKUAdn+4pgSGer0BYMnCPC4U6wAqcypFBxMNKiUhNEoATJlM
 Jg5Hmp+uE7wLpxyhclmJ89qMegTg+wxj3oRQyQgs0yb8a5hS12Hij0Z9OEmilA3UlMt5LKac
 YX5aOyakWcNyTTvCawM9X5zSovw7kNIRUF1TgwumqzBP+RIRtClc7K0nBG0FB7LT9weSAJwZ
 rCSEIh3A4cQ8ILic4NTgH5zfAqFOw+omBwG7wv6CJBGPIWUCx5aP8hjRy2cNuYiAxTA1RSK4
 T8H83qrD2I4h3f46DJxRLKDCgbr09y1NwDKBdf7/MBUAZcCCjeSC/VjOMYSNtudkwVxkiJ+9
 T2hwLdD/qoHd3rW3YFPn3QkoEkiNxfREs6cEk0VxMcGdAJKI1Ex8s1qPxL6ymFhWHnpPHhnE
 cp3gGIlKLcTni37dlVB+sgg2kGXDWPlBV0QaWCqAOXHb8vfojfaiCS8fjbfdkYvxQ7ZGS+Ir
 85ld8Taq7bnJYbdc98zHUe66/qrA6JxNZxtXbaJ5rCzcpKUlq9DVZG2esFMvjbx04s54JFkU
 n7TVDrl47H158d0LjbtV8VoRIw/TTf582Jn12Sg7ubVmtTg81Vhl5TCuRuvuJ7lHKKQo5y9z
 tEXknOwvAN1Qr1EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7py33fHGXT+UbfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i54NW1kt1h65y25x
 8MMTVotTdz+zO/B5rJm3htFj77cFLB53ru1h89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHm833eVzaNvyypGj8+b5AJ4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyrsyoLpgmU7Fh8imWBsb14l2MnBwSAiYS2xZ0sXcxcnEICSxl
 lDj/+xYTREJG4uS0BlYIW1jiz7UuNoiiT4wSs1q3gBWxCRhKdL2FSIgIdDJKTOv+CDaKWaCH
 WeLSwi+MIFXCAt4STU+3A43i4GARUJXYsLoIJMwrYCsxq/sA1AZ5idUbDjCD2JxA8Vd39rOA
 2EIC+RJ7F+9jm8DIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZg9Gw79nPLDsaud8GH
 GAU4GJV4eC1u7Y4TYk0sK67MPcQowcGsJMLrtx4oxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKi
 yfnAyM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cCoX5b0/O8x
 /4D676crGiu8bMz/mR+3F872yyn7u1DW+HWeoqB7cC7PpZc2GqeOr9z+bn+Z//H7Lx9Ov7Jv
 R+LN2ger/n1qve2v3abtFmModNfypqvGZgvLw1tMb/FucF1iuPDUx5Y6O6PeC9NP7ApUZSmK
 kmn58k471Xzr0tsz29Ty7O6ceMKhxFKckWioxVxUnAgAnEr/zbQCAAA=
X-CMS-MailID: 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34
X-Msg-Generator: CA
X-RootMTR: 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_143321_220416_1406B2A8 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
 David Airlie <airlied@linux.ie>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
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
 drivers/dma-buf/heaps/heap-helpers.c | 13 ++++++-------
 drivers/dma-buf/udmabuf.c            |  7 +++----
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/dma-buf/heaps/heap-helpers.c b/drivers/dma-buf/heaps/heap-helpers.c
index 9f964ca..d0696cf 100644
--- a/drivers/dma-buf/heaps/heap-helpers.c
+++ b/drivers/dma-buf/heaps/heap-helpers.c
@@ -140,13 +140,12 @@ struct sg_table *dma_heap_map_dma_buf(struct dma_buf_attachment *attachment,
 				      enum dma_data_direction direction)
 {
 	struct dma_heaps_attachment *a = attachment->priv;
-	struct sg_table *table;
-
-	table = &a->table;
+	struct sg_table *table = &a->table;
+	int ret;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents,
-			direction))
-		table = ERR_PTR(-ENOMEM);
+	ret = dma_map_sgtable(attachment->dev, table, direction, 0);
+	if (ret)
+		table = ERR_PTR(ret);
 	return table;
 }
 
@@ -154,7 +153,7 @@ static void dma_heap_unmap_dma_buf(struct dma_buf_attachment *attachment,
 				   struct sg_table *table,
 				   enum dma_data_direction direction)
 {
-	dma_unmap_sg(attachment->dev, table->sgl, table->nents, direction);
+	dma_unmap_sgtable(attachment->dev, table, direction, 0);
 }
 
 static vm_fault_t dma_heap_vm_fault(struct vm_fault *vmf)
diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index acb26c6..89e293b 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -63,10 +63,9 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 					GFP_KERNEL);
 	if (ret < 0)
 		goto err;
-	if (!dma_map_sg(dev, sg->sgl, sg->nents, direction)) {
-		ret = -EINVAL;
+	ret = dma_map_sgtable(dev, sg, direction, 0);
+	if (ret < 0)
 		goto err;
-	}
 	return sg;
 
 err:
@@ -78,7 +77,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 static void put_sg_table(struct device *dev, struct sg_table *sg,
 			 enum dma_data_direction direction)
 {
-	dma_unmap_sg(dev, sg->sgl, sg->nents, direction);
+	dma_unmap_sgtable(dev, sg, direction, 0);
 	sg_free_table(sg);
 	kfree(sg);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
