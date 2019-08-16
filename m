Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B17B8FAFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5roDoOcfRt3kDCmNm1vU1fd7O/FA8Cmz0Bm23mjJ2W8=; b=ac+ScHmreH6wHT
	yjkq5okbtmqSHsbzqPl+JOX4DkaRQ0JhxHslBeNAjewsF2E9Y70PMHvO7A6uUOYqq8HNmvYnxC5PK
	9+YQaPz7NW2wHTBxdPPwakMMTPD8r4qKc2MRasEyv/64urnrRZK7MHCkHJdWxoeQIZfXkH9+L2Y53
	bgqMi/4SqP0FMCIm7OWvAxemOlB96tV25VL+GHAHvFUMcbCZxxzYp9mD/U2BwVxUIcbBmsYK4s5xa
	IiFhKBC+VdV4mhZ7drkHD1PxnHQXIPokHwPxK1ccm51nVRegtfhHjMh4hKBISW0pOeNPpEJRAVvOl
	S7DsI2oZSdVspxWuJffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVkr-00089U-F8; Fri, 16 Aug 2019 06:30:29 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVjX-0006C9-Ld; Fri, 16 Aug 2019 06:29:08 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH 4/6] usb/max3421: remove the dummy {un,
 }map_urb_for_dma methods
Date: Fri, 16 Aug 2019 08:24:33 +0200
Message-Id: <20190816062435.881-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816062435.881-1-hch@lst.de>
References: <20190816062435.881-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, Gavin Li <git@thegavinli.com>,
 linuxppc-dev@lists.ozlabs.org, Mathias Nyman <mathias.nyman@intel.com>,
 Geoff Levand <geoff@infradead.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-usb@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>, Shawn Guo <shawnguo@kernel.org>,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have an explicit HCD_DMA flag, there is not need to override
these methods.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/host/max3421-hcd.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/usb/host/max3421-hcd.c b/drivers/usb/host/max3421-hcd.c
index afa321ab55fc..8819f502b6a6 100644
--- a/drivers/usb/host/max3421-hcd.c
+++ b/drivers/usb/host/max3421-hcd.c
@@ -1800,21 +1800,6 @@ max3421_bus_resume(struct usb_hcd *hcd)
 	return -1;
 }
 
-/*
- * The SPI driver already takes care of DMA-mapping/unmapping, so no
- * reason to do it twice.
- */
-static int
-max3421_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags)
-{
-	return 0;
-}
-
-static void
-max3421_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
-{
-}
-
 static const struct hc_driver max3421_hcd_desc = {
 	.description =		"max3421",
 	.product_desc =		DRIVER_DESC,
@@ -1826,8 +1811,6 @@ static const struct hc_driver max3421_hcd_desc = {
 	.get_frame_number =	max3421_get_frame_number,
 	.urb_enqueue =		max3421_urb_enqueue,
 	.urb_dequeue =		max3421_urb_dequeue,
-	.map_urb_for_dma =	max3421_map_urb_for_dma,
-	.unmap_urb_for_dma =	max3421_unmap_urb_for_dma,
 	.endpoint_disable =	max3421_endpoint_disable,
 	.hub_status_data =	max3421_hub_status_data,
 	.hub_control =		max3421_hub_control,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
