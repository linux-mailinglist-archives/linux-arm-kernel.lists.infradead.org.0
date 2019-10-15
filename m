Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E11BD7DDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UXFlxXm1TBxr6oU9Owd8tl4cGoHunKlLhxyv4UkjTEI=; b=LDca/34WyY0+UDGAMNCQe0sATc
	4/OAzosXAhfGEORS+UGcyJj1N4Aqa1FBx2MNk8MxJs2BynIgcP04YoGbsRVGSBaou1daxO7Cy197D
	BcMUKm9O6O8ww9/e0XjiZeXToiqvcXmKcFbUhDJTT7ewt3Ep1hqKSF7lDEAtecOaCclvWgR/01ic/
	M3ZI7IwNEGe9j90xyKKv/89eBe+meQulG9ia2j+8mURF2MX5d12eYymhyywC4bu2EJAIRcIe3M5CY
	mpGkcrYwTTKsV+4UIqJIZCwsN4hgP6mLjsB3oQsn3F7eYaKj7bvQ09/uoGrT9UCURbCG6FB0XJSfK
	fE8dt6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQgB-00075m-Gy; Tue, 15 Oct 2019 17:32:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQet-0006Jr-Kq
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:31:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id i32so12541041pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XS2R4FunLivDfSHsnShzXwsYoiKZ56RWG4w8jiOliI8=;
 b=WpUrKf+HJMcjNG2jW8yMEmlE0gt018p1xtNM7tYgBR4qvjURPid0Y0w/zgY9ara1hx
 nIrMFwJiF65WrJYzTLmYKvBHgoOfJAdnuNoWC9q2yNwN31YebWgAS1SNyTyIJ3ZJDh76
 Xv8DwSIbaLPhmZ0HOmGnefb5Ng3117twEfYrXI8IRMBJi3PXNMba0rhb4BHyAM5N/TW3
 rmnNHXkMVKjZRhbTFKNaCGkSdTmAqS1YWgeAKTp6TVkgUXuughEmeYgaArLcvqISl4x4
 BS9DjFy23F6+rjyny2zmryjEHNtDE+my7LHmihfjVXshUh7GVojfCkHxrky6ybOcfJFE
 cIRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XS2R4FunLivDfSHsnShzXwsYoiKZ56RWG4w8jiOliI8=;
 b=fyLHH6CqxDEZEDBu4hBzadOBV+kqaToLxJdIwCcnycUaIhINJHVgjtxZMdTGSl76ji
 48YXSk23y/AHejJY0V2DFwA3jDVo+zz/WpcdWBRcqXwiHe3JqXB47NQ+BHL3OvDidtEe
 6ezaGVt/+S9/uqMxDFhM5Occc0+H3HMQ+ao8iGmkjrpR1PAUyYliaNGHCR7LaphKFG+N
 CE2qawerGkTTcPt4dW+OdXO7NIPILBmg2UJHcsGISxk3agjsCScGlWtsLn1XhX8AyEng
 vfb9NH1SoPU+CA/QgnrB7COclaYfKv0CL2HQxqg+efyti88q1IGI8q3eBPsio0obzEWN
 /P3Q==
X-Gm-Message-State: APjAAAWpNx7XvZxFVkLjUSXl9Yt4x43dOvq45roIrmxBguPYq6nbsF/T
 N3DHzLITvFkafWb27HdtaZmI
X-Google-Smtp-Source: APXvYqwy4EK2BMi+H6Ofq3pk8JyBdWm29CW9vPw5Znqhj4TT8HXLls0mloJfT0VIefkmrCdX+3jwwg==
X-Received: by 2002:a63:ff56:: with SMTP id s22mr2141428pgk.44.1571160654729; 
 Tue, 15 Oct 2019 10:30:54 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:6003:7cb8:25e8:2c45:fab2:b0c7])
 by smtp.gmail.com with ESMTPSA id w11sm28033563pfd.116.2019.10.15.10.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:30:54 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v2 3/4] gpio: Add RDA Micro GPIO controller support
Date: Tue, 15 Oct 2019 23:00:25 +0530
Message-Id: <20191015173026.9962-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
References: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103055_872702_90461FD3 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for GPIO controller from RDA Micro.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/gpio/Kconfig    |   8 +
 drivers/gpio/Makefile   |   1 +
 drivers/gpio/gpio-rda.c | 315 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 324 insertions(+)
 create mode 100644 drivers/gpio/gpio-rda.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 38e096e6925f..71826e61fdb3 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -435,6 +435,14 @@ config GPIO_RCAR
 	help
 	  Say yes here to support GPIO on Renesas R-Car SoCs.
 
+config GPIO_RDA
+	bool "RDA Micro GPIO controller support"
+	depends on ARCH_RDA || COMPILE_TEST
+	depends on OF_GPIO
+	select GPIOLIB_IRQCHIP
+	help
+	  Say Y here to support RDA Micro GPIO controller.
+
 config GPIO_REG
 	bool
 	help
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index d2fd19c15bae..5c68c9a48fa3 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -115,6 +115,7 @@ obj-$(CONFIG_GPIO_PXA)			+= gpio-pxa.o
 obj-$(CONFIG_GPIO_RASPBERRYPI_EXP)	+= gpio-raspberrypi-exp.o
 obj-$(CONFIG_GPIO_RC5T583)		+= gpio-rc5t583.o
 obj-$(CONFIG_GPIO_RCAR)			+= gpio-rcar.o
+obj-$(CONFIG_GPIO_RDA)			+= gpio-rda.o
 obj-$(CONFIG_GPIO_RDC321X)		+= gpio-rdc321x.o
 obj-$(CONFIG_GPIO_REG)			+= gpio-reg.o
 obj-$(CONFIG_ARCH_SA1100)		+= gpio-sa1100.o
diff --git a/drivers/gpio/gpio-rda.c b/drivers/gpio/gpio-rda.c
new file mode 100644
index 000000000000..1e6ffe27897f
--- /dev/null
+++ b/drivers/gpio/gpio-rda.c
@@ -0,0 +1,315 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * RDA Micro GPIO driver
+ *
+ * Copyright (C) 2012 RDA Micro Inc.
+ * Copyright (C) 2019 Manivannan Sadhasivam
+ */
+
+#include <linux/bitops.h>
+#include <linux/gpio/driver.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+
+#define RDA_GPIO_OEN_VAL		0x00
+#define RDA_GPIO_OEN_SET_OUT		0x04
+#define RDA_GPIO_OEN_SET_IN		0x08
+#define RDA_GPIO_VAL			0x0c
+#define RDA_GPIO_SET			0x10
+#define RDA_GPIO_CLR			0x14
+#define RDA_GPIO_INT_CTRL_SET		0x18
+#define RDA_GPIO_INT_CTRL_CLR		0x1c
+#define RDA_GPIO_INT_CLR		0x20
+#define RDA_GPIO_INT_STATUS		0x24
+
+#define RDA_GPIO_IRQ_RISE_SHIFT		0
+#define RDA_GPIO_IRQ_FALL_SHIFT		8
+#define RDA_GPIO_DEBOUCE_SHIFT		16
+#define RDA_GPIO_LEVEL_SHIFT		24
+
+#define RDA_GPIO_IRQ_MASK		0xff
+
+/* Each bank consists of 32 GPIOs */
+#define RDA_GPIO_BANK_NR	32
+
+struct rda_gpio {
+	struct gpio_chip chip;
+	void __iomem *base;
+	spinlock_t lock;
+	struct irq_chip irq_chip;
+	int irq;
+};
+
+static void rda_gpio_update(struct gpio_chip *chip, unsigned int offset,
+			    u16 reg, int val)
+{
+	struct rda_gpio *rda_gpio = gpiochip_get_data(chip);
+	void __iomem *base = rda_gpio->base;
+	unsigned long flags;
+	u32 tmp;
+
+	spin_lock_irqsave(&rda_gpio->lock, flags);
+	tmp = readl_relaxed(base + reg);
+
+	if (val)
+		tmp |= BIT(offset);
+	else
+		tmp &= ~BIT(offset);
+
+	writel_relaxed(tmp, base + reg);
+	spin_unlock_irqrestore(&rda_gpio->lock, flags);
+}
+
+static int rda_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
+{
+	rda_gpio_update(chip, offset, RDA_GPIO_OEN_SET_IN, 1);
+
+	return 0;
+}
+
+static int rda_gpio_direction_output(struct gpio_chip *chip,
+				     unsigned int offset, int value)
+{
+	rda_gpio_update(chip, offset, RDA_GPIO_OEN_SET_OUT, 1);
+
+	return 0;
+}
+
+static int rda_gpio_get(struct gpio_chip *chip, unsigned int offset)
+{
+	struct rda_gpio *rda_gpio = gpiochip_get_data(chip);
+	void __iomem *base = rda_gpio->base;
+
+	if (readl_relaxed(base + RDA_GPIO_OEN_VAL) & BIT(offset))
+		return !!(readl_relaxed(base + RDA_GPIO_VAL) & BIT(offset));
+	else
+		return !!(readl_relaxed(base + RDA_GPIO_SET) & BIT(offset));
+}
+
+static void rda_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
+{
+	if (value)
+		rda_gpio_update(chip, offset, RDA_GPIO_SET, 1);
+	else
+		rda_gpio_update(chip, offset, RDA_GPIO_CLR, 1);
+}
+
+static void rda_gpio_irq_mask(struct irq_data *data)
+{
+	struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
+	struct rda_gpio *rda_gpio = gpiochip_get_data(chip);
+	void __iomem *base = rda_gpio->base;
+	u32 offset = irqd_to_hwirq(data);
+	u32 value;
+
+	value = BIT(offset) << RDA_GPIO_IRQ_RISE_SHIFT;
+	value |= BIT(offset) << RDA_GPIO_IRQ_FALL_SHIFT;
+
+	writel_relaxed(value, base + RDA_GPIO_INT_CTRL_CLR);
+}
+
+static void rda_gpio_irq_ack(struct irq_data *data)
+{
+	struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
+	u32 offset = irqd_to_hwirq(data);
+
+	rda_gpio_update(chip, offset, RDA_GPIO_INT_CLR, 1);
+}
+
+static int rda_gpio_set_irq(struct gpio_chip *chip, u32 offset,
+			    unsigned int flow_type)
+{
+	struct rda_gpio *rda_gpio = gpiochip_get_data(chip);
+	void __iomem *base = rda_gpio->base;
+	u32 value;
+
+	switch (flow_type) {
+	case IRQ_TYPE_EDGE_RISING:
+		/* Set rising edge trigger */
+		value = BIT(offset) << RDA_GPIO_IRQ_RISE_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_SET);
+
+		/* Switch to edge trigger interrupt */
+		value = BIT(offset) << RDA_GPIO_LEVEL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_CLR);
+		break;
+
+	case IRQ_TYPE_EDGE_FALLING:
+		/* Set falling edge trigger */
+		value = BIT(offset) << RDA_GPIO_IRQ_FALL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_SET);
+
+		/* Switch to edge trigger interrupt */
+		value = BIT(offset) << RDA_GPIO_LEVEL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_CLR);
+		break;
+
+	case IRQ_TYPE_EDGE_BOTH:
+		/* Set both edge trigger */
+		value = BIT(offset) << RDA_GPIO_IRQ_RISE_SHIFT;
+		value |= BIT(offset) << RDA_GPIO_IRQ_FALL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_SET);
+
+		/* Switch to edge trigger interrupt */
+		value = BIT(offset) << RDA_GPIO_LEVEL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_CLR);
+		break;
+
+	case IRQ_TYPE_LEVEL_HIGH:
+		/* Set high level trigger */
+		value = BIT(offset) << RDA_GPIO_IRQ_RISE_SHIFT;
+
+		/* Switch to level trigger interrupt */
+		value |= BIT(offset) << RDA_GPIO_LEVEL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_SET);
+		break;
+
+	case IRQ_TYPE_LEVEL_LOW:
+		/* Set low level trigger */
+		value = BIT(offset) << RDA_GPIO_IRQ_FALL_SHIFT;
+
+		/* Switch to level trigger interrupt */
+		value |= BIT(offset) << RDA_GPIO_LEVEL_SHIFT;
+		writel_relaxed(value, base + RDA_GPIO_INT_CTRL_SET);
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void rda_gpio_irq_unmask(struct irq_data *data)
+{
+	struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
+	u32 offset = irqd_to_hwirq(data);
+	u32 trigger = irqd_get_trigger_type(data);
+
+	rda_gpio_set_irq(chip, offset, trigger);
+}
+
+static int rda_gpio_irq_set_type(struct irq_data *data, unsigned int flow_type)
+{
+	struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
+	u32 offset = irqd_to_hwirq(data);
+	int ret;
+
+	ret = rda_gpio_set_irq(chip, offset, flow_type);
+	if (ret)
+		return ret;
+
+	if (flow_type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
+		irq_set_handler_locked(data, handle_level_irq);
+	else if (flow_type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
+		irq_set_handler_locked(data, handle_edge_irq);
+
+	return 0;
+}
+
+static void rda_gpio_irq_handler(struct irq_desc *desc)
+{
+	struct gpio_chip *chip = irq_desc_get_handler_data(desc);
+	struct irq_chip *ic = irq_desc_get_chip(desc);
+	struct rda_gpio *rda_gpio = gpiochip_get_data(chip);
+	unsigned long status;
+	u32 n, girq;
+
+	chained_irq_enter(ic, desc);
+
+	status = readl_relaxed(rda_gpio->base + RDA_GPIO_INT_STATUS);
+	/* Only lower 8 bits are capable of generating interrupts */
+	status &= RDA_GPIO_IRQ_MASK;
+
+	for_each_set_bit(n, &status, RDA_GPIO_BANK_NR) {
+		girq = irq_find_mapping(chip->irq.domain, n);
+		generic_handle_irq(girq);
+	}
+
+	chained_irq_exit(ic, desc);
+}
+
+static int rda_gpio_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct gpio_irq_chip *irq_chip;
+	struct rda_gpio *rda_gpio;
+	u32 ngpios;
+	int ret;
+
+	rda_gpio = devm_kzalloc(&pdev->dev, sizeof(*rda_gpio), GFP_KERNEL);
+	if (!rda_gpio)
+		return -ENOMEM;
+
+	ret = device_property_read_u32(&pdev->dev, "ngpios", &ngpios);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * Not all ports have interrupt capability. For instance, on
+	 * RDA8810PL, GPIOC doesn't support interrupt. So we must handle
+	 * those also.
+	 */
+	rda_gpio->irq = platform_get_irq(pdev, 0);
+
+	rda_gpio->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(rda_gpio->base))
+		return PTR_ERR(rda_gpio->base);
+
+	spin_lock_init(&rda_gpio->lock);
+
+	rda_gpio->chip.label = dev_name(&pdev->dev);
+	rda_gpio->chip.ngpio = ngpios;
+	rda_gpio->chip.base = -1;
+	rda_gpio->chip.parent = &pdev->dev;
+	rda_gpio->chip.of_node = np;
+	rda_gpio->chip.get = rda_gpio_get;
+	rda_gpio->chip.set = rda_gpio_set;
+	rda_gpio->chip.direction_input = rda_gpio_direction_input;
+	rda_gpio->chip.direction_output = rda_gpio_direction_output;
+
+	if (rda_gpio->irq >= 0) {
+		rda_gpio->irq_chip.name = "rda-gpio",
+		rda_gpio->irq_chip.irq_ack = rda_gpio_irq_ack,
+		rda_gpio->irq_chip.irq_mask = rda_gpio_irq_mask,
+		rda_gpio->irq_chip.irq_unmask = rda_gpio_irq_unmask,
+		rda_gpio->irq_chip.irq_set_type = rda_gpio_irq_set_type,
+		rda_gpio->irq_chip.flags = IRQCHIP_SKIP_SET_WAKE,
+
+		irq_chip = &rda_gpio->chip.irq;
+		irq_chip->chip = &rda_gpio->irq_chip;
+		irq_chip->handler = handle_bad_irq;
+		irq_chip->default_type = IRQ_TYPE_NONE;
+		irq_chip->parent_handler = rda_gpio_irq_handler;
+		irq_chip->parent_handler_data = rda_gpio;
+		irq_chip->num_parents = 1;
+		irq_chip->parents = &rda_gpio->irq;
+	}
+
+	platform_set_drvdata(pdev, rda_gpio);
+
+	return devm_gpiochip_add_data(&pdev->dev, &rda_gpio->chip, rda_gpio);
+}
+
+static const struct of_device_id rda_gpio_of_match[] = {
+	{ .compatible = "rda,8810pl-gpio", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, rda_gpio_of_match);
+
+static struct platform_driver rda_gpio_driver = {
+	.probe = rda_gpio_probe,
+	.driver = {
+		.name = "rda-gpio",
+		.of_match_table	= rda_gpio_of_match,
+	},
+};
+
+module_platform_driver_probe(rda_gpio_driver, rda_gpio_probe);
+
+MODULE_DESCRIPTION("RDA Micro GPIO driver");
+MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
