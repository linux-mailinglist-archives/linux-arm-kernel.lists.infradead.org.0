Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7E31BBF38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0cUhKshmj7hJKVjYPCwumGDx9VW3bGblir3uksoL0sQ=; b=FapHuDLVP46E2TlwAbgEsZeNoO
	SRQf1mN6jX+RLQU44zUmgYpYB+g8HrK/vEzuX3H/YlbGhhWv0yf/VJBRwCamkS38WE6YjT76EYrwK
	ldR5izch3cy79jKxPokbgtvB7DSaUmKR64QfuO6d874MPUn4kQc2tHv10UL//FPJymA+o2chVvTmF
	CgAme4vAlSWA0I7oJJr46wKMcOywkqQaF+NbJiOdF2J/vLhsPpYLKIxaTPfMu3cuyy5PAAdARcwQR
	K3wW8i5c249oAMGflatU910LvcP3ttk7CAh7/RF2tJEYb5LwPlmfUbjM4WVv1zCB6r3TAjaVRiq7K
	NAJ24NzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQDc-0007Cc-So; Tue, 28 Apr 2020 13:24:12 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQA3-0004dr-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:33 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132029euoutp01ea3e8a682ed2ed0b3183b0e932420785~J-l99Qys52027120271euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132029euoutp01ea3e8a682ed2ed0b3183b0e932420785~J-l99Qys52027120271euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080029;
 bh=/sknGbuF2xKiJ1sV3keYuIADVQG1URCk7vW1XbZiyec=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J6CEOn4dWMY2T7MPxT7SELAFLkpLVwsGrF4MizVH7dx7Rn7m6GXwQLShdO2wsk2ho
 IBXRwrbuo7K/nYb6bKsnQESr/U2dJh/f64oOFCfQ/TjltqTzr/j+AUH0a2uqzO8Nzd
 ydQod6xYmFZkjPZdxBxLZgi3MTY6AiuyEk+pfaF4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132029eucas1p15ebf8ee46b248dce1729226b890ee7bd~J-l9cY4YL3064130641eucas1p1X;
 Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 99.B4.61286.D9D28AE5; Tue, 28
 Apr 2020 14:20:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132028eucas1p2310cd19b879962d5241604dd13909255~J-l9MHt4C2651826518eucas1p2R;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132028eusmtrp2955b6ead3ca0b1462357869626b9221b~J-l9Lhzga2140321403eusmtrp2O;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-7e-5ea82d9d6328
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 61.A6.08375.C9D28AE5; Tue, 28
 Apr 2020 14:20:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132028eusmtip28529c37fc88a79690be32e36cffb4ed4~J-l8m9CKM1116911169eusmtip2Y;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 11/17] drm: rockchip: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:19:59 +0200
Message-Id: <20200428132005.21424-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURTN63SmA1IYC5EXIJI0YJCkLMrHGAxq4sd8EKMfJsREZIARCLSQ
 liKIUTYNuwWiAlooBGQpayFFECNUoIqRKFtqhLAVFCKgsghKwJYp+Hfuuefcc9/NwxFBL+qE
 R0niGamEjhFi1lztwPaQSCmqDfbJVWNk3tA7DlndnMojW4ubUTJNN4iRe9oChBzdWMXIOnU/
 h3yqaOOQqtf+5ProDIfUzI2j5EjXM4xs7Jvkkb0/jCg5OLnGO29HNZQ1AOrVpopLTYx3Y1TH
 5jRKTeXoOVRb1T3qy+4cQhUZagD18nMKRuW31wNqTXP88pFr1mfDmZioBEbqHRBiHZle9QGL
 mz2WuKXpASnguyAbWOGQ8IML3Y9BNrDGBUQtgH8XsyzFOoD6zDqELdYALMpqAAeWQvUmj23U
 ADjdWYkeWlqmx3hmFUb4wuzlbMyMHYj7AL7NszGLEEKLQGNN377IngiEKRuL+yIu4Q6Vvyv2
 MZ8IgFNjeSgb5wrVLT2IGVuZ+OrZecw8CBLDPNg5tcplRRehsaufx2J7uKRvt2AXuNdZzmEN
 6QDODDXy2CIXwJG0YsuL/OHE0B/TWNy030nY3OXN0hfglnIXNdOQsIWG5aNmGjHBQu0ThKX5
 MPOB5ZInYKm+6TC29+OwRUJBhTGaPVABgDuNFUABXEv/Z6kAqAeOjFwmjmBkvhLmlpeMFsvk
 kgivsFixBpg+1vtd/a8XYGM4VAcIHAht+C02tcEClE6QJYl1AOKI0IE/G/k8WMAPp5NuM9LY
 G1J5DCPTAWecK3Tkn65cvC4gIuh4Jpph4hjpQZeDWzmlABFyhqZbOq7e8bj0zdmLyk9UOicP
 8Jc16XZ7bxbO5biUZYSVbxft+P8UXfENdH/0sBV6zjcGZax+wiYcVuTtHnmG2E4UK4loN+C6
 leSRubTUDGWOKjSh4664JEjRlH8zxK1LJEleavuKEqd2SDejnzLZVuvW2621WfNJpWghVxZJ
 +3oiUhn9D9EiVUBUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7pzdFfEGXSeNLboPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZzUvOshU8Eqv4sekAYwPjG6EuRk4OCQETiUmrv7F3MXJxCAks
 ZZRomvmSGSIhI3FyWgMrhC0s8edaFxuILSTwiVHi9mZFEJtNwFCi6y1InItDRKCTUWJa90ew
 ScwCB5glus+fZAKpEhbwkWj4+hKsm0VAVWLu94VgNq+AncT9q71QG+QlVm84ALaZEyi+9NFT
 oBoOoG22Epdbcicw8i1gZFjFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGD3bjv3cvIPx0sbg
 Q4wCHIxKPLwbeFbECbEmlhVX5h5ilOBgVhLhfZSxLE6INyWxsiq1KD++qDQntfgQoynQTROZ
 pUST84GRnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgZH5X77J
 pAUJzbF9HQYnSlefCP+QWL3dacUVrbNeig/NnI7u3glMM6rPbrnm7EuqZ3D+qCccpRBUY2K5
 d+dp9Zz513brJ/11OrAibmLeU2Hh2FXfVGb1rjibUnA//FryDaNDR2z3ahbxncw+k5DKWfNc
 d2n4FCtGfvbjaZuqXifEqW6avkKwXImlOCPRUIu5qDgRACirU1S0AgAA
X-CMS-MailID: 20200428132028eucas1p2310cd19b879962d5241604dd13909255
X-Msg-Generator: CA
X-RootMTR: 20200428132028eucas1p2310cd19b879962d5241604dd13909255
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132028eucas1p2310cd19b879962d5241604dd13909255
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132028eucas1p2310cd19b879962d5241604dd13909255@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062031_287116_5E4CB910 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. Adapt the code to obey those rules.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 0d18846..a024c71 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -37,7 +37,7 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 	rk_obj->dma_addr = rk_obj->mm.start;
 
 	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
-			   rk_obj->sgt->nents, prot);
+			   rk_obj->sgt->orig_nents, prot);
 	if (ret < rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -98,11 +98,11 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
 	 * without relying on symbols that are not exported.
 	 */
-	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
+	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->orig_nents, i)
 		sg_dma_address(s) = sg_phys(s);
 
-	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
-			       DMA_TO_DEVICE);
+	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl,
+			       rk_obj->sgt->orig_nents, DMA_TO_DEVICE);
 
 	return 0;
 
@@ -351,7 +351,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
 			rockchip_gem_iommu_unmap(rk_obj);
 		} else {
 			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
-				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
+				     rk_obj->sgt->orig_nents,
+				     DMA_BIDIRECTIONAL);
 		}
 		drm_prime_gem_destroy(obj, rk_obj->sgt);
 	} else {
@@ -493,14 +494,14 @@ static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
 			struct sg_table *sg,
 			struct rockchip_gem_object *rk_obj)
 {
-	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
+	int count = dma_map_sg(drm->dev, sg->sgl, sg->orig_nents,
 			       DMA_BIDIRECTIONAL);
 	if (!count)
 		return -EINVAL;
 
 	if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
-		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
+		dma_unmap_sg(drm->dev, sg->sgl, sg->orig_nents,
 			     DMA_BIDIRECTIONAL);
 		return -EINVAL;
 	}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
