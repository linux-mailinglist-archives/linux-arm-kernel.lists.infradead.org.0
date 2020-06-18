Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0681FF7EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xmphC/fCd9ClcK6I+dtlXA11scG9L+buNYjjQehBq28=; b=VrBomI/JRLnQqEUrojFRv2C41G
	eTM+I6z05b9qde4cYIdCb8At2YqxhwH/eXOY2f950lRgKHnk1KRI7mpjdnXiMdwQ/wJ2fOHdp09nx
	Lqm2lH0VK41gekzNcnXOljgKZZvWtF+9gNJE48HH3obvLvKHMIsdbyjFynP7o8DeDi5qKCDTm7hOn
	cPk4qUctvEosIG+UStyDyD06xKRsW7HQIkpfWRe691Xr4GQRSCeWQjL85RZOSNDdb4L0Vt7wGUjDJ
	iCw1NLBjgOekEaqdSVQA0UVXrSovsULxpBZe2ZM6XVkWTG13LuD6+jU4D4zVm82MIPIPV+3bBtsi2
	U8M6zkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwn0-0005Er-TH; Thu, 18 Jun 2020 15:49:18 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweW-0004K9-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:36 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154029euoutp019d422dda47b406479bd6b150be5539b4~ZrZwY3KYq1844818448euoutp01B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154029euoutp019d422dda47b406479bd6b150be5539b4~ZrZwY3KYq1844818448euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494829;
 bh=XflqGGuzbUpYYYoVktMdjjrhIiuC+lHBfLj8ptx60tc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BOWZuwWdbJcbKCQHFcFfKPZ4ghiknrNXzGEHxaKUqG9O1NnfvLKV2yQtiJ2uzMacD
 Fk9PRpdiFBCPdCBTVUv5xv+w/HGOzFoaXFhSvoUqVQWjDwitUS1ZonB0YFxoDUHySh
 hOk5QYrNGH/wdd0xpJ8Um8d8WktPRteJk/RLn8E4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154028eucas1p298772d549e3a859b6b4ba709977166fb~ZrZwH_3eT0608706087eucas1p2X;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 05.DE.60679.CEA8BEE5; Thu, 18
 Jun 2020 16:40:28 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e~ZrZv0jSaS0074000740eucas1p1A;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154028eusmtrp2af7f5bc6041ccaff3f0713cee8f0fbbc~ZrZvz7xmB0370403704eusmtrp2o;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-3f-5eeb8aec3f16
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 30.FE.08375.CEA8BEE5; Thu, 18
 Jun 2020 16:40:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154027eusmtip15ce9e44c79f4de95e367bb34237bf02d~ZrZvOvOnU0864308643eusmtip1L;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 21/36] drm: v3d: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:42 +0200
Message-Id: <20200618153956.29558-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmO2fneJxbHOfADwuldYGKvGTRIUUq/HF+REkXgqjpyoOKTmWb
 lv0oM2a5NPJCipmKLrzNvN+mpa7ptJlZmprOWwZlZkbe8ILm8Sz799ze94WHl0BF5ZgTERKu
 YhThsjAJzufVti+/P/xTMy11H2o9RiV1dyJURUYZRm3UJqNU38IsTrXc6wVUUUkbQuU2e1Hz
 fRMIVTnZj1G9+iycKjWO2FCtv79iJwV03Gw7TuuydYB+tZjLo+sWxzF67JEJoau0d+nh9UmU
 Th0sAHTj51icflxdDOi5Smc/uyt870AmLCSaUbj5BPCDm9ZKschu8S1NSz4eCzLsNYAgIHkU
 zpmFGsAnRGQhgClTNShH5gHcyKyzkjkACxPGeRpguzUx8dSIcEYBgJbqVLA9srw2irApnPSA
 mhkNzmIxqQawI0nAhlCyAYF5CU2ANRzIc/B53YANi3nkPtiob0BZLCR9YMUSp0PSBZaUt2zp
 tpu62aTG2EWQfG0DRwbKrCFfaFptxjnsAH+Yqq36LrjRkINwA/cBnOguteFIIoC9cRmAS3lB
 S/cKzvaBkgdgmd6Nq+YUHFu9zMEdcHDGng2jmzClNh3lZCF8GC/iduyHmaaX21dbez5aIzRM
 s4i4fpIBVKd9wZ4Al8z/p3IBKAaOTJRSHsQoj4QzN12VMrkyKjzI9UaEvBJs/pF53TRfD/Rr
 1w2AJIBEIPx+cVoqwmTRyhi5AUAClYiFp9+ZpSJhoCzmNqOI8FdEhTFKA9hJ8CSOQs+8qWsi
 MkimYkIZJpJR/HMRwtYpFkgXLR3+XfGJe2af2dd4X611TrfNtlu65BaKNnoZP6gVQ71rQwHu
 L4ZjHmxou8RTnd8Iff2ADl/QqT1yZ1ovRLzxnXHoOtGVNdh/6A8uf6tCI48bEO1qzpnUqmH+
 nb3niz61Nat8nFZ6fjmYU0ZHd8f5eQ4YvdIbtNP5ghqD41kJTxks8ziIKpSyv+ITIt5DAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7pvul7HGfzar2DRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehl7/qxlLTgnUtF1YDFbA+MMwS5GTg4JAROJh9OOMHUxcnEICSxllJh25ywzREJG4uS0BlYI
 W1jiz7UuNoiiT4wSR/d2MYIk2AQMJbreQiREBDqBurs/soM4zAL7mSQuHznFDlIlLOArcfrT
 JLBRLAKqErt37QRbwStgJ7Hx+3V2iBXyEqs3HACLcwLFTx9vBasXErCVeP6hjW0CI98CRoZV
 jCKppcW56bnFhnrFibnFpXnpesn5uZsYgTGy7djPzTsYL20MPsQowMGoxMP7IuR1nBBrYllx
 Ze4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Yv3kl8YamhuYWlobm
 xubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhit8qRNF+1xbZRbuCC9QrCscPcch57c
 3Nf+i9le5p7/dfVl5WPDG79Lbh7fN/Mef45rXWrs8ju/1R1vrZQpjZBfL9RsdOG76hEpM6OO
 nCuH+f0TROP/T69k1HoTk5GicTp62devG/eabfZOM/j3qExI67jyPa2IG01rn/VYyt7wCbKw
 P5Q5oVqJpTgj0VCLuag4EQD+fVZepwIAAA==
X-CMS-MailID: 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e
X-Msg-Generator: CA
X-RootMTR: 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084032_757696_3EDA3AC1 
X-CRM114-Status: GOOD (  13.87  )
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
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
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

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/v3d/v3d_mmu.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_mmu.c b/drivers/gpu/drm/v3d/v3d_mmu.c
index 3b81ea28c0bb..175c2578ad73 100644
--- a/drivers/gpu/drm/v3d/v3d_mmu.c
+++ b/drivers/gpu/drm/v3d/v3d_mmu.c
@@ -90,19 +90,16 @@ void v3d_mmu_insert_ptes(struct v3d_bo *bo)
 	struct v3d_dev *v3d = to_v3d_dev(shmem_obj->base.dev);
 	u32 page = bo->node.start;
 	u32 page_prot = V3D_PTE_WRITEABLE | V3D_PTE_VALID;
-	unsigned int count;
-	struct scatterlist *sgl;
+	struct sg_dma_page_iter dma_iter;
 
-	for_each_sg(shmem_obj->sgt->sgl, sgl, shmem_obj->sgt->nents, count) {
-		u32 page_address = sg_dma_address(sgl) >> V3D_MMU_PAGE_SHIFT;
+	for_each_sgtable_dma_page(shmem_obj->sgt, &dma_iter, 0) {
+		dma_addr_t dma_addr = sg_page_iter_dma_address(&dma_iter);
+		u32 page_address = dma_addr >> V3D_MMU_PAGE_SHIFT;
 		u32 pte = page_prot | page_address;
-		u32 i;
 
-		BUG_ON(page_address + (sg_dma_len(sgl) >> V3D_MMU_PAGE_SHIFT) >=
-		       BIT(24));
-
-		for (i = 0; i < sg_dma_len(sgl) >> V3D_MMU_PAGE_SHIFT; i++)
-			v3d->pt[page++] = pte + i;
+		BUILD_BUG_ON(V3D_MMU_PAGE_SHIFT != PAGE_SIZE);
+		BUG_ON(page_address + 1 >= BIT(24));
+		v3d->pt[page++] = pte;
 	}
 
 	WARN_ON_ONCE(page - bo->node.start !=
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
