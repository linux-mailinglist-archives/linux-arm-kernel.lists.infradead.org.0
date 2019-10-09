Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F5ED0A08
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nkr6jHNV4N3WtcrhfUDupOkM/PqAakeDmXPXxoEhsy0=; b=DtM
	oYKDcLWY3MY0AnLaAu3hbB3pj27KwRoPqE2XNg8630L3zXQN/emdYvuCKGKw4OvNWQZYDFE2xg/DB
	rZmXUDwTqb8MoBmAsfLi/jT2jYoBalHNVPO6dLYfcKimSBVWLkxHF9bcooWqLAqN+AthYTptDxd1L
	k6wg/8G5s2eJqYgdqULyPCAaR6Rvu38/0B3vJDwngCgxh7OihgI9QsAkjmXkVudwzS8zkg0YQxsjP
	+kNdwT4OxHnC87tkdLtrN6q/8fbjido1xjCL/5bdvGUAqwPfe60qL8sYYwoAzMli+dmkcPAQWjZMh
	OYUc5NS3bgMryHIVCT8Zl4VJzRqTV5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7XD-00041W-6Z; Wed, 09 Oct 2019 08:41:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7X4-00040Z-0X
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:41:19 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D2C1520039E;
 Wed,  9 Oct 2019 10:41:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 50E90200044;
 Wed,  9 Oct 2019 10:41:09 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 95725402DA;
 Wed,  9 Oct 2019 16:41:02 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v6] gpio/mpc8xxx: change irq handler from chained to normal
Date: Wed,  9 Oct 2019 16:30:21 +0800
Message-Id: <20191009083021.33529-1-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_014118_326284_EEBBAF69 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Song Hui <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Song Hui <hui.song_1@nxp.com>

More than one gpio controllers can share one interrupt, change the
driver to request shared irq.

While this will work, it will mess up userspace accounting of the number
of interrupts per second in tools such as vmstat.  The reason is that
for every GPIO interrupt, /proc/interrupts records the count against GIC
interrupt 68 or 69, as well as the GPIO itself.  So, for every GPIO
interrupt, the total number of interrupts that the system has seen
increments by two

Signed-off-by: Laurentiu Tudor <Laurentiu.Tudor@nxp.com>
Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
Signed-off-by: Song Hui <hui.song_1@nxp.com>
---
 Changes in v6:
	- change request_irq to devm_request_irq and add commit message.
 Changes in v5:
	- add traverse every bit function.
 Changes in v4:
	- convert 'pr_err' to 'dev_err'.
 Changes in v3:
	- update the patch description.
 Changes in v2:
	- delete the compatible of ls1088a.

 drivers/gpio/gpio-mpc8xxx.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 16a47de..f0be284 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -22,6 +22,7 @@
 #include <linux/irq.h>
 #include <linux/gpio/driver.h>
 #include <linux/bitops.h>
+#include <linux/interrupt.h>
 
 #define MPC8XXX_GPIO_PINS	32
 
@@ -127,20 +128,20 @@ static int mpc8xxx_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
 		return -ENXIO;
 }
 
-static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
+static irqreturn_t mpc8xxx_gpio_irq_cascade(int irq, void *data)
 {
-	struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_desc_get_handler_data(desc);
-	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct mpc8xxx_gpio_chip *mpc8xxx_gc = data;
 	struct gpio_chip *gc = &mpc8xxx_gc->gc;
 	unsigned int mask;
+	int i;
 
 	mask = gc->read_reg(mpc8xxx_gc->regs + GPIO_IER)
 		& gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR);
-	if (mask)
+	for_each_set_bit(i, &mask, 32)
 		generic_handle_irq(irq_linear_revmap(mpc8xxx_gc->irq,
-						     32 - ffs(mask)));
-	if (chip->irq_eoi)
-		chip->irq_eoi(&desc->irq_data);
+						     31 - i));
+
+	return IRQ_HANDLED;
 }
 
 static void mpc8xxx_irq_unmask(struct irq_data *d)
@@ -388,8 +389,8 @@ static int mpc8xxx_probe(struct platform_device *pdev)
 
 	ret = gpiochip_add_data(gc, mpc8xxx_gc);
 	if (ret) {
-		pr_err("%pOF: GPIO chip registration failed with status %d\n",
-		       np, ret);
+		dev_err(&pdev->dev, "%pOF: GPIO chip registration failed with status %d\n",
+			np, ret);
 		goto err;
 	}
 
@@ -409,8 +410,16 @@ static int mpc8xxx_probe(struct platform_device *pdev)
 	if (devtype->gpio_dir_in_init)
 		devtype->gpio_dir_in_init(gc);
 
-	irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
-					 mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
+	ret = devm_request_irq(&pdev->dev, mpc8xxx_gc->irqn,
+			       mpc8xxx_gpio_irq_cascade,
+			       IRQF_NO_THREAD | IRQF_SHARED, "gpio-cascade",
+			       mpc8xxx_gc);
+	if (ret) {
+		dev_err(&pdev->dev, "%s: failed to devm_request_irq(%d), ret = %d\n",
+			np->full_name, mpc8xxx_gc->irqn, ret);
+		goto err;
+	}
+
 	return 0;
 err:
 	iounmap(mpc8xxx_gc->regs);
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
