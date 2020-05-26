Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7BA1B62A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fPFuwJMOrziM5jVWJ+Rt/ctgbQLUDCC+2dBRF2hSwc=; b=ds3wQHChQZ3ryl
	0dnCBtstzUANCAXFreJuZ/7UXuQVDFGJ5+MPbigqUhXlRwVVezyR+vt5pfh9lY+gyXwwtEPS5M1xu
	LezVCdVYnX1OteWGpAsOOMjJt29xgURkhLIQFg9ydOOeXqjPZs8vjq9Fnp1/P+B98oYynDG/LQmvh
	ucGeeg43QLUGsZDI8pz6KJIyf8bhycnK8JebaCC6QDMBUkIkITnKKJSPCRjs0YRhSY2ajHZZHMs6i
	u9Dmr4/qgvfz0ejgNHCbOIBKY66lcKAw05+mazVwfFu9Xo00V0so1eupV5TS8FR3uOV//B0CxPXKy
	hkrLVWAt5KCaIAGLoF8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfyo-0004W4-RN; Thu, 23 Apr 2020 17:49:42 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfvq-00021Y-MC
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 17:46:42 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3371F23D1F;
 Thu, 23 Apr 2020 19:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1587663996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=67YFRrH1dcBXXbZY8+wNvjGVnzxSqdv1vmux6At/D5Q=;
 b=huJfjqW+UCUUWi2KJI01vAbHGKPYw2INaOTBd1m2J2A3OVi67UfJjP5XdLp29JSFAd9jT3
 rYETnkuAtA8beioR+v5D3bq5Lb8puiwzZnstmwwQUSetTHg1uUwm2edGGmFfrXhgxMY+i/
 UoeNboKrPFpkp+b/CUVyDa7muwYHNf0=
From: Michael Walle <michael@walle.cc>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 11/16] gpio: add support for the sl28cpld GPIO controller
Date: Thu, 23 Apr 2020 19:45:38 +0200
Message-Id: <20200423174543.17161-12-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423174543.17161-1-michael@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 3371F23D1F
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[1.006];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[25];
 MID_CONTAINS_FROM(1.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_104639_123167_3285C0C0 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This adds support for the GPIO controller of the sl28 board management
controller. This driver is part of a multi-function device.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/gpio/Kconfig         |  11 +++
 drivers/gpio/Makefile        |   1 +
 drivers/gpio/gpio-sl28cpld.c | 184 +++++++++++++++++++++++++++++++++++
 3 files changed, 196 insertions(+)
 create mode 100644 drivers/gpio/gpio-sl28cpld.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index ae3a49a2e970..95e2f223b34e 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -1215,6 +1215,17 @@ config GPIO_RC5T583
 	  This driver provides the support for driving/reading the gpio pins
 	  of RC5T583 device through standard gpio library.
 
+config GPIO_SL28CPLD
+	tristate "Kontron sl28 GPIO"
+	depends on MFD_SL28CPLD
+	select GPIO_REGMAP
+	select GPIOLIB_IRQCHIP
+	help
+	  This enables support for the GPIOs found on the Kontron sl28 CPLD.
+
+	  This driver can also be built as a module. If so, the module will be
+	  called gpio-sl28cpld.
+
 config GPIO_STMPE
 	bool "STMPE GPIOs"
 	depends on MFD_STMPE
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 93e139fdfa57..f50ccf13f5eb 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -129,6 +129,7 @@ obj-$(CONFIG_GPIO_SCH311X)		+= gpio-sch311x.o
 obj-$(CONFIG_GPIO_SCH)			+= gpio-sch.o
 obj-$(CONFIG_GPIO_SIFIVE)		+= gpio-sifive.o
 obj-$(CONFIG_GPIO_SIOX)			+= gpio-siox.o
+obj-$(CONFIG_GPIO_SL28CPLD)		+= gpio-sl28cpld.o
 obj-$(CONFIG_GPIO_SODAVILLE)		+= gpio-sodaville.o
 obj-$(CONFIG_GPIO_SPEAR_SPICS)		+= gpio-spear-spics.o
 obj-$(CONFIG_GPIO_SPRD)			+= gpio-sprd.o
diff --git a/drivers/gpio/gpio-sl28cpld.c b/drivers/gpio/gpio-sl28cpld.c
new file mode 100644
index 000000000000..98033d40e9d9
--- /dev/null
+++ b/drivers/gpio/gpio-sl28cpld.c
@@ -0,0 +1,184 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sl28cpld GPIO driver.
+ *
+ * Copyright 2019 Michael Walle <michael@walle.cc>
+ */
+
+#include <linux/device.h>
+#include <linux/gpio-regmap.h>
+#include <linux/gpio/driver.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+/* GPIO flavor */
+#define GPIO_REG_DIR	0x00
+#define GPIO_REG_OUT	0x01
+#define GPIO_REG_IN	0x02
+#define GPIO_REG_IE	0x03
+#define GPIO_REG_IP	0x04
+
+/* input-only flavor */
+#define GPI_REG_IN	0x00
+
+/* output-only flavor */
+#define GPO_REG_OUT	0x00
+
+enum sl28cpld_gpio_type {
+	SL28CPLD_GPIO = 1,
+	SL28CPLD_GPI,
+	SL28CPLD_GPO,
+};
+
+struct sl28cpld_gpio {
+	struct regmap_irq_chip irq_chip;
+	struct regmap_irq_chip_data *irq_data;
+};
+
+static const struct regmap_irq sl28cpld_gpio_irqs[] = {
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
+static int sl28cpld_gpio_irq_init(struct device *dev,
+				  struct sl28cpld_gpio *gpio,
+				  struct regmap *regmap, unsigned int base,
+				  int irq)
+{
+	struct regmap_irq_chip *irq_chip = &gpio->irq_chip;
+
+	irq_chip->name = "sl28cpld-gpio-irq",
+	irq_chip->irqs = sl28cpld_gpio_irqs;
+	irq_chip->num_irqs = ARRAY_SIZE(sl28cpld_gpio_irqs);
+	irq_chip->num_regs = 1;
+	irq_chip->status_base = base + GPIO_REG_IP;
+	irq_chip->mask_base = base + GPIO_REG_IE;
+	irq_chip->mask_invert = true,
+	irq_chip->ack_base = base + GPIO_REG_IP;
+
+	return devm_regmap_add_irq_chip_np(dev, dev_of_node(dev), regmap,
+					   irq, IRQF_SHARED | IRQF_ONESHOT, 0,
+					   irq_chip, &gpio->irq_data);
+}
+
+static int sl28cpld_gpio_probe(struct platform_device *pdev)
+{
+	const struct platform_device_id *dev_id;
+	enum sl28cpld_gpio_type type;
+	struct sl28cpld_gpio *gpio;
+	struct gpio_regmap_config config = {0};
+	struct regmap *regmap;
+	struct resource *res;
+	bool irq_support = false;
+	unsigned int base;
+	int ret;
+	int irq;
+
+	if (!pdev->dev.parent)
+		return -ENODEV;
+
+	dev_id = platform_get_device_id(pdev);
+	if (dev_id)
+		type = dev_id->driver_data;
+	else
+		type = (uintptr_t)of_device_get_match_data(&pdev->dev);
+	if (!type)
+		return -ENODEV;
+
+	gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
+	if (!gpio)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
+	if (!res)
+		return -EINVAL;
+	base = res->start;
+
+	regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!regmap)
+		return -ENODEV;
+
+	config.regmap = regmap;
+	config.parent = &pdev->dev;
+	config.ngpio = 8;
+
+	switch (type) {
+	case SL28CPLD_GPIO:
+		config.reg_dat_base = base + GPIO_REG_IN;
+		config.reg_set_base = base + GPIO_REG_OUT;
+		/* reg_dir_out_base might be zero */
+		config.reg_dir_out_base = GPIO_REGMAP_ADDR(base +
+							   GPIO_REG_DIR);
+		irq_support = true;
+		break;
+	case SL28CPLD_GPO:
+		config.reg_set_base = base + GPO_REG_OUT;
+		break;
+	case SL28CPLD_GPI:
+		config.reg_dat_base = base + GPI_REG_IN;
+		break;
+	default:
+		dev_err(&pdev->dev, "unknown type %d\n", type);
+		return -ENODEV;
+	}
+
+	if (irq_support &&
+	    device_property_read_bool(&pdev->dev, "interrupt-controller")) {
+		irq = platform_get_irq(pdev, 0);
+		if (irq < 0)
+			return irq;
+
+		ret = sl28cpld_gpio_irq_init(&pdev->dev, gpio, regmap,
+					     base, irq);
+		if (ret)
+			return ret;
+
+		config.irq_domain = regmap_irq_get_domain(gpio->irq_data);
+		dev_info(&pdev->dev, "registered IRQ %d\n", irq);
+	}
+
+	return PTR_ERR_OR_ZERO(devm_gpio_regmap_register(&pdev->dev, &config));
+}
+
+static const struct of_device_id sl28cpld_gpio_of_match[] = {
+	{ .compatible = "kontron,sl28cpld-gpio",
+	  .data = (void *)SL28CPLD_GPIO },
+	{ .compatible = "kontron,sl28cpld-gpi",
+	  .data = (void *)SL28CPLD_GPI },
+	{ .compatible = "kontron,sl28cpld-gpo",
+	  .data = (void *)SL28CPLD_GPO },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sl28cpld_gpio_of_match);
+
+static const struct platform_device_id sl28cpld_gpio_id_table[] = {
+	{ "sl28cpld-gpio", SL28CPLD_GPIO },
+	{ "sl28cpld-gpi", SL28CPLD_GPI },
+	{ "sl28cpld-gpo", SL28CPLD_GPO },
+	{}
+};
+MODULE_DEVICE_TABLE(platform, sl28cpld_gpio_id_table);
+
+static struct platform_driver sl28cpld_gpio_driver = {
+	.probe = sl28cpld_gpio_probe,
+	.id_table = sl28cpld_gpio_id_table,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = sl28cpld_gpio_of_match,
+	},
+};
+module_platform_driver(sl28cpld_gpio_driver);
+
+MODULE_DESCRIPTION("sl28cpld GPIO Driver");
+MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
+MODULE_LICENSE("GPL");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
