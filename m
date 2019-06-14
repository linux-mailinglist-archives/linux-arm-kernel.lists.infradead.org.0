Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3B645F8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbqnyVvl22JE3+Zyim8h5AK1k5i4x7UGkSLXO5Z2exg=; b=e/mHDcfl5UmeNe
	JEIY3hiWjOnVMKIrZH3wFisBTWPcUW4VBoMSl5oin+6Nn3I/rU5zyLW1NytGg/hOc5EF0wEwR5fkJ
	tj8DnW84VLVla9tqFQxxcYWMMyazwkmb63frddJ/AN/vmOwYL6nOhJi2SnCb9TsoY28KfsOXaQI2S
	2ZniJ7K9/u4D16s31JcQpDKH8I29ntSZuPnudqmfwpetruwJL66MzPAzeCveB1cpYrvBawLKkHzCP
	Vjl9mtGxHfYKMrtXYuQ7B2BXSNh2ZOtTJH5j3iql6NCVICQf2sDisnj5efO33f20sH3xKMRuvkA9D
	AYXkGNIA7B1AqYBAo0Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmbk-00023e-1L; Fri, 14 Jun 2019 13:51:08 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYk-0005GV-78; Fri, 14 Jun 2019 13:48:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 09/16] cnic: stop passing bogus gfp flags arguments to
 dma_alloc_coherent
Date: Fri, 14 Jun 2019 15:47:19 +0200
Message-Id: <20190614134726.3827-10-hch@lst.de>
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
 drivers/net/ethernet/broadcom/cnic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/cnic.c b/drivers/net/ethernet/broadcom/cnic.c
index 57dc3cbff36e..bd1c993680e5 100644
--- a/drivers/net/ethernet/broadcom/cnic.c
+++ b/drivers/net/ethernet/broadcom/cnic.c
@@ -1028,7 +1028,7 @@ static int __cnic_alloc_uio_rings(struct cnic_uio_dev *udev, int pages)
 	udev->l2_ring_size = pages * CNIC_PAGE_SIZE;
 	udev->l2_ring = dma_alloc_coherent(&udev->pdev->dev, udev->l2_ring_size,
 					   &udev->l2_ring_map,
-					   GFP_KERNEL | __GFP_COMP);
+					   GFP_KERNEL);
 	if (!udev->l2_ring)
 		return -ENOMEM;
 
@@ -1036,7 +1036,7 @@ static int __cnic_alloc_uio_rings(struct cnic_uio_dev *udev, int pages)
 	udev->l2_buf_size = CNIC_PAGE_ALIGN(udev->l2_buf_size);
 	udev->l2_buf = dma_alloc_coherent(&udev->pdev->dev, udev->l2_buf_size,
 					  &udev->l2_buf_map,
-					  GFP_KERNEL | __GFP_COMP);
+					  GFP_KERNEL);
 	if (!udev->l2_buf) {
 		__cnic_free_uio_rings(udev);
 		return -ENOMEM;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
