Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CF0DA439
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 05:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/q0LUp8NaTsrvfajs9/5sTOAdkNRk5B18dMsrJX6ar8=; b=ufs93ApzUOaBNn
	ucZC+b+YNE9PFxP9uLIOvlmgr3W9eAZdnpM2axGicORptmKrT0RnS32SSBaOLQVZXNjjsTioMUQ2+
	sEIPthVNfr6Duy6JheamyCU6DW4kW2pK1cOcgf7V19/gXcOrFUTXSEkm9uGB6C5hdAmLpTXu/iRTW
	StEk4ZoEQplTgHLsdzZOlmENigAh3UuSYz+/33MZz6X1SP2vmas3qgVuW5sYnY67XFMIjPRkdhqyX
	dgGuQwPYmYItVLPFJdEw52mgYo5J40MOat/PQ317C6hdyTAhNYDmxxXfS9/H8fMUQl0yo/ngmQCxI
	g/q1eF17suKbBf29uSjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKwCa-0007qS-E6; Thu, 17 Oct 2019 03:11:48 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKwBy-0007QF-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 03:11:15 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 939A4891AC;
 Thu, 17 Oct 2019 16:10:58 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571281858;
 bh=jlsuLmHGaqSrARz5bSRO0ITaS1A+5aEJDtmKxEoxCws=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=rbJBrasr7inbyi3x4cmQwZdzZaO/wVG1cKcV0aE2uoE+i1rfDygV+D70SnivkRZ84
 7yt9/3Ar5hx51wvqAk6YQuPnuw11OMm+24Ucs5/adI/nE5WaU22uL6MF9787/FwTtX
 G/shv6kn38OQlVi4vQEgKyYGW7LpT8eaJpolPOcdJyHY+rbKgL9y6NHabeRNrhR9Dz
 CBjX8w2bSKlY7YbJ7xdtMMGEvfLyQSJqHX86+RNS12PDOTDOlM4xJQ6ZTccBP1+y84
 U738QpKqS1EJeUBlF8UcA1wZLiNdJe4BJQ9sMH/77Hfup059QVen9j35/urF/vknPV
 ZvEdphQWVMJrQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5da7dbc30000>; Thu, 17 Oct 2019 16:10:59 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 5BABA13EEB6;
 Thu, 17 Oct 2019 16:11:02 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 46FEF280059; Thu, 17 Oct 2019 16:10:58 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 2/2] gpio: Add xgs-iproc driver
Date: Thu, 17 Oct 2019 16:10:51 +1300
Message-Id: <20191017031051.20366-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_201111_284150_541F970C 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
    Changes in v2:
    - use more of the generic infrastructure for gpio chips
    - handling the root interrupt is still done manually due to sharing with uart0.

 drivers/gpio/Kconfig          |   9 +
 drivers/gpio/Makefile         |   1 +
 drivers/gpio/gpio-xgs-iproc.c | 301 ++++++++++++++++++++++++++++++++++
 3 files changed, 311 insertions(+)
 create mode 100644 drivers/gpio/gpio-xgs-iproc.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 38e096e6925f..4b3c0f8397d7 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -156,6 +156,15 @@ config GPIO_BRCMSTB
 	help
 	  Say yes here to enable GPIO support for Broadcom STB (BCM7XXX) SoCs.
 
+config GPIO_XGS_IPROC
+	tristate "BRCM XGS iProc GPIO support"
+	depends on OF_GPIO && (ARCH_BCM_IPROC || COMPILE_TEST)
+	select GPIO_GENERIC
+	select GPIOLIB_IRQCHIP
+	default ARCH_BCM_IPROC
+	help
+	  Say yes here to enable GPIO support for Broadcom XGS iProc SoCs.
+
 config GPIO_CADENCE
 	tristate "Cadence GPIO support"
 	depends on OF_GPIO
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index d2fd19c15bae..3783c3d43fbe 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -37,6 +37,7 @@ obj-$(CONFIG_GPIO_BCM_KONA)		+= gpio-bcm-kona.o
 obj-$(CONFIG_GPIO_BD70528)		+= gpio-bd70528.o
 obj-$(CONFIG_GPIO_BD9571MWV)		+= gpio-bd9571mwv.o
 obj-$(CONFIG_GPIO_BRCMSTB)		+= gpio-brcmstb.o
+obj-$(CONFIG_GPIO_XGS_IPROC)		+= gpio-xgs-iproc.o
 obj-$(CONFIG_GPIO_BT8XX)		+= gpio-bt8xx.o
 obj-$(CONFIG_GPIO_CADENCE)		+= gpio-cadence.o
 obj-$(CONFIG_GPIO_CLPS711X)		+= gpio-clps711x.o
diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
new file mode 100644
index 000000000000..a0277acf9369
--- /dev/null
+++ b/drivers/gpio/gpio-xgs-iproc.c
@@ -0,0 +1,301 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 Broadcom Corporation
+ */
+
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/irq.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/ioport.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/of_gpio.h>
+
+#define CCA_INT_F_GPIOINT		BIT(0)
+#define CCA_INT_STS			0x20
+#define CCA_INT_MASK			0x24
+
+#define GPIO_CCA_DIN			0x0
+#define GPIO_CCA_DOUT			0x4
+#define GPIO_CCA_OUT_EN			0x8
+#define GPIO_CCA_INT_LEVEL		0x10
+#define GPIO_CCA_INT_LEVEL_MASK		0x14
+#define GPIO_CCA_INT_EVENT		0x18
+#define GPIO_CCA_INT_EVENT_MASK		0x1C
+#define GPIO_CCA_INT_EDGE		0x24
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
+	u32 irq = d->irq;
+	u32 irq_type, event_status = 0;
+
+	irq_type = irq_get_trigger_type(irq);
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_status |= BIT(pin);
+		writel(event_status, chip->base + GPIO_CCA_INT_EVENT);
+	}
+}
+
+static void iproc_gpio_irq_unmask(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	u32 irq = d->irq;
+	u32 int_mask, irq_type, event_mask;
+
+	irq_type = irq_get_trigger_type(irq);
+	event_mask = readl(chip->base + GPIO_CCA_INT_EVENT_MASK);
+	int_mask = readl(chip->base + GPIO_CCA_INT_LEVEL_MASK);
+
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_mask |= 1 << pin;
+		writel(event_mask, chip->base + GPIO_CCA_INT_EVENT_MASK);
+	} else {
+		int_mask |= 1 << pin;
+		writel(int_mask, chip->base + GPIO_CCA_INT_LEVEL_MASK);
+	}
+}
+
+static void iproc_gpio_irq_mask(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	u32 irq = d->irq;
+	u32 irq_type, int_mask, event_mask;
+
+	irq_type = irq_get_trigger_type(irq);
+	event_mask = readl(chip->base + GPIO_CCA_INT_EVENT_MASK);
+	int_mask = readl(chip->base + GPIO_CCA_INT_LEVEL_MASK);
+
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_mask &= ~BIT(pin);
+		writel(event_mask, chip->base + GPIO_CCA_INT_EVENT_MASK);
+	} else {
+		int_mask &= ~BIT(pin);
+		writel(int_mask, chip->base + GPIO_CCA_INT_LEVEL_MASK);
+	}
+}
+
+
+static int iproc_gpio_irq_set_type(struct irq_data *d, u32 type)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	u32 irq = d->irq;
+	u32 event_pol, int_pol;
+
+
+	switch (type & IRQ_TYPE_SENSE_MASK) {
+	case IRQ_TYPE_EDGE_RISING:
+		event_pol = readl(chip->base + GPIO_CCA_INT_EDGE);
+		event_pol &= ~BIT(pin);
+		writel(event_pol, chip->base + GPIO_CCA_INT_EDGE);
+		break;
+	case IRQ_TYPE_EDGE_FALLING:
+		event_pol = readl(chip->base + GPIO_CCA_INT_EDGE);
+		event_pol |= BIT(pin);
+		writel(event_pol, chip->base + GPIO_CCA_INT_EDGE);
+		break;
+	case IRQ_TYPE_LEVEL_HIGH:
+		int_pol = readl(chip->base + GPIO_CCA_INT_LEVEL);
+		int_pol &= ~BIT(pin);
+		writel(int_pol, chip->base + GPIO_CCA_INT_LEVEL);
+		break;
+	case IRQ_TYPE_LEVEL_LOW:
+		int_pol = readl(chip->base + GPIO_CCA_INT_LEVEL);
+		int_pol |= BIT(pin);
+		writel(int_pol, chip->base + GPIO_CCA_INT_LEVEL);
+		break;
+	default:
+		/* should not come here */
+		return -EINVAL;
+	}
+
+	if (type & IRQ_TYPE_LEVEL_MASK)
+		irq_set_handler_locked(irq_get_irq_data(irq), handle_level_irq);
+	else if (type & IRQ_TYPE_EDGE_BOTH)
+		irq_set_handler_locked(irq_get_irq_data(irq), handle_edge_irq);
+
+	return 0;
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
+	int_status = readl(chip->intr + CCA_INT_STS);
+	if (int_status & CCA_INT_F_GPIOINT) {
+		u32 event, level;
+
+		/* Get level and edge interrupts */
+		event = readl(chip->base + GPIO_CCA_INT_EVENT_MASK);
+		event &= readl(chip->base + GPIO_CCA_INT_EVENT);
+		level = readl(chip->base + GPIO_CCA_DIN);
+		level ^= readl(chip->base + GPIO_CCA_INT_LEVEL);
+		level &= readl(chip->base + GPIO_CCA_INT_LEVEL_MASK);
+		int_bits = level | event;
+
+		for_each_set_bit(bit, &int_bits, gc->ngpio)
+			generic_handle_irq(
+				irq_linear_revmap(gc->irq.domain, bit));
+	}
+
+	return  int_bits ? IRQ_HANDLED : IRQ_NONE;
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
+
+	chip->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(chip->base))
+		return PTR_ERR(chip->base);
+
+	ret = bgpio_init(&chip->gc, dev, 4,
+			 chip->base + GPIO_CCA_DIN,
+			 chip->base + GPIO_CCA_DOUT,
+			 NULL,
+			 chip->base + GPIO_CCA_OUT_EN,
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
+		val = readl(chip->intr + CCA_INT_MASK);
+		val |= CCA_INT_F_GPIOINT;
+		writel(val, chip->intr + CCA_INT_MASK);
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
+		girq->chip =  irqc;
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
+		val = readl(chip->intr + CCA_INT_MASK);
+		val &= ~CCA_INT_F_GPIOINT;
+		writel(val, chip->intr + CCA_INT_MASK);
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
