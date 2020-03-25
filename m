Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215DB191F2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlkGM3qA8AQ2PES3KlHm6uW5anq6SCBeFvpkBmd2j2k=; b=EZA/4yEUOqOJkd
	0Or9mQXCsM/38b2xd8fqim6E/TWhIDzhKUoO6R4m01TWNeCKnT13k1w8w0XJtVo4j5bTchNsb0HUZ
	zVatKDrStl7DSUTijOPn28iLOfzOsBib50V9SDIIKBTKptVoRDEDmT7pphoULZktyKjyQsRsXso+H
	1H0PCQ7NeczrhrYd2ptr+Mm8YskmliH4RgNBPzv7yhr0ZHO1VUT8a79wsc1YBTTUFfKoNpTzTExgy
	hMXmjr1xUa0kcCNAlOxRucvX81dk14hiGv27n01W9WpbPWtOWaMprhiCmAErDgvH5PjAyH1KM6m1A
	TAOhAPUARNTIoIy+qGUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvrX-00042r-De; Wed, 25 Mar 2020 02:33:47 +0000
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvr6-0003wL-57; Wed, 25 Mar 2020 02:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585103431; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=KS7DviC6uXqOtX8AfqQR0mH/vatPhcGamkwIX/ZOMkg=;
 b=MU3FYjrnq45ynb0Zc2UdaGhxWxjBDG6sY/dasnSIaMi7qjuH8dvPhHut89bTaNiZ
 UL4FddiDJ8GB8lok4VUk/Q2VAZpdI1cWy9bIq9PfzgKqClidmWq7b+sNGghE9gIlWDn
 /6osn5j+Q/0aHMgQvVD8kREGqCBg0pOcsMhGBl4I=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1585103429415389.6646407332655;
 Wed, 25 Mar 2020 10:30:29 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200325022916.106641-2-jiaxun.yang@flygoat.com>
Subject: [PATCH v7 01/12] irqchip: Add driver for Loongson I/O Local Interrupt
 Controller
Date: Wed, 25 Mar 2020 10:28:17 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
References: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193320_676949_DEF9F8A8 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org,
 "H. Nikolaus Schaller" <hns@goldelico.com>, John Crispin <john@phrozen.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 linux-ide@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Andi Kleen <ak@linux.intel.com>, Paul Burton <paulburton@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <maz@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yinglu Yang <yangyinglu@loongson.cn>,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Manuel Lauss <manuel.lauss@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This controller appeared on Loongson family of chips as the primary
package interrupt source.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Co-developed-by: Huacai Chen <chenhc@lemote.com>
Signed-off-by: Huacai Chen <chenhc@lemote.com>
Reviewed-by: Marc Zyngier <maz@kernel.org>
---
v4-v5:
	Resolve suggestions from maz:
		- Remove DT validation
		- Simplify unnucessary functions & variables
---
 drivers/irqchip/Kconfig                |   9 +
 drivers/irqchip/Makefile               |   1 +
 drivers/irqchip/irq-loongson-liointc.c | 261 +++++++++++++++++++++++++
 3 files changed, 271 insertions(+)
 create mode 100644 drivers/irqchip/irq-loongson-liointc.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 6d397732138d..c609eaa319d2 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -513,4 +513,13 @@ config EXYNOS_IRQ_COMBINER
 	  Say yes here to add support for the IRQ combiner devices embedded
 	  in Samsung Exynos chips.
 
+config LOONGSON_LIOINTC
+	bool "Loongson Local I/O Interrupt Controller"
+	depends on MACH_LOONGSON64
+	default y
+	select IRQ_DOMAIN
+	select GENERIC_IRQ_CHIP
+	help
+	  Support for the Loongson Local I/O Interrupt Controller.
+
 endmenu
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index eae0d78cbf22..5e7678efdfe6 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -105,3 +105,4 @@ obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
 obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
 obj-$(CONFIG_TI_SCI_INTA_IRQCHIP)	+= irq-ti-sci-inta.o
+obj-$(CONFIG_LOONGSON_LIOINTC)		+= irq-loongson-liointc.o
diff --git a/drivers/irqchip/irq-loongson-liointc.c b/drivers/irqchip/irq-loongson-liointc.c
new file mode 100644
index 000000000000..18de2c09ece4
--- /dev/null
+++ b/drivers/irqchip/irq-loongson-liointc.c
@@ -0,0 +1,261 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  Copyright (C) 2020, Jiaxun Yang <jiaxun.yang@flygoat.com>
+ *  Loongson Local IO Interrupt Controller support
+ */
+
+#include <linux/errno.h>
+#include <linux/init.h>
+#include <linux/types.h>
+#include <linux/interrupt.h>
+#include <linux/ioport.h>
+#include <linux/irqchip.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/io.h>
+#include <linux/smp.h>
+#include <linux/irqchip/chained_irq.h>
+
+#include <boot_param.h>
+
+#define LIOINTC_CHIP_IRQ	32
+#define LIOINTC_NUM_PARENT 4
+
+#define LIOINTC_INTC_CHIP_START	0x20
+
+#define LIOINTC_REG_INTC_STATUS	(LIOINTC_INTC_CHIP_START + 0x20)
+#define LIOINTC_REG_INTC_EN_STATUS	(LIOINTC_INTC_CHIP_START + 0x04)
+#define LIOINTC_REG_INTC_ENABLE	(LIOINTC_INTC_CHIP_START + 0x08)
+#define LIOINTC_REG_INTC_DISABLE	(LIOINTC_INTC_CHIP_START + 0x0c)
+#define LIOINTC_REG_INTC_POL	(LIOINTC_INTC_CHIP_START + 0x10)
+#define LIOINTC_REG_INTC_EDGE	(LIOINTC_INTC_CHIP_START + 0x14)
+
+#define LIOINTC_SHIFT_INTx	4
+
+struct liointc_handler_data {
+	struct liointc_priv	*priv;
+	u32			parent_int_map;
+};
+
+struct liointc_priv {
+	struct irq_chip_generic		*gc;
+	struct liointc_handler_data	handler[LIOINTC_NUM_PARENT];
+	u8				map_cache[LIOINTC_CHIP_IRQ];
+};
+
+static void liointc_chained_handle_irq(struct irq_desc *desc)
+{
+	struct liointc_handler_data *handler = irq_desc_get_handler_data(desc);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct irq_chip_generic *gc = handler->priv->gc;
+	u32 pending;
+
+	chained_irq_enter(chip, desc);
+
+	pending = readl(gc->reg_base + LIOINTC_REG_INTC_STATUS);
+
+	if (!pending)
+		spurious_interrupt();
+
+	while (pending) {
+		int bit = __ffs(pending);
+
+		generic_handle_irq(irq_find_mapping(gc->domain, bit));
+		pending &= ~BIT(bit);
+	}
+
+	chained_irq_exit(chip, desc);
+}
+
+static void liointc_set_bit(struct irq_chip_generic *gc,
+				unsigned int offset,
+				u32 mask, bool set)
+{
+	if (set)
+		writel(readl(gc->reg_base + offset) | mask,
+				gc->reg_base + offset);
+	else
+		writel(readl(gc->reg_base + offset) & ~mask,
+				gc->reg_base + offset);
+}
+
+static int liointc_set_type(struct irq_data *data, unsigned int type)
+{
+	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(data);
+	u32 mask = data->mask;
+	unsigned long flags;
+
+	irq_gc_lock_irqsave(gc, flags);
+	switch (type) {
+	case IRQ_TYPE_LEVEL_HIGH:
+		liointc_set_bit(gc, LIOINTC_REG_INTC_EDGE, mask, false);
+		liointc_set_bit(gc, LIOINTC_REG_INTC_POL, mask, true);
+		break;
+	case IRQ_TYPE_LEVEL_LOW:
+		liointc_set_bit(gc, LIOINTC_REG_INTC_EDGE, mask, false);
+		liointc_set_bit(gc, LIOINTC_REG_INTC_POL, mask, false);
+		break;
+	case IRQ_TYPE_EDGE_RISING:
+		liointc_set_bit(gc, LIOINTC_REG_INTC_EDGE, mask, true);
+		liointc_set_bit(gc, LIOINTC_REG_INTC_POL, mask, true);
+		break;
+	case IRQ_TYPE_EDGE_FALLING:
+		liointc_set_bit(gc, LIOINTC_REG_INTC_EDGE, mask, true);
+		liointc_set_bit(gc, LIOINTC_REG_INTC_POL, mask, false);
+		break;
+	default:
+		return -EINVAL;
+	}
+	irq_gc_unlock_irqrestore(gc, flags);
+
+	irqd_set_trigger_type(data, type);
+	return 0;
+}
+
+static void liointc_resume(struct irq_chip_generic *gc)
+{
+	struct liointc_priv *priv = gc->private;
+	unsigned long flags;
+	int i;
+
+	irq_gc_lock_irqsave(gc, flags);
+	/* Disable all at first */
+	writel(0xffffffff, gc->reg_base + LIOINTC_REG_INTC_DISABLE);
+	/* Revert map cache */
+	for (i = 0; i < LIOINTC_CHIP_IRQ; i++)
+		writeb(priv->map_cache[i], gc->reg_base + i);
+	/* Revert mask cache */
+	writel(~gc->mask_cache, gc->reg_base + LIOINTC_REG_INTC_ENABLE);
+	irq_gc_unlock_irqrestore(gc, flags);
+}
+
+static const char * const parent_names[] = {"int0", "int1", "int2", "int3"};
+
+int __init liointc_of_init(struct device_node *node,
+				struct device_node *parent)
+{
+	struct irq_chip_generic *gc;
+	struct irq_domain *domain;
+	struct irq_chip_type *ct;
+	struct liointc_priv *priv;
+	void __iomem *base;
+	u32 of_parent_int_map[LIOINTC_NUM_PARENT];
+	int parent_irq[LIOINTC_NUM_PARENT];
+	bool have_parent = FALSE;
+	int sz, i, err = 0;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	base = of_iomap(node, 0);
+	if (!base) {
+		err = -ENODEV;
+		goto out_free_priv;
+	}
+
+	for (i = 0; i < LIOINTC_NUM_PARENT; i++) {
+		parent_irq[i] = of_irq_get_byname(node, parent_names[i]);
+		if (parent_irq[i] > 0)
+			have_parent = TRUE;
+	}
+	if (!have_parent) {
+		err = -ENODEV;
+		goto out_iounmap;
+	}
+
+	sz = of_property_read_variable_u32_array(node,
+						"loongson,parent_int_map",
+						&of_parent_int_map[0],
+						LIOINTC_NUM_PARENT,
+						LIOINTC_NUM_PARENT);
+	if (sz < 4) {
+		pr_err("loongson-liointc: No parent_int_map\n");
+		err = -ENODEV;
+		goto out_iounmap;
+	}
+
+	for (i = 0; i < LIOINTC_NUM_PARENT; i++)
+		priv->handler[i].parent_int_map = of_parent_int_map[i];
+
+	/* Setup IRQ domain */
+	domain = irq_domain_add_linear(node, 32,
+					&irq_generic_chip_ops, priv);
+	if (!domain) {
+		pr_err("loongson-liointc: cannot add IRQ domain\n");
+		err = -EINVAL;
+		goto out_iounmap;
+	}
+
+	err = irq_alloc_domain_generic_chips(domain, 32, 1,
+					node->full_name, handle_level_irq,
+					IRQ_NOPROBE, 0, 0);
+	if (err) {
+		pr_err("loongson-liointc: unable to register IRQ domain\n");
+		goto out_free_domain;
+	}
+
+
+	/* Disable all IRQs */
+	writel(0xffffffff, base + LIOINTC_REG_INTC_DISABLE);
+	/* Set to level triggered */
+	writel(0x0, base + LIOINTC_REG_INTC_EDGE);
+
+	/* Generate parent INT part of map cache */
+	for (i = 0; i < LIOINTC_NUM_PARENT; i++) {
+		u32 pending = priv->handler[i].parent_int_map;
+
+		while (pending) {
+			int bit = __ffs(pending);
+
+			priv->map_cache[bit] = BIT(i) << LIOINTC_SHIFT_INTx;
+			pending &= ~BIT(bit);
+		}
+	}
+
+	for (i = 0; i < LIOINTC_CHIP_IRQ; i++) {
+		/* Generate core part of map cache */
+		priv->map_cache[i] |= BIT(loongson_sysconf.boot_cpu_id);
+		writeb(priv->map_cache[i], base + i);
+	}
+
+	gc = irq_get_domain_generic_chip(domain, 0);
+	gc->private = priv;
+	gc->reg_base = base;
+	gc->domain = domain;
+	gc->resume = liointc_resume;
+
+	ct = gc->chip_types;
+	ct->regs.enable = LIOINTC_REG_INTC_ENABLE;
+	ct->regs.disable = LIOINTC_REG_INTC_DISABLE;
+	ct->chip.irq_unmask = irq_gc_unmask_enable_reg;
+	ct->chip.irq_mask = irq_gc_mask_disable_reg;
+	ct->chip.irq_mask_ack = irq_gc_mask_disable_reg;
+	ct->chip.irq_set_type = liointc_set_type;
+
+	gc->mask_cache = 0xffffffff;
+	priv->gc = gc;
+
+	for (i = 0; i < LIOINTC_NUM_PARENT; i++) {
+		if (parent_irq[i] <= 0)
+			continue;
+
+		priv->handler[i].priv = priv;
+		irq_set_chained_handler_and_data(parent_irq[i],
+				liointc_chained_handle_irq, &priv->handler[i]);
+	}
+
+	return 0;
+
+out_free_domain:
+	irq_domain_remove(domain);
+out_iounmap:
+	iounmap(base);
+out_free_priv:
+	kfree(priv);
+
+	return err;
+}
+
+IRQCHIP_DECLARE(loongson_liointc_1_0, "loongson,liointc-1.0", liointc_of_init);
+IRQCHIP_DECLARE(loongson_liointc_1_0a, "loongson,liointc-1.0a", liointc_of_init);
-- 
2.26.0.rc2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
