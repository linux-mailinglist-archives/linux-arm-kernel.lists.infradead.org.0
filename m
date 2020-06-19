Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B32006E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sFJrOYkCcMbf+PeWqCSdWbBHE17aTFB+mDK2o17ig3c=; b=BGO3OYq1quv/2jjR1kTJ4/P3U2
	oa23Ka35clgTS6PYNVQaznlKlluE+mdzNxr8SvMSKVeMeGrLcJTGdZn5LWSPd62AT1DRodMiHfRLi
	hGqdUULAFAtKBcRYOVETV7i8ODl8lwHJXMA7sSlupvi7OMtbElGxg5LY66ZRMq6SAVBuF9beO5dVF
	M9N89J3qBOwrsRmM1UmZpZc/oVbcVJG+C2MrGZPPpo3M3OegbngqyBpvpnh4fYjrsOWgfBTGFcT8b
	nXuJgLHrG0Uf7o2KDtftqIMbeq1KLWP0rYlqtgULCjqR6eVt99rhqs4efBdK/QGn7yeqOEm7hL72Y
	0FObTN0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmET7-0002wp-Sw; Fri, 19 Jun 2020 10:41:57 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOP-0005CD-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:06 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103703euoutp0131615595d1c14777717c52a524cde09b~Z66HDX6cG1836618366euoutp01d
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103703euoutp0131615595d1c14777717c52a524cde09b~Z66HDX6cG1836618366euoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563023;
 bh=zV96V2vYwfqZCBn3pFDPDrE8ppfbK/CRdkHj1ScotiE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TovOxvHK21n70TAwdg4ASuR1uq5RqEkSJPTIVU3nF1MUU34uzRFTTLPaGn93/faBY
 ePDnYWuAZEmh/ewc4fbGnUNlUHxIGRO+rmDYxoPpJXm6MHVUp3iieS/Gph8j1ThLWF
 /DBmXt2Sxm+7av0wx2RA6ZKx01cScYpTlxAgDW58=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103702eucas1p2a4ea2cb07ee15416ef222bfbaf908415~Z66Gzqkzj1691016910eucas1p26;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C0.9C.06318.E459CEE5; Fri, 19
 Jun 2020 11:37:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965~Z66Gc0eoE2893928939eucas1p2Z;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103702eusmtrp16ab3ac15f7f96ffb9888f4c260be442f~Z66GcK19X0949709497eusmtrp1O;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-64-5eec954efd1a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1A.0B.06017.E459CEE5; Fri, 19
 Jun 2020 11:37:02 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103701eusmtip21cb30ea2d98fdfe12fd39a725f93e2fc~Z66F3gjN70302603026eusmtip2O;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 14/36] drm: omapdrm: use common helper for extracting
 pages array
Date: Fri, 19 Jun 2020 12:36:14 +0200
Message-Id: <20200619103636.11974-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djPc7p+U9/EGdzptbToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArijuGxSUnMyy1KL9O0SuDKuzp3KVjCDu+Ldy5XMDYytnF2MnBwSAiYSrb3r2LoYuTiE
 BFYwSqxZ0c4I4XxhlJj79RkLhPOZUeLVnhWMMC1P1p1khkgsZ5RY23QboeXu5TVMIFVsAoYS
 XW+72EBsEYFWRokTvTwgRcwCh5gktrReZQFJCAuESUy/08wKYrMIqEo09WxgB7F5Bewkvv5f
 xAKxTl5i9YYDzCA2J1D8dctBVpBBEgL72CWetvwG2sYB5LhIbFxuDlEvLPHq+BZ2CFtG4vTk
 HhaI+mZGiYfn1rJDOD2MEpebZkA9ZC1x59wvNpBBzAKaEut36UOEHSV+L/zPCDGfT+LGW0GQ
 MDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwiRnC9pBY9KYDGowTgQG05RL7BEb5WQjLFjAy
 rmIUTy0tzk1PLTbOSy3XK07MLS7NS9dLzs/dxAhMSaf/Hf+6g3Hfn6RDjAIcjEo8vC9CXscJ
 sSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjNAeLkjiv8aKXsUIC6Yklqdmp
 qQWpRTBZJg5OqQbGtNZfORMm8S+PeaDmLzKLOWRTsW1iV73hxm8yrxcnPWSTbBcy7PH/H37A
 K3JmzofMPxyTCq5xNm3Nvjftvl8l79FFMhHnv3F7BT78cNvxo1/7kunSetd6ghZdfpyx8BaH
 ztedLbVnO+J2pm3aEj2l4uXSzprWDyUPfq76fipmrVHSRb+JNgFiSizFGYmGWsxFxYkAb7kS
 2EUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7p+U9/EGXxfoGTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GVcnTuVrWAGd8W7lyuZGxhbObsYOTkkBEwknqw7ydzFyMUhJLCUUeJHx1xmiISMxMlpDawQ
 trDEn2tdbBBFnxgl+uYuZQJJsAkYSnS9hUiICHQySkzr/sgO4jALnGCSuLd3PiNIlbBAiMSW
 x4vBRrEIqEo09WxgB7F5Bewkvv5fxAKxQl5i9YYDYKs5geKvWw6C1QsJ2EosX/CeeQIj3wJG
 hlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBMbLt2M8tOxi73gUfYhTgYFTi4X0R8jpOiDWx
 rLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4zfvJJ4Q1NDcwtL
 Q3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjPMFr3nf633xf+79NT9kAvh1Dl2c
 73r5z5+vbl231liuvlxcMXvBdCunD7FLetPU+FdLTJ9RqLnHtuoYjwDL5G67PPFL/sdWqCb/
 XZY4NdhR6jJfhDN7bnmLsHkmj+O2ssdR7GIPRUXWarJcV9gpqFrpmTCRYdeivqLnwVKvpU61
 dP1eqn/tthJLcUaioRZzUXEiAJKyk3enAgAA
X-CMS-MailID: 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965
X-Msg-Generator: CA
X-RootMTR: 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033705_257626_AD873B12 
X-CRM114-Status: GOOD (  13.32  )
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
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use common helper for converting a sg_table object into struct
page pointer array.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/omapdrm/omap_gem.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_gem.c b/drivers/gpu/drm/omapdrm/omap_gem.c
index d0d12d5dd76c..ff0c4b0c3fd0 100644
--- a/drivers/gpu/drm/omapdrm/omap_gem.c
+++ b/drivers/gpu/drm/omapdrm/omap_gem.c
@@ -1297,10 +1297,9 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 		omap_obj->dma_addr = sg_dma_address(sgt->sgl);
 	} else {
 		/* Create pages list from sgt */
-		struct sg_page_iter iter;
 		struct page **pages;
 		unsigned int npages;
-		unsigned int i = 0;
+		unsigned int ret;
 
 		npages = DIV_ROUND_UP(size, PAGE_SIZE);
 		pages = kcalloc(npages, sizeof(*pages), GFP_KERNEL);
@@ -1311,14 +1310,9 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 		}
 
 		omap_obj->pages = pages;
-
-		for_each_sg_page(sgt->sgl, &iter, sgt->orig_nents, 0) {
-			pages[i++] = sg_page_iter_page(&iter);
-			if (i > npages)
-				break;
-		}
-
-		if (WARN_ON(i != npages)) {
+		ret = drm_prime_sg_to_page_addr_arrays(sgt, pages, NULL,
+						       npages);
+		if (WARN_ON(ret)) {
 			omap_gem_free_object(obj);
 			obj = ERR_PTR(-ENOMEM);
 			goto done;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
