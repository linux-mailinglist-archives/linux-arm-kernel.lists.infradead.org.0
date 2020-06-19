Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFE82006FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mbRsK4L9M9rNJHTRquypK3C6TMAZc5yFEmlqoZxRC1w=; b=U5rZsgKu31YEP/AFPshCQsBz9Q
	oL2iuODVYPNfZrk1JucEg5Gtmx49TVHf9YArqq1kCYqzJY3/U5QXZB36wo/g0LSooTnn4y1oVm1VI
	GnotsMCYQqa3giwDozqxDWRIiMSYglCdghTVXiZCVckSDPEW7Zr6cwwxcQKseANNqU6rCSyhqsl1T
	k7Wm/abtHwSwvvBnVPUrrSyD+D2n++GdMcaHCO9o+/8ioTZ/gYMLqwMXmjQE7tom+pxlJHtUh/aR2
	+ZXIiat7ITStq8CO65vWU6HnUhSAdufMFHvr9BLr35eGtwY7jQ0S7if0NZAg/StOW9kOhJY8W6VbZ
	D8JHgJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEUI-0003rv-LD; Fri, 19 Jun 2020 10:43:10 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOS-0005Fk-2O
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:10 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103706euoutp02ad60a8ee7b490b45058a154b514f5170~Z66KJsktF2242422424euoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103706euoutp02ad60a8ee7b490b45058a154b514f5170~Z66KJsktF2242422424euoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563026;
 bh=uRyWiAszaWTmT9aEcwSkw+b3g8jzvTahdvI0hzE+vrU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lbaOYvLms5DiuKSveV7FuZGNDZpNh/7jt68nQDj7zl1NU5PKsl1wrHTlKAbb/fRCV
 K6jwmEgWbJjwGqvhOBqLg1lde+mpva2HgHklcZmavk+DWi8ADwN+ZafFOiBFGPv8o6
 6FGhlD7W2OnhNtOMB7oANWvcZE8wa2cXAYcRax+c=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103706eucas1p121aef2e4fae6027715b8bd2a43ba6886~Z66J542fP0705907059eucas1p1J;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E2.9C.06318.2559CEE5; Fri, 19
 Jun 2020 11:37:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4~Z66Jnmqsd1691016910eucas1p2_;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103705eusmtrp1742aa8321b387c113939ab0d15d6c93d~Z66Jm_XTT0959609596eusmtrp1K;
 Fri, 19 Jun 2020 10:37:05 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-6b-5eec95529c22
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BD.0B.06017.1559CEE5; Fri, 19
 Jun 2020 11:37:05 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103705eusmtip2c4079c382c05ce6c31ccdc0672deae4a~Z66I8g9jD0229502295eusmtip2i;
 Fri, 19 Jun 2020 10:37:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 19/36] drm: rockchip: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:19 +0200
Message-Id: <20200619103636.11974-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSzUcRzH973fw/3I3X4dzSeF7Yb1sJSutt/GlKj9tGk96J826ie/ZB53
 l0qtpRTSCWdiFqlV5LHU0BNR8lQ3nB5U1jnN4iQLV6xcd37ov9fn/Xl/Pu/v97svhckaCCcq
 MvYYr4zlouWkLV77alq7bm/uaOiGt59pJkPbLmLu51cTjLk2G2N6p36QzN3yFhFjNhgJplBz
 hilu9GYmewdETM3gO4LRPb5GMj/1ZoypfNkvZprGvxJbpWxFUQVin5mKcbbOpCfYL5dbReyD
 W2fZT7ODGJvzoQSxT/qSSPZvQSPOXnlYhti6d0UYO1HjstvugK1POB8deZxXrvc9ZHu0pVFD
 xGc6n0w2zBBJKAfSkQ0F9CYo6uvE05EtJaNLEfy+rieFYhKBpuocYXXJ6AkEWk3YwkT/o3Kx
 oJcg6B7hFgeSL+lIa4OkvSD9e/ocO9AXEbRl2FkZo69iUDa1w8r2dDDcNJrmPDjtDlVt+rml
 EtoXUuv7SSHMFcrvPcesbGPRjReaCGsY0D1ieNqeMm8KgJLaR0hgexhpfSgWeCV05qhxYSAZ
 wYC2UiwUagS68/nzE97wWTtj2URZjrcaqh+vF2Q/UHf0iawy0FL48H2pcAEpaGrzMEGWQFqK
 THB7QEFr1WJsU1cPJjALw3VdSHigbARqw0eUhVwL/ocVI1SGHPkEVUwEr1LE8ic8VVyMKiE2
 wvNwXEwNsvyqztnWqXrU8CesGdEUkttJvgUbQ2UEd1yVGNOMgMLkDpJtbzpDZZJwLvEUr4w7
 qEyI5lXNaAWFyx0lipvDITI6gjvGR/F8PK9c6IooG6ckVLpxn2H7UFB1d5rHlpyxI2SmVtHU
 +17MFPa379w8zoXqKh3r/X3cb+cFrqskJ1u8eoaGlwR3uHnfCNozvL/az3k6bDnPunmmhPkH
 ZtXdkb1ePj0D/ssMoxVrTavqB4buGfUZpYaxhhppWYDZPupg7q0XqehXiK7ZZRelOO2S9UyO
 q45yXmswpYr7BwQnTRZRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qBU9/EGSw+aGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GUc3T+JtaBftqL50S/WBsbJEl2MnBwSAiYSd3euZu9i5OIQEljK
 KPH6/lF2iISMxMlpDawQtrDEn2tdbBBFnxglHj6dyAKSYBMwlOh6C5EQEehklJjW/RFsFLPA
 PGaJ5asOM4FUCQsESWzcPg1sFIuAqsS6Ew/AVvAK2Em077jLBrFCXmL1hgPMIDYnUPx1y0Gw
 eiEBW4nlC94zT2DkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwfrYd+7llB2PXu+BD
 jAIcjEo8vC9CXscJsSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjKdBRE5ml
 RJPzgbGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBkVvPz2Vd
 jjbb5z6Jh+wxCgr1uqGFr+4y6t5cHhwT1JmVJKx1cL19kfLNyRPVHlTMfHM0IrWP6UJYkFqM
 XgW7eNyRhoUr5zTcduQV1d/FOeXiBKXX/7/qz924WTTx3J2QbemHPHZx7J6g1pL2fzrz8hKD
 zAU7nY+eE52SHHlUMWJm3Pmo876/lFiKMxINtZiLihMBVz1aMbUCAAA=
X-CMS-MailID: 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4
X-Msg-Generator: CA
X-RootMTR: 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033708_281333_8FE7C4A1 
X-CRM114-Status: GOOD (  15.78  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
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
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 23 +++++++++------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 2970e534e2bb..cb50f2ba2e46 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -36,8 +36,8 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->dma_addr = rk_obj->mm.start;
 
-	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
-			   rk_obj->sgt->nents, prot);
+	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
+				prot);
 	if (ret < rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -98,11 +98,10 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
 	 * without relying on symbols that are not exported.
 	 */
-	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
+	for_each_sgtable_sg(rk_obj->sgt, s, i)
 		sg_dma_address(s) = sg_phys(s);
 
-	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
-			       DMA_TO_DEVICE);
+	dma_sync_sgtable_for_device(drm->dev, rk_obj->sgt, DMA_TO_DEVICE);
 
 	return 0;
 
@@ -350,8 +349,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
 		if (private->domain) {
 			rockchip_gem_iommu_unmap(rk_obj);
 		} else {
-			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
-				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
+			dma_unmap_sgtable(drm->dev, rk_obj->sgt,
+					  DMA_BIDIRECTIONAL, 0);
 		}
 		drm_prime_gem_destroy(obj, rk_obj->sgt);
 	} else {
@@ -476,15 +475,13 @@ rockchip_gem_dma_map_sg(struct drm_device *drm,
 			struct sg_table *sg,
 			struct rockchip_gem_object *rk_obj)
 {
-	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
-			       DMA_BIDIRECTIONAL);
-	if (!count)
-		return -EINVAL;
+	int err = dma_map_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
+	if (err)
+		return err;
 
 	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
-		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
-			     DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
