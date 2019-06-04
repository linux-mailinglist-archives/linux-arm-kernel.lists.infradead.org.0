Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9B9345AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzsWdg/jm347/zqlyWmDrwQZOUa+fKt0HrOTRogXZHQ=; b=HT4wmr1hkuYeYM
	Hj3Z9A3d7HXyO113wskLiAlfR/MW0HsaqQa8OBKW7Dr1NOXMZ6uk8oIL9JLre/6iAxlGx3AwK28CB
	sPRDnbl5Wk7oVz81PRuOHVPjH1NKmoSKj/pGqSOXG1WA7SWHyLlEBAWKTYt+1U5AJyKddEiqfxlE3
	1Fx2dcOoX0n619FQChiG/XwUZEtAdGhFLjImvjZ0MGbZYflhXIAuUw2/mm+4sqL5flQhhi8sCCbB6
	r2KkB/EIKmfJWMi99XPBmqeZNnTyiSZKI/v37OCjBAGm67faCZss/PQImFXwUibVEIhGu3czcVWYG
	zuFbUbGOUTOm4p/bzT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7o8-0004zm-P1; Tue, 04 Jun 2019 11:40:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7o0-0004yN-1K; Tue, 04 Jun 2019 11:40:41 +0000
X-UUID: 9829997ac66640a383f4a80f63509289-20190604
X-UUID: 9829997ac66640a383f4a80f63509289-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1949131104; Tue, 04 Jun 2019 03:39:53 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 04:39:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 19:39:49 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 19:39:48 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 4/6] usb: musb: Add noirq type of dma create interface
Date: Tue, 4 Jun 2019 19:39:17 +0800
Message-ID: <1559648359-6569-5-git-send-email-min.guo@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559648359-6569-1-git-send-email-min.guo@mediatek.com>
References: <1559648359-6569-1-git-send-email-min.guo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044040_080919_65254A93 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
index 8f60271..05103ea 100644
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
