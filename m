Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B34145F5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1q4oC19s8Gfei0z3ZKD40SKWOQlm3M0rJDKuQLy1+s=; b=R2Myi7Ho/dsSTi
	umiXHdx+yxbtxxJnUb4HMyvf00XuS7yHCtshunjG+REfoe+SBbXB39j/bpBHYbOhOb7zFadnPm6M5
	/ONgacRr6YZHqI0Jxk69aTK1XlaVd0RiYfeyKE8Q2Xzlijk2+M6uqV9UK0hWy2bXoiS9XRdVYR0TW
	zo67ZxHWBnGcllRVGVY8K8Bnx+DWOB+MLMIMZ1CLCbnUUT9gY8OorkXZzCwIC5jRNq+o0+pQrRc1B
	ffRtD8M9iyC5cEO02c5yoJ4ezKFWjxQkWQKb3HrxGSHkM6YYWjdNcyU4jFA2QTjtldmcc+zxK6LuJ
	S/FFSrrPdsghHSm+8YAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmbA-0000xh-8J; Fri, 14 Jun 2019 13:50:32 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYd-00054z-8V; Fri, 14 Jun 2019 13:47:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 07/16] IB/hfi1: stop passing bogus gfp flags arguments to
 dma_alloc_coherent
Date: Fri, 14 Jun 2019 15:47:17 +0200
Message-Id: <20190614134726.3827-8-hch@lst.de>
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
 drivers/infiniband/hw/hfi1/init.c | 22 +++-------------------
 1 file changed, 3 insertions(+), 19 deletions(-)

diff --git a/drivers/infiniband/hw/hfi1/init.c b/drivers/infiniband/hw/hfi1/init.c
index 71cb9525c074..ff9d106ee784 100644
--- a/drivers/infiniband/hw/hfi1/init.c
+++ b/drivers/infiniband/hw/hfi1/init.c
@@ -1846,17 +1846,10 @@ int hfi1_create_rcvhdrq(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
 	u64 reg;
 
 	if (!rcd->rcvhdrq) {
-		gfp_t gfp_flags;
-
 		amt = rcvhdrq_size(rcd);
 
-		if (rcd->ctxt < dd->first_dyn_alloc_ctxt || rcd->is_vnic)
-			gfp_flags = GFP_KERNEL;
-		else
-			gfp_flags = GFP_USER;
 		rcd->rcvhdrq = dma_alloc_coherent(&dd->pcidev->dev, amt,
-						  &rcd->rcvhdrq_dma,
-						  gfp_flags | __GFP_COMP);
+						  &rcd->rcvhdrq_dma, GFP_KERNEL);
 
 		if (!rcd->rcvhdrq) {
 			dd_dev_err(dd,
@@ -1870,7 +1863,7 @@ int hfi1_create_rcvhdrq(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
 			rcd->rcvhdrtail_kvaddr = dma_alloc_coherent(&dd->pcidev->dev,
 								    PAGE_SIZE,
 								    &rcd->rcvhdrqtailaddr_dma,
-								    gfp_flags);
+								    GFP_KERNEL);
 			if (!rcd->rcvhdrtail_kvaddr)
 				goto bail_free;
 		}
@@ -1926,19 +1919,10 @@ int hfi1_setup_eagerbufs(struct hfi1_ctxtdata *rcd)
 {
 	struct hfi1_devdata *dd = rcd->dd;
 	u32 max_entries, egrtop, alloced_bytes = 0;
-	gfp_t gfp_flags;
 	u16 order, idx = 0;
 	int ret = 0;
 	u16 round_mtu = roundup_pow_of_two(hfi1_max_mtu);
 
-	/*
-	 * GFP_USER, but without GFP_FS, so buffer cache can be
-	 * coalesced (we hope); otherwise, even at order 4,
-	 * heavy filesystem activity makes these fail, and we can
-	 * use compound pages.
-	 */
-	gfp_flags = __GFP_RECLAIM | __GFP_IO | __GFP_COMP;
-
 	/*
 	 * The minimum size of the eager buffers is a groups of MTU-sized
 	 * buffers.
@@ -1969,7 +1953,7 @@ int hfi1_setup_eagerbufs(struct hfi1_ctxtdata *rcd)
 			dma_alloc_coherent(&dd->pcidev->dev,
 					   rcd->egrbufs.rcvtid_size,
 					   &rcd->egrbufs.buffers[idx].dma,
-					   gfp_flags);
+					   GFP_KERNEL);
 		if (rcd->egrbufs.buffers[idx].addr) {
 			rcd->egrbufs.buffers[idx].len =
 				rcd->egrbufs.rcvtid_size;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
