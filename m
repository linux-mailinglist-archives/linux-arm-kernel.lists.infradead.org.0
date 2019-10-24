Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E421E3D34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qV+9jxWQa8mFAYqD3gW/vhoKJqDha5JwoZNCLVI7+0Y=; b=DXeinGiQ1qiHMo
	/a2QfmrmBHQrSH3iRYEo437Ctgs0VTAtHq09tBXOh7AFf70KQw3fa5fAsuIOAQn1QslsMDAfjs5v5
	vzE79UyJEyBXe5N5SXzL1+kfZ/1i5BH16tiyxza96jR+vPYBkFO13PM83gSmgSNVtAXnTXlEyJTVA
	LH6dKbEtSjB14l0QFyBQ01Tsj16+VySWSadQiGr6o3yCQtTJ4+YhHDSaMQbr4y2Nd9impE4ZtxR4s
	wWfzef/7oYH2r7MfX3xmfc6zRxNuiW5pcsGVXpijLi5luLT5klJG2XfvO4yK2/6VQ+uChJybCcWEJ
	ZRttqG4y1S95gvpY9Vgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjiD-0008Ur-27; Thu, 24 Oct 2019 20:28:01 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjhR-0007xz-6i
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:27:17 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C0952891AB;
 Fri, 25 Oct 2019 09:27:09 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571948829;
 bh=C3M8+LHd/TwZW1ATfg+ZMsypot9ZMhn+VzFnJCneSGk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YGKdFPhj0VI3k//IWGSwhNGcMAd6EbCR/Zlz2Aou8MJohx+iTiX/xyZ+lJeDNFQcc
 skNCCzajriuNaNZyJS97YjmXAzllW+FlI1cX/AYrjeYGqXeAzTwOv3Mg4bFEbFmKj/
 xOGDE5OL1I6qOPLilV8MDd7hnLEFGy+X8AJfYI1p652Q7bORkDkML6L1lrgilKRJ+p
 CJ0CskrRxgCpE2Y/Xw0WmlfVmRMi9vdOUwPWbV0G/HIfOXItWwAWSh0KzPjnuqk4gE
 YSbmdd8e0lCy73dsYPbu1Q9RovcSE6AXqCrSEgE5k5PkMH8Ud73Ru/IOTKvIf5nHWW
 f8K4jShS1FVVg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db209190002>; Fri, 25 Oct 2019 09:27:08 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 5EFC313EF97;
 Fri, 25 Oct 2019 09:27:10 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 296FF28005C; Fri, 25 Oct 2019 09:27:06 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v4 2/2] gpio: Add xgs-iproc driver
Date: Fri, 25 Oct 2019 09:27:03 +1300
Message-Id: <20191024202703.8017-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
References: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_132713_652082_99C6AEBB 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver supports the Chip Common A GPIO controller present on a
number of Broadcom switch ASICs with integrated SoCs. The controller is
similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
different enough that a separate driver is required.

This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
support (pinctrl-iproc-gpio covers CCB).

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v4:
    - rename the config option to GPIO_BCM_XGS_IPROC and place alphabetically
    - sort #includes alphabetically
    
    Changes in v3:
    - prefix local #defines with 'IPROC'
    - use {readl,writel}_relaxed
    - remove unnecessary headers
    - actually use spinlock to guard hardware accesses
    
    Changes in v2:
    - use more of the generic infrastructure for gpio chips
    - handling the root interrupt is still done manually due to sharing with uart0.

 drivers/gpio/Kconfig          |   9 +
 drivers/gpio/Makefile         |   1 +
 drivers/gpio/gpio-xgs-iproc.c | 321 ++++++++++++++++++++++++++++++++++
 3 files changed, 331 insertions(+)
 create mode 100644 drivers/gpio/gpio-xgs-iproc.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 38e096e6925f..04396787fbb0 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -147,6 +147,15 @@ config GPIO_BCM_KONA
 	help
 	  Turn on GPIO support for Broadcom "Kona" chips.
 
+config GPIO_BCM_XGS_IPROC
+	tristate "BRCM XGS iProc GPIO support"
+	depends on OF_GPIO && (ARCH_BCM_IPROC || COMPILE_TEST)
+	select GPIO_GENERIC
+	select GPIOLIB_IRQCHIP
+	default ARCH_BCM_IPROC
+	help
+	  Say yes here to enable GPIO support for Broadcom XGS iProc SoCs.
+
 config GPIO_BRCMSTB
 	tristate "BRCMSTB GPIO support"
 	default y if (ARCH_BRCMSTB || BMIPS_GENERIC)
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index d2fd19c15bae..8725d158a964 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -34,6 +34,7 @@ obj-$(CONFIG_GPIO_ARIZONA)		+= gpio-arizona.o
 obj-$(CONFIG_GPIO_ASPEED)		+= gpio-aspeed.o
 obj-$(CONFIG_GPIO_ATH79)		+= gpio-ath79.o
 obj-$(CONFIG_GPIO_BCM_KONA)		+= gpio-bcm-kona.o
+obj-$(CONFIG_GPIO_BCM_XGS_IPROC)	+= gpio-xgs-iproc.o
 obj-$(CONFIG_GPIO_BD70528)		+= gpio-bd70528.o
 obj-$(CONFIG_GPIO_BD9571MWV)		+= gpio-bd9571mwv.o
 obj-$(CONFIG_GPIO_BRCMSTB)		+= gpio-brcmstb.o
diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
new file mode 100644
index 000000000000..a3fdd95cc9e6
--- /dev/null
+++ b/drivers/gpio/gpio-xgs-iproc.c
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 Broadcom
+ */
+
+#include <linux/gpio/driver.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+
+#define IPROC_CCA_INT_F_GPIOINT		BIT(0)
+#define IPROC_CCA_INT_STS		0x20
+#define IPROC_CCA_INT_MASK		0x24
+
+#define IPROC_GPIO_CCA_DIN		0x0
+#define IPROC_GPIO_CCA_DOUT		0x4
+#define IPROC_GPIO_CCA_OUT_EN		0x8
+#define IPROC_GPIO_CCA_INT_LEVEL	0x10
+#define IPROC_GPIO_CCA_INT_LEVEL_MASK	0x14
+#define IPROC_GPIO_CCA_INT_EVENT	0x18
+#define IPROC_GPIO_CCA_INT_EVENT_MASK	0x1C
+#define IPROC_GPIO_CCA_INT_EDGE		0x24
+
+struct iproc_gpio_chip {
+	struct irq_chip irqchip;
+	struct gpio_chip gc;
+	spinlock_t lock;
+	struct device *dev;
+	void __iomem *base;
+	void __iomem *intr;
+};
+
+static inline struct iproc_gpio_chip *
+to_iproc_gpio(struct gpio_chip *gc)
+{
+	return container_of(gc, struct iproc_gpio_chip, gc);
+}
+
+static void iproc_gpio_irq_ack(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 irq_type, event_status = 0;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	irq_type = irq_get_trigger_type(irq);
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_status |= BIT(pin);
+		writel_relaxed(event_status,
+			       chip->base + IPROC_GPIO_CCA_INT_EVENT);
+	}
+	spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static void iproc_gpio_irq_unmask(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 int_mask, irq_type, event_mask;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	irq_type = irq_get_trigger_type(irq);
+	event_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	int_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_mask |= 1 << pin;
+		writel_relaxed(event_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	} else {
+		int_mask |= 1 << pin;
+		writel_relaxed(int_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+	}
+	spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static void iproc_gpio_irq_mask(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 irq_type, int_mask, event_mask;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	irq_type = irq_get_trigger_type(irq);
+	event_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	int_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_mask &= ~BIT(pin);
+		writel_relaxed(event_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	} else {
+		int_mask &= ~BIT(pin);
+		writel_relaxed(int_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+	}
+	spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static int iproc_gpio_irq_set_type(struct irq_data *d, u32 type)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 event_pol, int_pol;
+	int ret = 0;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	switch (type & IRQ_TYPE_SENSE_MASK) {
+	case IRQ_TYPE_EDGE_RISING:
+		event_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		event_pol &= ~BIT(pin);
+		writel_relaxed(event_pol, chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		break;
+	case IRQ_TYPE_EDGE_FALLING:
+		event_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		event_pol |= BIT(pin);
+		writel_relaxed(event_pol, chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		break;
+	case IRQ_TYPE_LEVEL_HIGH:
+		int_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		int_pol &= ~BIT(pin);
+		writel_relaxed(int_pol, chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		break;
+	case IRQ_TYPE_LEVEL_LOW:
+		int_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		int_pol |= BIT(pin);
+		writel_relaxed(int_pol, chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		break;
+	default:
+		/* should not come here */
+		ret = -EINVAL;
+		goto out_unlock;
+	}
+
+	if (type & IRQ_TYPE_LEVEL_MASK)
+		irq_set_handler_locked(irq_get_irq_data(irq), handle_level_irq);
+	else if (type & IRQ_TYPE_EDGE_BOTH)
+		irq_set_handler_locked(irq_get_irq_data(irq), handle_edge_irq);
+
+out_unlock:
+	spin_unlock_irqrestore(&chip->lock, flags);
+
+	return ret;
+}
+
+static irqreturn_t iproc_gpio_irq_handler(int irq, void *data)
+{
+	struct gpio_chip *gc = (struct gpio_chip *)data;
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int bit;
+	unsigned long int_bits = 0;
+	u32 int_status;
+
+	/* go through the entire GPIOs and handle all interrupts */
+	int_status = readl_relaxed(chip->intr + IPROC_CCA_INT_STS);
+	if (int_status & IPROC_CCA_INT_F_GPIOINT) {
+		u32 event, level;
+
+		/* Get level and edge interrupts */
+		event =
+		    readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+		event &= readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT);
+		level = readl_relaxed(chip->base + IPROC_GPIO_CCA_DIN);
+		level ^= readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		level &=
+		    readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+		int_bits = level | event;
+
+		for_each_set_bit(bit, &int_bits, gc->ngpio)
+			generic_handle_irq(irq_linear_revmap(gc->irq.domain, bit));
+	}
+
+	return int_bits ? IRQ_HANDLED : IRQ_NONE;
+}
+
+static int iproc_gpio_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *dn = pdev->dev.of_node;
+	struct iproc_gpio_chip *chip;
+	u32 num_gpios;
+	int irq, ret;
+
+	chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+
+	chip->dev = dev;
+	platform_set_drvdata(pdev, chip);
+	spin_lock_init(&chip->lock);
+
+	chip->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(chip->base))
+		return PTR_ERR(chip->base);
+
+	ret = bgpio_init(&chip->gc, dev, 4,
+			 chip->base + IPROC_GPIO_CCA_DIN,
+			 chip->base + IPROC_GPIO_CCA_DOUT,
+			 NULL,
+			 chip->base + IPROC_GPIO_CCA_OUT_EN,
+			 NULL,
+			 0);
+	if (ret) {
+		dev_err(dev, "unable to init GPIO chip\n");
+		return ret;
+	}
+
+	chip->gc.label = dev_name(dev);
+	if (of_property_read_u32(dn, "ngpios", &num_gpios))
+		chip->gc.ngpio = num_gpios;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq > 0) {
+		struct gpio_irq_chip *girq;
+		struct irq_chip *irqc;
+		u32 val;
+
+		irqc = &chip->irqchip;
+		irqc->name = dev_name(dev);
+		irqc->irq_ack = iproc_gpio_irq_ack;
+		irqc->irq_mask = iproc_gpio_irq_mask;
+		irqc->irq_unmask = iproc_gpio_irq_unmask;
+		irqc->irq_set_type = iproc_gpio_irq_set_type;
+
+		chip->intr = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(chip->intr))
+			return PTR_ERR(chip->intr);
+
+		/* Enable GPIO interrupts for CCA GPIO */
+		val = readl_relaxed(chip->intr + IPROC_CCA_INT_MASK);
+		val |= IPROC_CCA_INT_F_GPIOINT;
+		writel_relaxed(val, chip->intr + IPROC_CCA_INT_MASK);
+
+		/*
+		 * Directly request the irq here instead of passing
+		 * a flow-handler to gpiochip_set_chained_irqchip,
+		 * because the irq is shared.
+		 */
+		ret = devm_request_irq(dev, irq, iproc_gpio_irq_handler,
+				       IRQF_SHARED, chip->gc.label, &chip->gc);
+		if (ret) {
+			dev_err(dev, "Fail to request IRQ%d: %d\n", irq, ret);
+			return ret;
+		}
+
+		girq = &chip->gc.irq;
+		girq->chip = irqc;
+		/* This will let us handle the parent IRQ in the driver */
+		girq->parent_handler = NULL;
+		girq->num_parents = 0;
+		girq->parents = NULL;
+		girq->default_type = IRQ_TYPE_NONE;
+		girq->handler = handle_simple_irq;
+	}
+
+	ret = devm_gpiochip_add_data(dev, &chip->gc, chip);
+	if (ret) {
+		dev_err(dev, "unable to add GPIO chip\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int __exit iproc_gpio_remove(struct platform_device *pdev)
+{
+	struct iproc_gpio_chip *chip;
+
+	chip = platform_get_drvdata(pdev);
+	if (!chip)
+		return -ENODEV;
+
+	if (chip->intr) {
+		u32 val;
+
+		val = readl_relaxed(chip->intr + IPROC_CCA_INT_MASK);
+		val &= ~IPROC_CCA_INT_F_GPIOINT;
+		writel_relaxed(val, chip->intr + IPROC_CCA_INT_MASK);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
+	{ .compatible = "brcm,iproc-gpio-cca" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, bcm_iproc_gpio_of_match);
+
+static struct platform_driver bcm_iproc_gpio_driver = {
+	.driver = {
+		.name = "iproc-xgs-gpio",
+		.owner = THIS_MODULE,
+		.of_match_table = bcm_iproc_gpio_of_match,
+	},
+	.probe = iproc_gpio_probe,
+	.remove = iproc_gpio_remove,
+};
+
+module_platform_driver(bcm_iproc_gpio_driver);
+
+MODULE_DESCRIPTION("XGS IPROC GPIO driver");
+MODULE_LICENSE("GPL v2");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
