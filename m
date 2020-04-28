Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8859C1BBF2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/HLnjDj1N0BVNwyXKsFr8ev8b0Rv2BXvhxENi8f1ZzI=; b=WjcpqEzCBbioOmca7SaMjT/m44
	yhjBEsI5wwJDiacGmYbNVYjqAAAuvQRqqN7v5xPM9l7gjj37zOE2d/zGlaeeIoZwohS3T5/nwy50C
	hEwqSU0spZokGyBJVEynTWc0MmwJVL7GbWTRpcpQRG7giN5YvlSHkDk3RncmOqmbBVCOg52ghX9ve
	5EwtkKTOrIn4mA5krEVj8b0zuaDZzCPLC6kF0BwFJorha02tfs0mEH/YFRvZIgla7ZgsE1RNL0+Yq
	rCwwLZtE7RWFwe0u0OUBMwPJZEUMShgsqXr54CKSidirf/898rnEojMAIBu9/JMQ5x5I4OySQx6XZ
	6WsE5Kiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQCK-0005zl-1V; Tue, 28 Apr 2020 13:22:52 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ9z-0004bD-VZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132026euoutp01fb35d88e665b6b4455b1c9a8cfa24656~J-l7Hzjyh1812618126euoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132026euoutp01fb35d88e665b6b4455b1c9a8cfa24656~J-l7Hzjyh1812618126euoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080026;
 bh=eD0W2i9dbIiSz9HVwrPxquvropyufixfeCFzM0la5XA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ces5k71LJ+t35ODGiktp+UcYljmvLJW+mG5dXL4vg9C9YOfbI/O43ldeDO3+YTeFA
 YszMr9qpIdzbneNSZlMsDL84Uupp+T8yZ1e8ZTB/0+X3Lk+XVBWwXpMobCeg28X521
 vBQ871tMN0zxFUMrg0iO0Dm8c6XpJCXPnEVh4jIk=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132025eucas1p12ba6985126a68a90e062c5bae34067c3~J-l6Odzch1367713677eucas1p1R;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A5.B4.61286.99D28AE5; Tue, 28
 Apr 2020 14:20:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971~J-l5sOP1g3052430524eucas1p1R;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428132025eusmtrp16811b52fea5ba357114dc7da2cdd64d0~J-l5rYnUg1743317433eusmtrp1w;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-6e-5ea82d9927fb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 5B.96.08375.99D28AE5; Tue, 28
 Apr 2020 14:20:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132024eusmtip2571a9aa820afc51fde9f2a6ce911c63e~J-l5H3l9V1062310623eusmtip2l;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 05/17] drm: exynos: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:19:53 +0200
Message-Id: <20200428132005.21424-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIKsWRmVeSWpSXmKPExsWy7djP87ozdVfEGWyfrGHRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o7hsUlJzMstSi/TtErgyLm+bw1TwhKdiXddD9gbGj1xd
 jJwcEgImEo8nzWPuYuTiEBJYwSjRdGwnlPOFUaKvZSIThPOZUWJ+axcbTMv5hkZ2iMRyRokj
 83YgtJxcNBusik3AUKLrLUSHiEAro8SJXh6QImaBbcwST5YfYQdJCAt4SVztWgZmswioSuxc
 sRTI5uDgFbCV2HRUH2KbvMTqDQeYQWxOATuJpY+esoHMkRC4xi5x4eIuFogiF4k/a/ZDnScs
 8er4FnYIW0bi9OQeFoiGZkaJh+fWskM4PYwSl5tmMEJUWUvcOfeLDWQzs4CmxPpdUJsdJU42
 94EdJCHAJ3HjrSBImBnInLRtOjNEmFeio00IolpNYtbxdXBrD164xAxhe0gsXPyVERJAExkl
 ds/fyjyBUX4WwrIFjIyrGMVTS4tz01OLDfNSy/WKE3OLS/PS9ZLzczcxAhPW6X/HP+1g/Hop
 6RCjAAejEg/vBp4VcUKsiWXFlbmHGCU4mJVEeB9lLIsT4k1JrKxKLcqPLyrNSS0+xCjNwaIk
 zmu86GWskEB6YklqdmpqQWoRTJaJg1OqgdHIx1w+zHBW+UZWB760Swpf5LYptyxrf6Ju891F
 3vWthwC744qp0jfsWOKLq6J5ThbH2ffulXtxv1xe62/hlHTOrU8+nC1z/DzDTPxS4veu637p
 +g/XMgoaGCv5cBxbwG3y9br+7AIj3erC+IMLOc33yoq9Uw9KPHvv6bqGeH67xZ9eLr3DpMRS
 nJFoqMVcVJwIAJzKOCZUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7ozdVfEGXRtYLXoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZl7fNYSp4wlOxrushewPjR64uRk4OCQETifMNjexdjFwcQgJL
 GSUOrvjLBpGQkTg5rYEVwhaW+HOtiw2i6BOjxJV50xhBEmwChhJdbyESIgKdjBLTuj+CjWIW
 OMAs0X3+JBNIlbCAl8TVrmXsIDaLgKrEzhVLgWwODl4BW4lNR/UhNshLrN5wgBnE5hSwk1j6
 6CkbSIkQUMnlltwJjHwLGBlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBEbPtmM/N+9gvLQx
 +BCjAAejEg/vBp4VcUKsiWXFlbmHGCU4mJVEeB9lLIsT4k1JrKxKLcqPLyrNSS0+xGgKdNJE
 ZinR5HxgZOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCcwzgn
 8cTeVwdumHRneBio2leurSzYvM7xyc9lrwwfrBf3M/f59Xfur+6aVM+7ootf3cw8u/3Y2zdP
 jB4fa2ZrYv5omBR8xO3ZiS1tK6XuFro1sxp+vfLNfBJbIcfc8zOPisU9e+veOEeP0eFUiKqW
 SHiLbm2ciodebgf37ODKBzfFJS60fDRSYinOSDTUYi4qTgQATjNhTLQCAAA=
X-CMS-MailID: 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971
X-Msg-Generator: CA
X-RootMTR: 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062028_147626_19048B0B 
X-CRM114-Status: GOOD (  12.70  )
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
 drivers/gpu/drm/exynos/exynos_drm_g2d.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_g2d.c b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
index fcee33a..e27715c 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_g2d.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
@@ -396,7 +396,7 @@ static void g2d_userptr_put_dma_addr(struct g2d_data *g2d,
 
 out:
 	dma_unmap_sg(to_dma_dev(g2d->drm_dev), g2d_userptr->sgt->sgl,
-			g2d_userptr->sgt->nents, DMA_BIDIRECTIONAL);
+		     g2d_userptr->sgt->orig_nents, DMA_BIDIRECTIONAL);
 
 	pages = frame_vector_pages(g2d_userptr->vec);
 	if (!IS_ERR(pages)) {
@@ -511,8 +511,9 @@ static dma_addr_t *g2d_userptr_get_dma_addr(struct g2d_data *g2d,
 
 	g2d_userptr->sgt = sgt;
 
-	if (!dma_map_sg(to_dma_dev(g2d->drm_dev), sgt->sgl, sgt->nents,
-				DMA_BIDIRECTIONAL)) {
+	sgt->nents = dma_map_sg(to_dma_dev(g2d->drm_dev), sgt->sgl,
+				sgt->orig_nents, DMA_BIDIRECTIONAL)
+	if (!sgt->nents) {
 		DRM_DEV_ERROR(g2d->dev, "failed to map sgt with dma region.\n");
 		ret = -ENOMEM;
 		goto err_sg_free_table;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
