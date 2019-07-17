Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620AD6C2A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NGFuLsX2KSOjU8R4sB4GKGEAHYyy55OgZADaNL2Z6Zc=; b=jNNVoZxeX92Hhb
	lUCYlUVxFUodpid9c+xqljEra6K6P7oj7zupj4fXnWQY8jDj8h08dT29VXjRJ7zlAxV6+3xrOEz71
	Nl43SoleGbdLMVk+6ud5TCts9RVzjZq+LGHEpTnRlBqs2MTxLr2db/SRd08X991UXLpaHQ7Y3XgJ4
	PK7P2S7SWdqXOgEPP7InR1fC2jIoEfKy2H5Blrpq/RCXljZtXXgYJLa+9yrTfUlLP9II55wW92sdN
	XG/cSznY/LAU0U8e8I9BdfP78U2fZY02eHaPv8uQt2xIJ+Ix1mFXwN7Gs0fE3gxLjwle705XPlKqh
	3gVUOlHyyI3X1Y9mAG+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrVi-0007ee-Ke; Wed, 17 Jul 2019 21:30:50 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrVS-0007da-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 21:30:37 +0000
X-AuditID: ac10606f-d11ff70000003324-b4-5d2f9379d0c6
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 71.36.13092.9739F2D5; Wed, 17 Jul 2019 17:30:33 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 17 Jul 2019 17:30:32 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley
 <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>
Subject: [PATCH 2/3 v4] ARM: dts: aspeed: Add SGPIO driver
Date: Wed, 17 Jul 2019 17:30:20 -0400
Message-ID: <1563399020-16905-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGLMWRmVeSWpSXmKPExsWyRiBhgm7lZP1Yg0PndSx2Xeaw+DL3FIvF
 7/N/mS2m/FnOZLHp8TVWi+bV55gtNs//w2hxedccNgcOj6vtu9g93t9oZfe4+PEYs8eda3vY
 PDYvqfc4P2Mho8fnTXIB7FFcNimpOZllqUX6dglcGWf/zWArOFJQcfrRR5YGxpfRXYycHBIC
 JhK/vjawdTFycQgJ7GKS2P6olx3COcwo8fPUd2aQKjYBNYm9m+cwgSREBBYxSnz9PROsillg
 PaNE1/LlbCBVwgJWEi+WnwazWQRUJQ7tu8UIYvMKOEisXd3KArFPTuLmuU5miLigxMmZT8Di
 zAISEgdfvACLCwnIStw69JgJol5B4nnfY5YJjHyzkLTMQtKygJFpFaNQYklObmJmTnq5kV5i
 bqZecn7uJkZI2ObvYPz40fwQIxMH4yFGCQ5mJRFe26/asUK8KYmVValF+fFFpTmpxYcYpTlY
 lMR5V635FiMkkJ5YkpqdmlqQWgSTZeLglGpgVH+cemrfpAjhWxs+Cp+c+c54TdyxDNZu8aOG
 BW98fz7rnM5o//90n9m8tOn3wtOzNOoPHFXhf2bxP+5zx5lpLPcO717I2xvqUL1E52HA9/CI
 R96iqZ0nZ6ZNk+j8viK1d4Fk0jYuDsvXNdfmx56T1r752O+A7kuvW4wtpzx+pYc3Kusmu+ow
 KLEUZyQaajEXFScCALWIrBxJAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_143035_157269_F351C750 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SGPIO driver support for Aspeed AST2500 SoC.

Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
---
 drivers/gpio/sgpio-aspeed.c | 518 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 518 insertions(+)
 create mode 100644 drivers/gpio/sgpio-aspeed.c

diff --git a/drivers/gpio/sgpio-aspeed.c b/drivers/gpio/sgpio-aspeed.c
new file mode 100644
index 0000000..715052c
--- /dev/null
+++ b/drivers/gpio/sgpio-aspeed.c
@@ -0,0 +1,518 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019 American Megatrends International LLC.
+ *
+ * Author: Karthikeyan Mani <karthikeyanm@amiindia.co.in>
+ */
+
+#include <linux/gpio/driver.h>
+#include <linux/gpio/aspeed.h>
+#include <linux/hashtable.h>
+#include <linux/bitfield.h>
+#include <linux/init.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+#include <linux/string.h>
+#include <linux/gpio.h>
+
+#define MAX_NR_SGPIO			80
+
+#define ASPEED_SGPIO_CTRL		0x54
+
+#define ASPEED_SGPIO_PINS_MASK		GENMASK(9, 6)
+#define ASPEED_SGPIO_CLK_DIV_MASK	GENMASK(31, 16)
+#define ASPEED_SGPIO_ENABLE		BIT(0)
+
+struct aspeed_sgpio {
+	struct gpio_chip chip;
+	struct clk *pclk;
+	spinlock_t lock;
+	void __iomem *base;
+	uint32_t dir_in[3];
+	int irq;
+};
+
+struct aspeed_sgpio_bank {
+	uint16_t    val_regs;
+	uint16_t    rdata_reg;
+	uint16_t    irq_regs;
+	const char  names[4][3];
+};
+
+/*
+ * Note: The "value" register returns the input value when the GPIO is
+ *	 configured as an input.
+ *
+ *	 The "rdata" register returns the output value when the GPIO is
+ *	 configured as an output.
+ */
+static const struct aspeed_sgpio_bank aspeed_sgpio_banks[] = {
+	{
+		.val_regs = 0x0000,
+		.rdata_reg = 0x0070,
+		.irq_regs = 0x0004,
+		.names = { "A", "B", "C", "D" },
+	},
+	{
+		.val_regs = 0x001C,
+		.rdata_reg = 0x0074,
+		.irq_regs = 0x0020,
+		.names = { "E", "F", "G", "H" },
+	},
+	{
+		.val_regs = 0x0038,
+		.rdata_reg = 0x0078,
+		.irq_regs = 0x003C,
+		.names = { "I", "J" },
+	},
+};
+
+enum aspeed_sgpio_reg {
+	reg_val,
+	reg_rdata,
+	reg_irq_enable,
+	reg_irq_type0,
+	reg_irq_type1,
+	reg_irq_type2,
+	reg_irq_status,
+};
+
+#define GPIO_VAL_VALUE      0x00
+#define GPIO_IRQ_ENABLE     0x00
+#define GPIO_IRQ_TYPE0      0x04
+#define GPIO_IRQ_TYPE1      0x08
+#define GPIO_IRQ_TYPE2      0x0C
+#define GPIO_IRQ_STATUS     0x10
+
+/* This will be resolved at compile time */
+static inline void __iomem *bank_reg(struct aspeed_sgpio *gpio,
+				     const struct aspeed_sgpio_bank *bank,
+				     const enum aspeed_sgpio_reg reg)
+{
+	switch (reg) {
+	case reg_val:
+		return gpio->base + bank->val_regs + GPIO_VAL_VALUE;
+	case reg_rdata:
+		return gpio->base + bank->rdata_reg;
+	case reg_irq_enable:
+		return gpio->base + bank->irq_regs + GPIO_IRQ_ENABLE;
+	case reg_irq_type0:
+		return gpio->base + bank->irq_regs + GPIO_IRQ_TYPE0;
+	case reg_irq_type1:
+		return gpio->base + bank->irq_regs + GPIO_IRQ_TYPE1;
+	case reg_irq_type2:
+		return gpio->base + bank->irq_regs + GPIO_IRQ_TYPE2;
+	case reg_irq_status:
+		return gpio->base + bank->irq_regs + GPIO_IRQ_STATUS;
+	default:
+		/* acturally if code runs to here, it's an error case */
+		BUG_ON(1);
+	}
+}
+
+#define GPIO_BANK(x)    ((x) >> 5)
+#define GPIO_OFFSET(x)  ((x) & 0x1f)
+#define GPIO_BIT(x)     BIT(GPIO_OFFSET(x))
+
+static const struct aspeed_sgpio_bank *to_bank(unsigned int offset)
+{
+	unsigned int bank = GPIO_BANK(offset);
+
+	WARN_ON(bank >= ARRAY_SIZE(aspeed_sgpio_banks));
+	return &aspeed_sgpio_banks[bank];
+}
+
+static int aspeed_sgpio_get(struct gpio_chip *gc, unsigned int offset)
+{
+	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
+	const struct aspeed_sgpio_bank *bank = to_bank(offset);
+	unsigned long flags;
+	enum aspeed_sgpio_reg reg;
+	bool is_input;
+	int rc = 0;
+
+	spin_lock_irqsave(&gpio->lock, flags);
+
+	is_input = gpio->dir_in[GPIO_BANK(offset)] & GPIO_BIT(offset);
+	reg = is_input ? reg_val : reg_rdata;
+	rc = !!(ioread32(bank_reg(gpio, bank, reg)) & GPIO_BIT(offset));
+
+	spin_unlock_irqrestore(&gpio->lock, flags);
+
+	return rc;
+}
+
+static void aspeed_sgpio_set(struct gpio_chip *gc, unsigned int offset, int val)
+{
+	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
+	const struct aspeed_sgpio_bank *bank = to_bank(offset);
+	unsigned long flags;
+	void __iomem *addr;
+	u32 reg = 0;
+
+	spin_lock_irqsave(&gpio->lock, flags);
+
+	addr = bank_reg(gpio, bank, reg_val);
+
+	if (val)
+		reg |= GPIO_BIT(offset);
+	else
+		reg &= ~GPIO_BIT(offset);
+
+	iowrite32(reg, addr);
+
+	spin_unlock_irqrestore(&gpio->lock, flags);
+}
+
+static int aspeed_sgpio_dir_in(struct gpio_chip *gc, unsigned int offset)
+{
+	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
+	unsigned long flags;
+
+	spin_lock_irqsave(&gpio->lock, flags);
+	gpio->dir_in[GPIO_BANK(offset)] |= GPIO_BIT(offset);
+	spin_unlock_irqrestore(&gpio->lock, flags);
+
+	return 0;
+}
+
+static int aspeed_sgpio_dir_out(struct gpio_chip *gc, unsigned int offset, int val)
+{
+	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
+	unsigned long flags;
+
+	spin_lock_irqsave(&gpio->lock, flags);
+	gpio->dir_in[GPIO_BANK(offset)] &= ~GPIO_BIT(offset);
+	spin_unlock_irqrestore(&gpio->lock, flags);
+
+	return 0;
+}
+
+static int aspeed_sgpio_get_direction(struct gpio_chip *gc, unsigned int offset)
+{
+	int dir_status;
+	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
+	unsigned long flags;
+
+	spin_lock_irqsave(&gpio->lock, flags);
+	dir_status = gpio->dir_in[GPIO_BANK(offset)] & GPIO_BIT(offset);
+	spin_unlock_irqrestore(&gpio->lock, flags);
+
+	return dir_status;
+
+}
+
+static inline void irqd_to_aspeed_sgpio_data(struct irq_data *d,
+					     struct aspeed_sgpio **gpio,
+					     const struct aspeed_sgpio_bank **bank,
+					     u32 *bit, int *offset)
+{
+	struct aspeed_sgpio *internal;
+
+	*offset = irqd_to_hwirq(d);
+	internal = irq_data_get_irq_chip_data(d);
+	WARN_ON(!internal);
+
+	*gpio = internal;
+	*bank = to_bank(*offset);
+	*bit = GPIO_BIT(*offset);
+}
+
+static void aspeed_sgpio_irq_ack(struct irq_data *d)
+{
+	const struct aspeed_sgpio_bank *bank;
+	struct aspeed_sgpio *gpio;
+	unsigned long flags;
+	void __iomem *status_addr;
+	int offset;
+	u32 bit;
+
+	irqd_to_aspeed_sgpio_data(d, &gpio, &bank, &bit, &offset);
+
+	status_addr = bank_reg(gpio, bank, reg_irq_status);
+
+	spin_lock_irqsave(&gpio->lock, flags);
+
+	iowrite32(bit, status_addr);
+
+	spin_unlock_irqrestore(&gpio->lock, flags);
+}
+
+static void aspeed_sgpio_irq_set_mask(struct irq_data *d, bool set)
+{
+	const struct aspeed_sgpio_bank *bank;
+	struct aspeed_sgpio *gpio;
+	unsigned long flags;
+	u32 reg, bit;
+	void __iomem *addr;
+	int offset;
+
+	irqd_to_aspeed_sgpio_data(d, &gpio, &bank, &bit, &offset);
+	addr = bank_reg(gpio, bank, reg_irq_enable);
+
+	spin_lock_irqsave(&gpio->lock, flags);
+
+	reg = ioread32(addr);
+	if (set)
+		reg |= bit;
+	else
+		reg &= ~bit;
+
+	iowrite32(reg, addr);
+
+	spin_unlock_irqrestore(&gpio->lock, flags);
+}
+
+static void aspeed_sgpio_irq_mask(struct irq_data *d)
+{
+	aspeed_sgpio_irq_set_mask(d, false);
+}
+
+static void aspeed_sgpio_irq_unmask(struct irq_data *d)
+{
+	aspeed_sgpio_irq_set_mask(d, true);
+}
+
+static int aspeed_sgpio_set_type(struct irq_data *d, unsigned int type)
+{
+	u32 type0 = 0;
+	u32 type1 = 0;
+	u32 type2 = 0;
+	u32 bit, reg;
+	const struct aspeed_sgpio_bank *bank;
+	irq_flow_handler_t handler;
+	struct aspeed_sgpio *gpio;
+	unsigned long flags;
+	void __iomem *addr;
+	int offset;
+
+	irqd_to_aspeed_sgpio_data(d, &gpio, &bank, &bit, &offset);
+
+	switch (type & IRQ_TYPE_SENSE_MASK) {
+	case IRQ_TYPE_EDGE_BOTH:
+		type2 |= bit;
+		/* fall through */
+	case IRQ_TYPE_EDGE_RISING:
+		type0 |= bit;
+		/* fall through */
+	case IRQ_TYPE_EDGE_FALLING:
+		handler = handle_edge_irq;
+		break;
+	case IRQ_TYPE_LEVEL_HIGH:
+		type0 |= bit;
+		/* fall through */
+	case IRQ_TYPE_LEVEL_LOW:
+		type1 |= bit;
+		handler = handle_level_irq;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	spin_lock_irqsave(&gpio->lock, flags);
+
+	addr = bank_reg(gpio, bank, reg_irq_type0);
+	reg = ioread32(addr);
+	reg = (reg & ~bit) | type0;
+	iowrite32(reg, addr);
+
+	addr = bank_reg(gpio, bank, reg_irq_type1);
+	reg = ioread32(addr);
+	reg = (reg & ~bit) | type1;
+	iowrite32(reg, addr);
+
+	addr = bank_reg(gpio, bank, reg_irq_type2);
+	reg = ioread32(addr);
+	reg = (reg & ~bit) | type2;
+	iowrite32(reg, addr);
+
+	spin_unlock_irqrestore(&gpio->lock, flags);
+
+	irq_set_handler_locked(d, handler);
+
+	return 0;
+}
+
+static void aspeed_sgpio_irq_handler(struct irq_desc *desc)
+{
+	struct gpio_chip *gc = irq_desc_get_handler_data(desc);
+	struct irq_chip *ic = irq_desc_get_chip(desc);
+	struct aspeed_sgpio *data = gpiochip_get_data(gc);
+	unsigned int i, p, girq;
+	unsigned long reg;
+
+	chained_irq_enter(ic, desc);
+
+	for (i = 0; i < ARRAY_SIZE(aspeed_sgpio_banks); i++) {
+		const struct aspeed_sgpio_bank *bank = &aspeed_sgpio_banks[i];
+
+		reg = ioread32(bank_reg(data, bank, reg_irq_status));
+
+		for_each_set_bit(p, &reg, 32) {
+			girq = irq_find_mapping(gc->irq.domain, i * 32 + p);
+			generic_handle_irq(girq);
+		}
+
+	}
+
+	chained_irq_exit(ic, desc);
+}
+
+static struct irq_chip aspeed_sgpio_irqchip = {
+	.name       = "aspeed-sgpio",
+	.irq_ack    = aspeed_sgpio_irq_ack,
+	.irq_mask   = aspeed_sgpio_irq_mask,
+	.irq_unmask = aspeed_sgpio_irq_unmask,
+	.irq_set_type   = aspeed_sgpio_set_type,
+};
+
+static int aspeed_sgpio_setup_irqs(struct aspeed_sgpio *gpio,
+				   struct platform_device *pdev)
+{
+	int rc, i;
+	const struct aspeed_sgpio_bank *bank;
+
+	rc = platform_get_irq(pdev, 0);
+	if (rc < 0)
+		return rc;
+
+	gpio->irq = rc;
+
+	/* Disable IRQ and clear Interrupt status registers for all SPGIO Pins. */
+	for (i = 0; i < ARRAY_SIZE(aspeed_sgpio_banks); i++) {
+		bank =  &aspeed_sgpio_banks[i];
+		/* disable irq enable bits */
+		iowrite32(0x00000000, bank_reg(gpio, bank, reg_irq_enable));
+		/* clear status bits */
+		iowrite32(0xffffffff, bank_reg(gpio, bank, reg_irq_status));
+	}
+
+	rc = gpiochip_irqchip_add(&gpio->chip, &aspeed_sgpio_irqchip,
+				  0, handle_bad_irq, IRQ_TYPE_NONE);
+	if (rc) {
+		dev_info(&pdev->dev, "Could not add irqchip\n");
+		return rc;
+	}
+
+	gpiochip_set_chained_irqchip(&gpio->chip, &aspeed_sgpio_irqchip,
+				     gpio->irq, aspeed_sgpio_irq_handler);
+
+	/* set IRQ settings and Enable Interrupt */
+	for (i = 0; i < ARRAY_SIZE(aspeed_sgpio_banks); i++) {
+		bank = &aspeed_sgpio_banks[i];
+		/* set falling or level-low irq */
+		iowrite32(0x00000000, bank_reg(gpio, bank, reg_irq_type0));
+		/* trigger type is edge */
+		iowrite32(0x00000000, bank_reg(gpio, bank, reg_irq_type1));
+		/* dual edge trigger mode. */
+		iowrite32(0xffffffff, bank_reg(gpio, bank, reg_irq_type2));
+		/* enable irq */
+		iowrite32(0xffffffff, bank_reg(gpio, bank, reg_irq_enable));
+	}
+
+	return 0;
+}
+
+static const struct of_device_id aspeed_sgpio_of_table[] = {
+	{ .compatible = "aspeed,ast2400-sgpio" },
+	{ .compatible = "aspeed,ast2500-sgpio" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, aspeed_sgpio_of_table);
+
+static int __init aspeed_sgpio_probe(struct platform_device *pdev)
+{
+	struct aspeed_sgpio *gpio;
+	u32 nr_gpios, sgpio_freq, sgpio_clk_div;
+	int rc;
+	unsigned long apb_freq;
+
+	gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
+	if (!gpio)
+		return -ENOMEM;
+
+	gpio->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(gpio->base))
+		return PTR_ERR(gpio->base);
+
+	rc = of_property_read_u32(pdev->dev.of_node, "nr-gpios", &nr_gpios);
+	if ((rc < 0) || (nr_gpios > MAX_NR_SGPIO)) {
+		dev_err(&pdev->dev, "Could not read nr-gpios property\n");
+		return -EINVAL;
+	}
+
+	rc = of_property_read_u32(pdev->dev.of_node, "bus-frequency", &sgpio_freq);
+	if (rc < 0) {
+		dev_err(&pdev->dev, "Could not read bus-frequency property\n");
+		return -EINVAL;
+	}
+
+	gpio->pclk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(gpio->pclk)) {
+		dev_err(&pdev->dev, "devm_clk_get failed\n");
+		return PTR_ERR(gpio->pclk);
+	}
+
+	apb_freq = clk_get_rate(gpio->pclk);
+
+	/*
+	 * From the datasheet,
+	 *	SGPIO period = 1/PCLK * 2 * (GPIO254[31:16] + 1)
+	 *	period = 2 * (GPIO254[31:16] + 1) / PCLK
+	 *	frequency = 1 / (2 * (GPIO254[31:16] + 1) / PCLK)
+	 *	frequency = PCLK / (2 * (GPIO254[31:16] + 1))
+	 *	frequency * 2 * (GPIO254[31:16] + 1) = PCLK
+	 *	GPIO254[31:16] = PCLK / (frequency * 2) - 1
+	 */
+	if (sgpio_freq == 0)
+		return -EINVAL;
+
+	sgpio_clk_div = (apb_freq / (sgpio_freq * 2)) - 1;
+
+	if (sgpio_clk_div > (1 << 16) - 1)
+		return -EINVAL;
+
+	iowrite32(FIELD_PREP(ASPEED_SGPIO_CLK_DIV_MASK, sgpio_clk_div) |
+		  FIELD_PREP(ASPEED_SGPIO_PINS_MASK, (nr_gpios / 8)) |
+		  ASPEED_SGPIO_ENABLE,
+		  gpio->base + ASPEED_SGPIO_CTRL);
+
+	spin_lock_init(&gpio->lock);
+
+	gpio->chip.parent = &pdev->dev;
+	gpio->chip.ngpio = nr_gpios;
+	gpio->chip.direction_input = aspeed_sgpio_dir_in;
+	gpio->chip.direction_output = aspeed_sgpio_dir_out;
+	gpio->chip.get_direction = aspeed_sgpio_get_direction;
+	gpio->chip.request = NULL;
+	gpio->chip.free = NULL;
+	gpio->chip.get = aspeed_sgpio_get;
+	gpio->chip.set = aspeed_sgpio_set;
+	gpio->chip.set_config = NULL;
+	gpio->chip.label = dev_name(&pdev->dev);
+	gpio->chip.base =  ARCH_NR_GPIOS - MAX_NR_SGPIO;
+
+	/* set all SGPIO pins as input. */
+	memset(gpio->dir_in, 0xff, sizeof(gpio->dir_in));
+
+	rc = devm_gpiochip_add_data(&pdev->dev, &gpio->chip, gpio);
+	if (rc < 0)
+		return rc;
+
+	return aspeed_sgpio_setup_irqs(gpio, pdev);
+}
+
+static struct platform_driver aspeed_sgpio_driver = {
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = aspeed_sgpio_of_table,
+	},
+};
+
+module_platform_driver_probe(aspeed_sgpio_driver, aspeed_sgpio_probe);
+MODULE_DESCRIPTION("Aspeed Serial GPIO Driver");
+MODULE_LICENSE("GPL");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
