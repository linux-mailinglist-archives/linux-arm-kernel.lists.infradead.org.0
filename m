Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0AFDA8B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnXcyWH88sVyEaeEiqls2gttxJ5xHrqKEF30NrtaAho=; b=elMhpv0ZQr6DKL
	wE9R4s2Bd97up/XO5kqczNMKxh+RS5JvLp+I7kAz84eC30D4fCfvjSHMMT6oFIy9vEymjLHquKTnt
	1MjqasZ0426pEsc8RAlg476wimfoPrFkCkosdeMdzohjYn4i2SOuxp/PF7zuoDKVXhul1iNGWBCvo
	1CmDghLUxAmrl5gAgXDW9+IV0cDl3f2BNTm3y5ngeX3Z1QvRfmGSbcfiTbczZpYII+5iEX791oifw
	gWub9TTn3vf+JvcKEqgP2ZQxUXXe3hfKCSHbc5fggqpDMPucDoavg+kIXciMvsT0O+qfMIBKpZzG1
	ucgsE2E8RCc4U/08uzKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2IS-0000v5-FI; Thu, 17 Oct 2019 09:42:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Hx-0000gx-Ba; Thu, 17 Oct 2019 09:41:46 +0000
X-UUID: 78b2f43d1feb4e03a03dd14dcac25176-20191017
X-UUID: 78b2f43d1feb4e03a03dd14dcac25176-20191017
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 203021575; Thu, 17 Oct 2019 01:41:29 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 02:41:36 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 17:41:33 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 17:41:32 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 4/6] usb: musb: Add noirq type of dma create interface
Date: Thu, 17 Oct 2019 17:41:24 +0800
Message-ID: <20191017094126.29045-5-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191017094126.29045-1-min.guo@mediatek.com>
References: <20191017094126.29045-1-min.guo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8DFFAF5831C4F59931983C17492296CA544AD8F25B376C290273144417BE9AD82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024145_406110_C3CC47A1 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Min Guo <min.guo@mediatek.com>

Add noirq type of dma create interface for platform which do not
have dedicated DMA interrupt line, move musbhsdma macro definition
to musb_dma.h

Signed-off-by: Min Guo <min.guo@mediatek.com>
---
changes in v8:
1. no changes

changes in v7:
1. no changes

changes in v6:
1. no changes

changes in v5:
1. no changes

new patch based on v4:
---
 drivers/usb/musb/musb_dma.h  |  9 ++++++++
 drivers/usb/musb/musbhsdma.c | 54 ++++++++++++++++++++++++++++++--------------
 2 files changed, 46 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/musb/musb_dma.h b/drivers/usb/musb/musb_dma.h
index 8f60271..05103ea3 100644
--- a/drivers/usb/musb/musb_dma.h
+++ b/drivers/usb/musb/musb_dma.h
@@ -35,6 +35,12 @@
  *    whether shared with the Inventra core or separate.
  */
 
+#define MUSB_HSDMA_BASE		0x200
+#define MUSB_HSDMA_INTR		(MUSB_HSDMA_BASE + 0)
+#define MUSB_HSDMA_CONTROL		0x4
+#define MUSB_HSDMA_ADDRESS		0x8
+#define MUSB_HSDMA_COUNT		0xc
+
 #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
 
 #ifdef CONFIG_MUSB_PIO_ONLY
@@ -191,6 +197,9 @@ static inline void musb_dma_controller_destroy(struct dma_controller *d) { }
 extern struct dma_controller *
 musbhs_dma_controller_create(struct musb *musb, void __iomem *base);
 extern void musbhs_dma_controller_destroy(struct dma_controller *c);
+extern struct dma_controller *
+musbhs_dma_controller_create_noirq(struct musb *musb, void __iomem *base);
+extern irqreturn_t dma_controller_irq(int irq, void *private_data);
 
 extern struct dma_controller *
 tusb_dma_controller_create(struct musb *musb, void __iomem *base);
diff --git a/drivers/usb/musb/musbhsdma.c b/drivers/usb/musb/musbhsdma.c
index 5fc6825..d549c0b 100644
--- a/drivers/usb/musb/musbhsdma.c
+++ b/drivers/usb/musb/musbhsdma.c
@@ -10,12 +10,7 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include "musb_core.h"
-
-#define MUSB_HSDMA_BASE		0x200
-#define MUSB_HSDMA_INTR		(MUSB_HSDMA_BASE + 0)
-#define MUSB_HSDMA_CONTROL		0x4
-#define MUSB_HSDMA_ADDRESS		0x8
-#define MUSB_HSDMA_COUNT		0xc
+#include "musb_dma.h"
 
 #define MUSB_HSDMA_CHANNEL_OFFSET(_bchannel, _offset)		\
 		(MUSB_HSDMA_BASE + (_bchannel << 4) + _offset)
@@ -268,7 +263,7 @@ static int dma_channel_abort(struct dma_channel *channel)
 	return 0;
 }
 
-static irqreturn_t dma_controller_irq(int irq, void *private_data)
+irqreturn_t dma_controller_irq(int irq, void *private_data)
 {
 	struct musb_dma_controller *controller = private_data;
 	struct musb *musb = controller->private_data;
@@ -383,6 +378,7 @@ static irqreturn_t dma_controller_irq(int irq, void *private_data)
 	spin_unlock_irqrestore(&musb->lock, flags);
 	return retval;
 }
+EXPORT_SYMBOL_GPL(dma_controller_irq);
 
 void musbhs_dma_controller_destroy(struct dma_controller *c)
 {
@@ -398,18 +394,10 @@ void musbhs_dma_controller_destroy(struct dma_controller *c)
 }
 EXPORT_SYMBOL_GPL(musbhs_dma_controller_destroy);
 
-struct dma_controller *musbhs_dma_controller_create(struct musb *musb,
-						    void __iomem *base)
+static struct musb_dma_controller *
+dma_controller_alloc(struct musb *musb, void __iomem *base)
 {
 	struct musb_dma_controller *controller;
-	struct device *dev = musb->controller;
-	struct platform_device *pdev = to_platform_device(dev);
-	int irq = platform_get_irq_byname(pdev, "dma");
-
-	if (irq <= 0) {
-		dev_err(dev, "No DMA interrupt line!\n");
-		return NULL;
-	}
 
 	controller = kzalloc(sizeof(*controller), GFP_KERNEL);
 	if (!controller)
@@ -423,6 +411,25 @@ struct dma_controller *musbhs_dma_controller_create(struct musb *musb,
 	controller->controller.channel_release = dma_channel_release;
 	controller->controller.channel_program = dma_channel_program;
 	controller->controller.channel_abort = dma_channel_abort;
+	return controller;
+}
+
+struct dma_controller *
+musbhs_dma_controller_create(struct musb *musb, void __iomem *base)
+{
+	struct musb_dma_controller *controller;
+	struct device *dev = musb->controller;
+	struct platform_device *pdev = to_platform_device(dev);
+	int irq = platform_get_irq_byname(pdev, "dma");
+
+	if (irq <= 0) {
+		dev_err(dev, "No DMA interrupt line!\n");
+		return NULL;
+	}
+
+	controller = dma_controller_alloc(musb, base);
+	if (!controller)
+		return NULL;
 
 	if (request_irq(irq, dma_controller_irq, 0,
 			dev_name(musb->controller), &controller->controller)) {
@@ -437,3 +444,16 @@ struct dma_controller *musbhs_dma_controller_create(struct musb *musb,
 	return &controller->controller;
 }
 EXPORT_SYMBOL_GPL(musbhs_dma_controller_create);
+
+struct dma_controller *
+musbhs_dma_controller_create_noirq(struct musb *musb, void __iomem *base)
+{
+	struct musb_dma_controller *controller;
+
+	controller = dma_controller_alloc(musb, base);
+	if (!controller)
+		return NULL;
+
+	return &controller->controller;
+}
+EXPORT_SYMBOL_GPL(musbhs_dma_controller_create_noirq);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
