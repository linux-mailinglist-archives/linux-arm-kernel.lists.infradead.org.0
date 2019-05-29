Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411C52D7E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fae+mKjxoIluq8hqWJo4UPnrGRtTcp399DL+l4/Bi8Y=; b=obKEJs8uHPaRp5ZPPBskxX5e8M
	Sv7DqvV/VcIH5UHeWUx0ro3gJpaoyDvOzV/9usWNP1nsE4sHmTAc6yKqsjM9qtxBv/tTu6NN9Dked
	RfEpFsIjU/4Oit/LIPIbe5Z7OlwivTHSlYLgBgHXca5xGOtZuAaVJlyBBFnPpY3YGcArvNQf8NXcY
	lYvLHJoqOKAem7zV/PhXl3/w8UPimpUOTDjAI0cnALdrmjjSgnoQEst50YMY2xMRiuAbtXFQmcz4c
	L1Fzo7SKfj4kWU9b6hbj4Eca/VkmgJ9/ogxtsZJpf0wCHhQo1sbxiZ899EinounLHcvK3sESkDMqn
	pFoAC31w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtze-0005wH-S1; Wed, 29 May 2019 08:31:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtzM-0005jT-63
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:31:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F2BF22011DC;
 Wed, 29 May 2019 10:31:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6F8912011D2;
 Wed, 29 May 2019 10:31:05 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 10C44402CB;
 Wed, 29 May 2019 16:30:58 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, bgolaszewski@baylibre.com
Subject: [PATCH 2/3] gpio: mpc8xxx: Use IRQF_SHARED mode to request IRQ
Date: Wed, 29 May 2019 16:32:53 +0800
Message-Id: <20190529083254.39581-2-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190529083254.39581-1-chuanhua.han@nxp.com>
References: <20190529083254.39581-1-chuanhua.han@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_013112_492364_292AD047 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Zhang Ying-22455 <ying.zhang22455@nxp.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GPIO3 and GPIO4 controllers share one irq number on Layerscape
platform. In the current implementation, only one GPIO controller
can register successfully.

This patch is to allow two controllers to share a single interrupt
number.

Signed-off-by: Zhang Ying-22455 <ying.zhang22455@nxp.com>
Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 drivers/gpio/gpio-mpc8xxx.c | 43 ++++++++++++++++++++++++++-----------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 555e0e7957d9..63c8586fe5c8 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -11,6 +11,7 @@
 
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/interrupt.h>
 #include <linux/spinlock.h>
 #include <linux/io.h>
 #include <linux/of.h>
@@ -105,10 +106,9 @@ static int mpc8xxx_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
 		return -ENXIO;
 }
 
-static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
+static irqreturn_t mpc8xxx_gpio_irq_cascade(int irq, void *dev_id)
 {
-	struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_desc_get_handler_data(desc);
-	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct mpc8xxx_gpio_chip *mpc8xxx_gc = dev_id;
 	struct gpio_chip *gc = &mpc8xxx_gc->gc;
 	unsigned int mask;
 
@@ -117,8 +117,7 @@ static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
 	if (mask)
 		generic_handle_irq(irq_linear_revmap(mpc8xxx_gc->irq,
 						     32 - ffs(mask)));
-	if (chip->irq_eoi)
-		chip->irq_eoi(&desc->irq_data);
+	return IRQ_HANDLED;
 }
 
 static void mpc8xxx_irq_unmask(struct irq_data *d)
@@ -129,6 +128,9 @@ static void mpc8xxx_irq_unmask(struct irq_data *d)
 
 	raw_spin_lock_irqsave(&mpc8xxx_gc->lock, flags);
 
+	gc->write_reg(mpc8xxx_gc->regs + GPIO_IER,
+		      gc->pin2mask(gc, irqd_to_hwirq(d)));
+
 	gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR,
 		gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR)
 		| mpc_pin2mask(irqd_to_hwirq(d)));
@@ -302,21 +304,31 @@ static int mpc8xxx_probe(struct platform_device *pdev)
 	struct gpio_chip	*gc;
 	const struct mpc8xxx_gpio_devtype *devtype =
 		of_device_get_match_data(&pdev->dev);
-	int ret;
+	int ret, irq;
 
 	mpc8xxx_gc = devm_kzalloc(&pdev->dev, sizeof(*mpc8xxx_gc), GFP_KERNEL);
 	if (!mpc8xxx_gc)
 		return -ENOMEM;
 
-	platform_set_drvdata(pdev, mpc8xxx_gc);
-
-	raw_spin_lock_init(&mpc8xxx_gc->lock);
-
 	mpc8xxx_gc->regs = of_iomap(np, 0);
 	if (!mpc8xxx_gc->regs)
 		return -ENOMEM;
 
 	gc = &mpc8xxx_gc->gc;
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(&pdev->dev, "can't get irq number\n");
+		return irq;
+	}
+
+	mpc8xxx_gc->gc.label = pdev->name;
+	mpc8xxx_gc->gc.owner = THIS_MODULE;
+	mpc8xxx_gc->gc.base = -1;
+	mpc8xxx_gc->gc.ngpio = MPC8XXX_GPIO_PINS;
+
+	platform_set_drvdata(pdev, mpc8xxx_gc);
+
+	raw_spin_lock_init(&mpc8xxx_gc->lock);
 
 	if (of_property_read_bool(np, "little-endian")) {
 		ret = bgpio_init(gc, &pdev->dev, 4,
@@ -364,7 +376,7 @@ static int mpc8xxx_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	mpc8xxx_gc->irqn = irq_of_parse_and_map(np, 0);
+	mpc8xxx_gc->irqn = platform_get_irq(pdev, 0);
 	if (!mpc8xxx_gc->irqn)
 		return 0;
 
@@ -378,8 +390,13 @@ static int mpc8xxx_probe(struct platform_device *pdev)
 	gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0xffffffff);
 	gc->write_reg(mpc8xxx_gc->regs + GPIO_ICR2, 0xffffffff);
 
-	irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
-					 mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
+	/* Request IRQ */
+	ret = devm_request_irq(&pdev->dev, irq, mpc8xxx_gpio_irq_cascade,
+			       IRQF_SHARED, pdev->name, mpc8xxx_gc);
+	if (ret) {
+		dev_err(&pdev->dev, "can't claim irq %d\n", mpc8xxx_gc->irqn);
+		goto err;
+	}
 	return 0;
 err:
 	iounmap(mpc8xxx_gc->regs);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
