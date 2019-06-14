Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B6145F88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZymqxNdp7Au6mo1lVHJjI5rnjg2d0zfgGim81eT4Btg=; b=ZlXQd5U+1B77HU
	wf2AgbShi1lEnBGjex38jewV33iifrXDRYd6I9Avw2i2OqAoh8TeJh8SOMUXQPVHZCCsHInrnXlB4
	fD1eRhLzM1AfGpYxxV3OF6Pmfs2YJ8Gv3hIUPBqoVdYVB6tdnQ/2c6XsKJP2CFeL+5LkHuU2K4mGZ
	iiJdthdsILBgkIW2mUDlcLI+V11hvrzP3JvcSnXjliEvmBTUsQPxgdrp1tL5ngp5jCH0mdD0qLt+v
	tun54jr8iji2KJQZFo2yyjkQ8i+2qVzcaPQRRtkEt2xU9rOdGaP+P+H6PSwzafWv61wL+xlI4ZIn0
	lqmwLjM7ilmvIWkyHvKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmbR-0001cU-8Y; Fri, 14 Jun 2019 13:50:49 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYg-0005D2-H3; Fri, 14 Jun 2019 13:47:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 08/16] IB/qib: stop passing bogus gfp flags arguments to
 dma_alloc_coherent
Date: Fri, 14 Jun 2019 15:47:18 +0200
Message-Id: <20190614134726.3827-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_alloc_coherent is not just the page allocator.  The only valid
arguments to pass are either GFP_ATOMIC or GFP_ATOMIC with possible
modifiers of __GFP_NORETRY or __GFP_NOWARN.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/infiniband/hw/qib/qib_iba6120.c |  2 +-
 drivers/infiniband/hw/qib/qib_init.c    | 20 +++-----------------
 2 files changed, 4 insertions(+), 18 deletions(-)

diff --git a/drivers/infiniband/hw/qib/qib_iba6120.c b/drivers/infiniband/hw/qib/qib_iba6120.c
index 531d8a1db2c3..d8a0b8993d22 100644
--- a/drivers/infiniband/hw/qib/qib_iba6120.c
+++ b/drivers/infiniband/hw/qib/qib_iba6120.c
@@ -2076,7 +2076,7 @@ static void alloc_dummy_hdrq(struct qib_devdata *dd)
 	dd->cspec->dummy_hdrq = dma_alloc_coherent(&dd->pcidev->dev,
 					dd->rcd[0]->rcvhdrq_size,
 					&dd->cspec->dummy_hdrq_phys,
-					GFP_ATOMIC | __GFP_COMP);
+					GFP_ATOMIC);
 	if (!dd->cspec->dummy_hdrq) {
 		qib_devinfo(dd->pcidev, "Couldn't allocate dummy hdrq\n");
 		/* fallback to just 0'ing */
diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
index d4fd8a6cff7b..072885a6684d 100644
--- a/drivers/infiniband/hw/qib/qib_init.c
+++ b/drivers/infiniband/hw/qib/qib_init.c
@@ -1547,18 +1547,13 @@ int qib_create_rcvhdrq(struct qib_devdata *dd, struct qib_ctxtdata *rcd)
 
 	if (!rcd->rcvhdrq) {
 		dma_addr_t phys_hdrqtail;
-		gfp_t gfp_flags;
-
 		amt = ALIGN(dd->rcvhdrcnt * dd->rcvhdrentsize *
 			    sizeof(u32), PAGE_SIZE);
-		gfp_flags = (rcd->ctxt >= dd->first_user_ctxt) ?
-			GFP_USER : GFP_KERNEL;
 
 		old_node_id = dev_to_node(&dd->pcidev->dev);
 		set_dev_node(&dd->pcidev->dev, rcd->node_id);
 		rcd->rcvhdrq = dma_alloc_coherent(
-			&dd->pcidev->dev, amt, &rcd->rcvhdrq_phys,
-			gfp_flags | __GFP_COMP);
+			&dd->pcidev->dev, amt, &rcd->rcvhdrq_phys, GFP_KERNEL);
 		set_dev_node(&dd->pcidev->dev, old_node_id);
 
 		if (!rcd->rcvhdrq) {
@@ -1578,7 +1573,7 @@ int qib_create_rcvhdrq(struct qib_devdata *dd, struct qib_ctxtdata *rcd)
 			set_dev_node(&dd->pcidev->dev, rcd->node_id);
 			rcd->rcvhdrtail_kvaddr = dma_alloc_coherent(
 				&dd->pcidev->dev, PAGE_SIZE, &phys_hdrqtail,
-				gfp_flags);
+				GFP_KERNEL);
 			set_dev_node(&dd->pcidev->dev, old_node_id);
 			if (!rcd->rcvhdrtail_kvaddr)
 				goto bail_free;
@@ -1622,17 +1617,8 @@ int qib_setup_eagerbufs(struct qib_ctxtdata *rcd)
 	struct qib_devdata *dd = rcd->dd;
 	unsigned e, egrcnt, egrperchunk, chunk, egrsize, egroff;
 	size_t size;
-	gfp_t gfp_flags;
 	int old_node_id;
 
-	/*
-	 * GFP_USER, but without GFP_FS, so buffer cache can be
-	 * coalesced (we hope); otherwise, even at order 4,
-	 * heavy filesystem activity makes these fail, and we can
-	 * use compound pages.
-	 */
-	gfp_flags = __GFP_RECLAIM | __GFP_IO | __GFP_COMP;
-
 	egrcnt = rcd->rcvegrcnt;
 	egroff = rcd->rcvegr_tid_base;
 	egrsize = dd->rcvegrbufsize;
@@ -1664,7 +1650,7 @@ int qib_setup_eagerbufs(struct qib_ctxtdata *rcd)
 		rcd->rcvegrbuf[e] =
 			dma_alloc_coherent(&dd->pcidev->dev, size,
 					   &rcd->rcvegrbuf_phys[e],
-					   gfp_flags);
+					   GFP_KERNEL);
 		set_dev_node(&dd->pcidev->dev, old_node_id);
 		if (!rcd->rcvegrbuf[e])
 			goto bail_rcvegrbuf_phys;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
