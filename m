Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BBFDC940
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoyPFyhjzhQQMeF2LTKgfgdxd9IVRkXve5OGaWYflqI=; b=Jkn1UGcQ77yABQ
	l3WsW4br4NpSPfNsdUPBVTO4QNRyJrVn1B9OyJh+EFk7fg+crTgRkpw1Qo/EtJozXn7IjU58jctBf
	QB9Pda2redpM0Bqm1N8k+xkkqCp0CH1xLp1/0INdjCFYfJiEdHsuToBqgCdZU+BcZLigxFSA3F/kK
	cBeg6DIc4t2AjJt8g45wQh0EIuoYqVybAZpObOhUlWpEj4r1E3x2qWh2oFzzTjWjyP1o1/N9/Mm0m
	PS3rA6SDo40DiNWIPPlxFa+Piq3LMPkimRwwDRqV44t23o0zWJDiZKcaewGsyl1L8gUPYZ++UAiLP
	5chWqQzFXGAJ4hMbLDbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLURk-0002jj-BC; Fri, 18 Oct 2019 15:45:44 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOc-00083o-4U
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:34 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mw9Hm-1i4mQQ3FRM-00s9dJ; Fri, 18 Oct 2019 17:42:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 20/46] ARM: pxa: lubbock: pass udc irqs as resource
Date: Fri, 18 Oct 2019 17:41:35 +0200
Message-Id: <20191018154201.1276638-20-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:nTJNH1PQzy8cjMMin7LOinomkqs0tSjkKrVT+kBFs4X3KlxxjXo
 dO6+aTpTiKZtK8QpEPweKazqSMi5+LBh8d25s0ioorZsFJb/eln2YpAq4JMhCuYX21uFI5r
 7heIyxwKt5SHkA1O39LkzlW18z0/IxVs2ndKvJ2fTjJRQhiXeLcJWw79XcQu7cAP/hdX5bf
 t3Rc98BI5rEp2PEidC66w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QuvpkRYK1V8=:PClHp9hqTY7U0i9I/VNCU5
 683MANrigxXg9+rxrH9CRmdB8oFbOzHw3w1+HaOXloRGesp7YPDLJ+RG8gXuJA2/mih8e1DFQ
 Bs1Ua6tDAfbCOnqrtevCxFrcTfEP6w/XzyleuQDJ3tep7GYIKfIwRAL6pxo0kG0WlToxCXBMi
 Hpo1MZScQpdGJh9Z6upsJqtDHHuTLOoP6EzgLbvrYvvA+GIGj+sHv5caiTp9wS2IzWPe7OWBs
 dI8FR3g2T02YhTdERnH6OFzYsuFiFggF0M/CojavsILk+IsAbxcqRu/wH2gmUipBbnglGvLJR
 En1I05CplZg9zj8FueyPGhRRfpNOkqGiTwAhQKLglmhigKAuJW5NuIWu6yDA9KlP87NXldTTt
 6DndgPN4J4s62xmmI/Qd7ANmnaPaq+a/BGfZclRpeUYQVPIk7iS2GNiWjUO4uykVQFJ3wOtFZ
 jEjwO1D+ujSMv5MIVYpjVSJ6+uC/Q41X5vY0xeACYYV4grZEF1viS/yMAKcTH4kx2d652HQ9T
 nD11IL/RA6DmIUn90mboBliM4C0M8mev9rctM7dUV3WRDFJ3XW/KojWx6Enb104zoeFtYOqEV
 nZQKK2NN13EP8pLQSuBuEW2QPFnAeiZbWMOfNuxf9KdnGwh/vb3JowwIhfS/WJk7Wrd9H13LS
 Yk/cF9/CbytyuxCaq/eQHS+En7RXOveDRCwjQCvnSvlBKZxUYC01CximEBYgHEqw6NaRtpG7m
 TLxF5zJeKwi1lBvau3glAcBzfNT6a5xqWLLLP+HP851pHHGn96JNR5oGt8Bn1O4++fnKCoJNV
 CQq9oL6tASvoeJZFt7LttVWibzZzHbLgSw4THK3XdpxqMOrbj5JP/qka0AOrtTmfUJVhpKa4W
 dr7PXeyGxe8SExkXZmOQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084230_504991_73F157B9 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lubbock is the only machine that has three IRQs for the UDC.
These are currently hardcoded in the driver based on a
machine header file.

Change this to use platform device resources as we use for
the generic IRQ anyway.

Cc: Felipe Balbi <balbi@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/lubbock.c                   | 12 +++++-
 .../arm/mach-pxa/{include/mach => }/lubbock.h |  2 -
 drivers/usb/gadget/udc/pxa25x_udc.c           | 37 ++++++++++---------
 drivers/usb/gadget/udc/pxa25x_udc.h           |  7 +---
 4 files changed, 32 insertions(+), 26 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/lubbock.h (97%)

diff --git a/arch/arm/mach-pxa/lubbock.c b/arch/arm/mach-pxa/lubbock.c
index 098605c8eeed..187d9d8893d7 100644
--- a/arch/arm/mach-pxa/lubbock.c
+++ b/arch/arm/mach-pxa/lubbock.c
@@ -46,7 +46,7 @@
 
 #include "pxa25x.h"
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/lubbock.h>
+#include "lubbock.h"
 #include "udc.h"
 #include <linux/platform_data/irda-pxaficp.h>
 #include <linux/platform_data/video-pxafb.h>
@@ -131,6 +131,13 @@ static struct pxa2xx_udc_mach_info udc_info __initdata = {
 	// no D+ pullup; lubbock can't connect/disconnect in software
 };
 
+static struct resource lubbock_udc_resources[] = {
+	DEFINE_RES_MEM(0x40600000, 0x10000),
+	DEFINE_RES_IRQ(IRQ_USB),
+	DEFINE_RES_IRQ(LUBBOCK_USB_IRQ),
+	DEFINE_RES_IRQ(LUBBOCK_USB_DISC_IRQ),
+};
+
 /* GPIOs for SA1111 PCMCIA */
 static struct gpiod_lookup_table sa1111_pcmcia_gpio_table = {
 	.dev_id = "1800",
@@ -495,6 +502,9 @@ static void __init lubbock_init(void)
 	lubbock_init_pcmcia();
 
 	clk_add_alias("SA1111_CLK", NULL, "GPIO11_CLK", NULL);
+	/* lubbock has two extra IRQs */
+	pxa25x_device_udc.resource = lubbock_udc_resources;
+	pxa25x_device_udc.num_resources = ARRAY_SIZE(lubbock_udc_resources);
 	pxa_set_udc_info(&udc_info);
 	pxa_set_fb_info(NULL, &sharp_lm8v31);
 	pxa_set_mci_info(&lubbock_mci_platform_data);
diff --git a/arch/arm/mach-pxa/include/mach/lubbock.h b/arch/arm/mach-pxa/lubbock.h
similarity index 97%
rename from arch/arm/mach-pxa/include/mach/lubbock.h
rename to arch/arm/mach-pxa/lubbock.h
index a3af4a2f9446..8e3ff7d57121 100644
--- a/arch/arm/mach-pxa/include/mach/lubbock.h
+++ b/arch/arm/mach-pxa/lubbock.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- *  arch/arm/mach-pxa/include/mach/lubbock.h
- *
  *  Author:	Nicolas Pitre
  *  Created:	Jun 15, 2001
  *  Copyright:	MontaVista Software Inc.
diff --git a/drivers/usb/gadget/udc/pxa25x_udc.c b/drivers/usb/gadget/udc/pxa25x_udc.c
index d4be53559f2e..ed7ae48b7db2 100644
--- a/drivers/usb/gadget/udc/pxa25x_udc.c
+++ b/drivers/usb/gadget/udc/pxa25x_udc.c
@@ -44,10 +44,6 @@
 #include <linux/usb/gadget.h>
 #include <linux/usb/otg.h>
 
-#ifdef CONFIG_ARCH_LUBBOCK
-#include <mach/lubbock.h>
-#endif
-
 #define UDCCR	 0x0000 /* UDC Control Register */
 #define UDC_RES1 0x0004 /* UDC Undocumented - Reserved1 */
 #define UDC_RES2 0x0008 /* UDC Undocumented - Reserved2 */
@@ -1575,18 +1571,15 @@ lubbock_vbus_irq(int irq, void *_dev)
 	int			vbus;
 
 	dev->stats.irqs++;
-	switch (irq) {
-	case LUBBOCK_USB_IRQ:
+	if (irq == dev->usb_irq) {
 		vbus = 1;
-		disable_irq(LUBBOCK_USB_IRQ);
-		enable_irq(LUBBOCK_USB_DISC_IRQ);
-		break;
-	case LUBBOCK_USB_DISC_IRQ:
+		disable_irq(dev->usb_irq);
+		enable_irq(dev->usb_disc_irq);
+	} else if (irq == dev->usb_disc_irq) {
 		vbus = 0;
-		disable_irq(LUBBOCK_USB_DISC_IRQ);
-		enable_irq(LUBBOCK_USB_IRQ);
-		break;
-	default:
+		disable_irq(dev->usb_disc_irq);
+		enable_irq(dev->usb_irq);
+	} else {
 		return IRQ_NONE;
 	}
 
@@ -2421,20 +2414,28 @@ static int pxa25x_udc_probe(struct platform_device *pdev)
 
 #ifdef CONFIG_ARCH_LUBBOCK
 	if (machine_is_lubbock()) {
-		retval = devm_request_irq(&pdev->dev, LUBBOCK_USB_DISC_IRQ,
+		dev->usb_irq = platform_get_irq(pdev, 1);
+		if (dev->usb_irq < 0)
+			return dev->usb_irq;
+
+		dev->usb_disc_irq = platform_get_irq(pdev, 2);
+		if (dev->usb_disc_irq < 0)
+			return dev->usb_disc_irq;
+
+		retval = devm_request_irq(&pdev->dev, dev->usb_disc_irq,
 					  lubbock_vbus_irq, 0, driver_name,
 					  dev);
 		if (retval != 0) {
 			pr_err("%s: can't get irq %i, err %d\n",
-				driver_name, LUBBOCK_USB_DISC_IRQ, retval);
+				driver_name, dev->usb_disc_irq, retval);
 			goto err;
 		}
-		retval = devm_request_irq(&pdev->dev, LUBBOCK_USB_IRQ,
+		retval = devm_request_irq(&pdev->dev, dev->usb_irq,
 					  lubbock_vbus_irq, 0, driver_name,
 					  dev);
 		if (retval != 0) {
 			pr_err("%s: can't get irq %i, err %d\n",
-				driver_name, LUBBOCK_USB_IRQ, retval);
+				driver_name, dev->usb_irq, retval);
 			goto err;
 		}
 	} else
diff --git a/drivers/usb/gadget/udc/pxa25x_udc.h b/drivers/usb/gadget/udc/pxa25x_udc.h
index ccc6b921f067..c574fb602741 100644
--- a/drivers/usb/gadget/udc/pxa25x_udc.h
+++ b/drivers/usb/gadget/udc/pxa25x_udc.h
@@ -121,16 +121,13 @@ struct pxa25x_udc {
 	struct dentry				*debugfs_udc;
 #endif
 	void __iomem				*regs;
+	int					usb_irq;
+	int					usb_disc_irq;
 };
 #define to_pxa25x(g)	(container_of((g), struct pxa25x_udc, gadget))
 
 /*-------------------------------------------------------------------------*/
 
-#ifdef CONFIG_ARCH_LUBBOCK
-#include <mach/lubbock.h>
-/* lubbock can also report usb connect/disconnect irqs */
-#endif
-
 static struct pxa25x_udc *the_controller;
 
 /*-------------------------------------------------------------------------*/
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
