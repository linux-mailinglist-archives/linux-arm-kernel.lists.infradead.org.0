Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BD18FAF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QTUfXHIfcT/YArLTVjRypoDM3+02H9iHbo7HPPgkyI=; b=hwUf2Y1q4FV+jz
	jntD3L+Ltw01TWFd+ff/C1S87a7BG83Dj5O+B2g+drgH8IHgjfVJcvfmjxKze54JwKY2Pk9j5VZmS
	Z2QrxuejvSYK1fjxh5WGyX2h/S17ichcG+xQlDNqeWD6PmFVJ9Cg3t6+3lkFtp+9ZfqFGRVZupEKm
	glY73fTJ/yzcjcIqti3+dtxPtA8MvmgFt2vhwmLfTRpt75nJX3VQGOlc67XzpGzOBN6vTIF6rWbSE
	VC50kmW6KPgkWGQtVEDSFUkZAH7HF/DKY6oQ9ev8aBXzEKP6fUUDDe6vxBhRvtZUi4ywEkBPoMrVn
	IPW9ZbttVPiU5H7AtC0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVji-00068S-9B; Fri, 16 Aug 2019 06:29:18 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVjP-00068C-GP; Fri, 16 Aug 2019 06:29:00 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH 1/6] usb: don't create dma pools for HCDs with a localmem_pool
Date: Fri, 16 Aug 2019 08:24:30 +0200
Message-Id: <20190816062435.881-2-hch@lst.de>
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

If the HCD provides a localmem pool we will never use the DMA pools, so
don't create them.

Fixes: b0310c2f09bb ("USB: use genalloc for USB HCs with local memory")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/core/buffer.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/buffer.c b/drivers/usb/core/buffer.c
index 1359b78a624e..1a5b3dcae930 100644
--- a/drivers/usb/core/buffer.c
+++ b/drivers/usb/core/buffer.c
@@ -66,9 +66,9 @@ int hcd_buffer_create(struct usb_hcd *hcd)
 	char		name[16];
 	int		i, size;
 
-	if (!IS_ENABLED(CONFIG_HAS_DMA) ||
-	    (!is_device_dma_capable(hcd->self.sysdev) &&
-	     !hcd->localmem_pool))
+	if (hcd->localmem_pool ||
+	    !IS_ENABLED(CONFIG_HAS_DMA) ||
+	    !is_device_dma_capable(hcd->self.sysdev))
 		return 0;
 
 	for (i = 0; i < HCD_BUFFER_POOLS; i++) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
