Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E3A8FAF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFLImpOUvBEIGHyVwtr0pr3TQ0hVWD9VAKWzPUF679s=; b=fXDFqfmMY1jdbI
	sROGif0IiuWcrk8tp45VG5mCzsXQ5N3zGJcPhZnZhXLHE1rsB2f0Is0I2J46nG7eM6IvN7+xEwtd6
	mVysWTvOPlMJtKAFJUCzbWZivABt1Eqhfavh6WfH4QRP8ii7oQYp5KZzsiHDs4Su9ZI0hehTGhmQK
	ORK1nHWYZ9T3GGndodKUOV+mClXnTMmaG+ObspqXMENPeQ3dz+jihTbuNBlGi/IrHjTsVU/Jqeasu
	ftwKBuzDpBxFED3gA3hFJd4lWDvEVd+ce4LvFbtIGZ2NoH9gX7cjEpEM4IeyHYquPCo5QQNmfLrqQ
	R0X40LP5vrLFaWI1rlCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVkC-0006O0-E8; Fri, 16 Aug 2019 06:29:48 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVjS-00068I-4k; Fri, 16 Aug 2019 06:29:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH 2/6] usb: add a hcd_uses_dma helper
Date: Fri, 16 Aug 2019 08:24:31 +0200
Message-Id: <20190816062435.881-3-hch@lst.de>
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

The USB buffer allocation code is the only place in the usb core (and in
fact the whole kernel) that uses is_device_dma_capable, while the URB
mapping code uses the uses_dma flag in struct usb_bus.  Switch the buffer
allocation to use the uses_dma flag used by the rest of the USB code,
and create a helper in hcd.h that checks this flag as well as the
CONFIG_HAS_DMA to simplify the caller a bit.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/core/buffer.c | 10 +++-------
 drivers/usb/core/hcd.c    |  4 ++--
 drivers/usb/dwc2/hcd.c    |  2 +-
 include/linux/usb.h       |  2 +-
 include/linux/usb/hcd.h   |  3 +++
 5 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/core/buffer.c b/drivers/usb/core/buffer.c
index 1a5b3dcae930..6cf22c27f2d2 100644
--- a/drivers/usb/core/buffer.c
+++ b/drivers/usb/core/buffer.c
@@ -66,9 +66,7 @@ int hcd_buffer_create(struct usb_hcd *hcd)
 	char		name[16];
 	int		i, size;
 
-	if (hcd->localmem_pool ||
-	    !IS_ENABLED(CONFIG_HAS_DMA) ||
-	    !is_device_dma_capable(hcd->self.sysdev))
+	if (hcd->localmem_pool || !hcd_uses_dma(hcd))
 		return 0;
 
 	for (i = 0; i < HCD_BUFFER_POOLS; i++) {
@@ -129,8 +127,7 @@ void *hcd_buffer_alloc(
 		return gen_pool_dma_alloc(hcd->localmem_pool, size, dma);
 
 	/* some USB hosts just use PIO */
-	if (!IS_ENABLED(CONFIG_HAS_DMA) ||
-	    !is_device_dma_capable(bus->sysdev)) {
+	if (!hcd_uses_dma(hcd)) {
 		*dma = ~(dma_addr_t) 0;
 		return kmalloc(size, mem_flags);
 	}
@@ -160,8 +157,7 @@ void hcd_buffer_free(
 		return;
 	}
 
-	if (!IS_ENABLED(CONFIG_HAS_DMA) ||
-	    !is_device_dma_capable(bus->sysdev)) {
+	if (!hcd_uses_dma(hcd)) {
 		kfree(addr);
 		return;
 	}
diff --git a/drivers/usb/core/hcd.c b/drivers/usb/core/hcd.c
index 2ccbc2f83570..8592c0344fe8 100644
--- a/drivers/usb/core/hcd.c
+++ b/drivers/usb/core/hcd.c
@@ -1412,7 +1412,7 @@ int usb_hcd_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
 	if (usb_endpoint_xfer_control(&urb->ep->desc)) {
 		if (hcd->self.uses_pio_for_control)
 			return ret;
-		if (IS_ENABLED(CONFIG_HAS_DMA) && hcd->self.uses_dma) {
+		if (hcd_uses_dma(hcd)) {
 			if (is_vmalloc_addr(urb->setup_packet)) {
 				WARN_ONCE(1, "setup packet is not dma capable\n");
 				return -EAGAIN;
@@ -1446,7 +1446,7 @@ int usb_hcd_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
 	dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
 	if (urb->transfer_buffer_length != 0
 	    && !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)) {
-		if (IS_ENABLED(CONFIG_HAS_DMA) && hcd->self.uses_dma) {
+		if (hcd_uses_dma(hcd)) {
 			if (urb->num_sgs) {
 				int n;
 
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index ee144ff8af5b..111787a137ee 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -4608,7 +4608,7 @@ static int _dwc2_hcd_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
 
 	buf = urb->transfer_buffer;
 
-	if (hcd->self.uses_dma) {
+	if (hcd_uses_dma(hcd)) {
 		if (!buf && (urb->transfer_dma & 3)) {
 			dev_err(hsotg->dev,
 				"%s: unaligned transfer with no transfer_buffer",
diff --git a/include/linux/usb.h b/include/linux/usb.h
index 83d35d993e8c..e87826e23d59 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1457,7 +1457,7 @@ typedef void (*usb_complete_t)(struct urb *);
  * field rather than determining a dma address themselves.
  *
  * Note that transfer_buffer must still be set if the controller
- * does not support DMA (as indicated by bus.uses_dma) and when talking
+ * does not support DMA (as indicated by hcd_uses_dma()) and when talking
  * to root hub. If you have to trasfer between highmem zone and the device
  * on such controller, create a bounce buffer or bail out with an error.
  * If transfer_buffer cannot be set (is in highmem) and the controller is DMA
diff --git a/include/linux/usb/hcd.h b/include/linux/usb/hcd.h
index bab27ccc8ff5..a20e7815d814 100644
--- a/include/linux/usb/hcd.h
+++ b/include/linux/usb/hcd.h
@@ -422,6 +422,9 @@ static inline bool hcd_periodic_completion_in_progress(struct usb_hcd *hcd,
 	return hcd->high_prio_bh.completing_ep == ep;
 }
 
+#define hcd_uses_dma(hcd) \
+	(IS_ENABLED(CONFIG_HAS_DMA) && (hcd)->self.uses_dma)
+
 extern int usb_hcd_link_urb_to_ep(struct usb_hcd *hcd, struct urb *urb);
 extern int usb_hcd_check_unlink_urb(struct usb_hcd *hcd, struct urb *urb,
 		int status);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
