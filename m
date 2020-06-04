Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC1E1EED06
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhWKbRKMz6AzyPkaVBhq+taKzQiVRRNNq0h4+qnqrVs=; b=YPNPB4u8ZMzPOH
	fC9iAJNBQS6dojK3HWNpmMM15w/FVKmYdrCNoFbXbwuwdl/X6xbOMH9eptesUhRroqQsx2oOsB3oh
	Cd8xiLZGZQORdLMpJu6bwVGv3ER3o7UWX6tPkohuruLk6RzPm9n0qpBfiAXpp3VBFaIj6ovyZHd88
	UkJSIe8BY5DXcGYbXimajeG+EHyljR/4HjBLfvJjryK8zQSdmJrvZ4ANK6z76XLIdLj5QBIOPXI40
	Hzk4/QMOUL6DfXDe8KJdWRyo1V9odtg3qIg2XG7il6ZsT2DMm8Usu/L9h/d3XcSQSCQdRokAmivoX
	SgzwUCbL94+/hmx9e9tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgx9h-0007i9-N5; Thu, 04 Jun 2020 21:12:05 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgx91-0007DX-I1
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:11:26 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id BEC7522FA7;
 Thu,  4 Jun 2020 23:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591305078;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9H3kNuDNJEy7u+ySI6itt45TB2vQdR1F3GXWAOiUKmo=;
 b=Kqel18xtVxifXbiPa3mxps8cOch9UksYjaKGeX3NOnyK7H8eXcLpoc5s/lm2Swsxbks3t8
 KFxgwQKujo7LxcDX9SFKbhEYUT7ozcJu76rC+Ehbgbw19PhFX+Ol7pzdiSicCYyou5Awp9
 fKzIKXUaxQe2Nf/C/NIYVofJzFDXJ34=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 03/11] irqchip: add sl28cpld interrupt controller support
Date: Thu,  4 Jun 2020 23:10:31 +0200
Message-Id: <20200604211039.12689-4-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604211039.12689-1-michael@walle.cc>
References: <20200604211039.12689-1-michael@walle.cc>
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141123_917130_3D1F944C 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the interrupt controller inside the sl28 CPLD management
controller.

The interrupt controller can handle at most 8 interrupts and is really
simplistic and consists only of an interrupt mask and an interrupt
pending register.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/irqchip/Kconfig        |   3 +
 drivers/irqchip/Makefile       |   1 +
 drivers/irqchip/irq-sl28cpld.c | 102 +++++++++++++++++++++++++++++++++
 drivers/mfd/Kconfig            |   2 +
 4 files changed, 108 insertions(+)
 create mode 100644 drivers/irqchip/irq-sl28cpld.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 3e473f4eb175..c4b840bc982e 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -246,6 +246,9 @@ config RENESAS_RZA1_IRQC
 	  Enable support for the Renesas RZ/A1 Interrupt Controller, to use up
 	  to 8 external interrupts with configurable sense select.
 
+config SL28CPLD_INTC
+	bool
+
 config ST_IRQCHIP
 	bool
 	select REGMAP
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 3a4ce283189a..bcd9797a5aed 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -110,3 +110,4 @@ obj-$(CONFIG_LOONGSON_HTPIC)		+= irq-loongson-htpic.o
 obj-$(CONFIG_LOONGSON_HTVEC)		+= irq-loongson-htvec.o
 obj-$(CONFIG_LOONGSON_PCH_PIC)		+= irq-loongson-pch-pic.o
 obj-$(CONFIG_LOONGSON_PCH_MSI)		+= irq-loongson-pch-msi.o
+obj-$(CONFIG_SL28CPLD_INTC)		+= irq-sl28cpld.o
diff --git a/drivers/irqchip/irq-sl28cpld.c b/drivers/irqchip/irq-sl28cpld.c
new file mode 100644
index 000000000000..2151f1b390d7
--- /dev/null
+++ b/drivers/irqchip/irq-sl28cpld.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sl28cpld interrupt controller driver.
+ *
+ * Copyright 2019 Kontron Europe GmbH
+ */
+
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+
+#define INTC_IE 0x00
+#define INTC_IP 0x01
+
+static const struct regmap_irq sl28cpld_irqs[] = {
+	REGMAP_IRQ_REG_LINE(0, 8),
+	REGMAP_IRQ_REG_LINE(1, 8),
+	REGMAP_IRQ_REG_LINE(2, 8),
+	REGMAP_IRQ_REG_LINE(3, 8),
+	REGMAP_IRQ_REG_LINE(4, 8),
+	REGMAP_IRQ_REG_LINE(5, 8),
+	REGMAP_IRQ_REG_LINE(6, 8),
+	REGMAP_IRQ_REG_LINE(7, 8),
+};
+
+struct sl28cpld_intc {
+	struct regmap *regmap;
+	struct regmap_irq_chip chip;
+	struct regmap_irq_chip_data *irq_data;
+};
+
+static int sl28cpld_intc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct sl28cpld_intc *irqchip;
+	unsigned int irq;
+	u32 base;
+	int ret;
+
+	if (!dev->parent)
+		return -ENODEV;
+
+	irqchip = devm_kzalloc(dev, sizeof(*irqchip), GFP_KERNEL);
+	if (!irqchip)
+		return -ENOMEM;
+
+	irqchip->regmap = dev_get_regmap(dev->parent, NULL);
+	if (!irqchip->regmap)
+		return -ENODEV;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+
+	ret = device_property_read_u32(&pdev->dev, "reg", &base);
+	if (ret)
+		return -EINVAL;
+
+	irqchip->chip.name = "sl28cpld-intc";
+	irqchip->chip.irqs = sl28cpld_irqs;
+	irqchip->chip.num_irqs = ARRAY_SIZE(sl28cpld_irqs);
+	irqchip->chip.num_regs = 1;
+	irqchip->chip.status_base = base + INTC_IP;
+	irqchip->chip.mask_base = base + INTC_IE;
+	irqchip->chip.mask_invert = true,
+	irqchip->chip.ack_base = base + INTC_IP;
+
+	return devm_regmap_add_irq_chip_np(&pdev->dev, dev->of_node,
+					   irqchip->regmap, irq,
+					   IRQF_SHARED | IRQF_ONESHOT, 0,
+					   &irqchip->chip, &irqchip->irq_data);
+}
+
+static const struct of_device_id sl28cpld_intc_of_match[] = {
+	{ .compatible = "kontron,sl28cpld-intc" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sl28cpld_intc_of_match);
+
+static const struct platform_device_id sl28cpld_intc_id_table[] = {
+	{ "sl28cpld-intc" },
+	{}
+};
+MODULE_DEVICE_TABLE(platform, sl28cpld_intc_id_table);
+
+static struct platform_driver sl28cpld_intc_driver = {
+	.probe	= sl28cpld_intc_probe,
+	.id_table = sl28cpld_intc_id_table,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = sl28cpld_intc_of_match,
+	}
+};
+module_platform_driver(sl28cpld_intc_driver);
+
+MODULE_DESCRIPTION("sl28cpld Interrupt Controller Driver");
+MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 5c0cd514d197..9c84c5746698 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2114,6 +2114,8 @@ config MFD_SL28CPLD
 	depends on I2C=y
 	depends on OF
 	select REGMAP_I2C
+	select REGMAP_IRQ
+	select SL28CPLD_INTC
 	select MFD_CORE
 	help
 	  This option enables support for the board management controller
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
