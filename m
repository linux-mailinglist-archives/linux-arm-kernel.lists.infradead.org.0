Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA7C188FCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 21:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=328APRuCVIgITRUsgiJEVkQ7ANxcsGTgiVuDU8uupB4=; b=nsJlX/qEQqZuZa
	4NGARK5g+W7Q1dhqYJYjb8W9m7N/bKzpseY+s7KZ67t3rqpd//GMpnJZvxeVPxiBB0srmCHwbVAX4
	peA1kRVnZPJBku/hvMMw4SOyWoNw/rpmjdzx9wvd04W9ZWoFdFat+tpbPXl+FzmLGv9UWp+NMWk0o
	Jd9L/+BrLLRXXLMxQvDT0mI8W5FNg5pEFLdXv1XdSjpK02GBmXghz0dNw/qKKOHYOrwsILpQanlFZ
	SkESkanxKUaWwwPSxwaQJEQq/81OGKEBdPYnK9jB2NfYsKd7MLhk2bQJbi9puOCcW/S5BVnB84xIR
	wAr17C0SVp9Y4odVmL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJEV-0002Ug-Kc; Tue, 17 Mar 2020 20:54:39 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJAv-0007rP-Uw
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 20:51:00 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id AC2E123EB8;
 Tue, 17 Mar 2020 21:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584478256;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9Aga4RzofYNZyq0SiX9RxpLXl7fGWBYL+9Qsz5fx5Kg=;
 b=hWvM4tP4mNgN8H1MK0OAR6DXozsArqpWFRhvQhydqM4nbPES9GJRWttPt/ztfuVXgHnPgR
 mpTRMXCm3j90IcEd1tUONpkBrZSs4GaxX6f6O5aoHqNE1dyG3+PhA6yfA9id3UdUpQrwtS
 tWtlQOBrBmnxVogEdkoWkfF6qy1HBp0=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
Date: Tue, 17 Mar 2020 21:50:11 +0100
Message-Id: <20200317205017.28280-13-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317205017.28280-1-michael@walle.cc>
References: <20200317205017.28280-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: AC2E123EB8
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[0.499];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[22];
 MID_CONTAINS_FROM(1.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_135058_328025_83C1B826 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
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
 drivers/gpio/Kconfig         |  11 ++
 drivers/gpio/Makefile        |   1 +
 drivers/gpio/gpio-sl28cpld.c | 332 +++++++++++++++++++++++++++++++++++
 3 files changed, 344 insertions(+)
 create mode 100644 drivers/gpio/gpio-sl28cpld.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 3cbf8882a0dd..516e47017ef5 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -1211,6 +1211,17 @@ config GPIO_RC5T583
 	  This driver provides the support for driving/reading the gpio pins
 	  of RC5T583 device through standard gpio library.
 
+config GPIO_SL28CPLD
+	tristate "Kontron sl28 GPIO"
+	depends on MFD_SL28CPLD
+	depends on OF_GPIO
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
index 0b571264ddbc..0ca2d52c78e8 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -127,6 +127,7 @@ obj-$(CONFIG_GPIO_SCH311X)		+= gpio-sch311x.o
 obj-$(CONFIG_GPIO_SCH)			+= gpio-sch.o
 obj-$(CONFIG_GPIO_SIFIVE)		+= gpio-sifive.o
 obj-$(CONFIG_GPIO_SIOX)			+= gpio-siox.o
+obj-$(CONFIG_GPIO_SL28CPLD)		+= gpio-sl28cpld.o
 obj-$(CONFIG_GPIO_SODAVILLE)		+= gpio-sodaville.o
 obj-$(CONFIG_GPIO_SPEAR_SPICS)		+= gpio-spear-spics.o
 obj-$(CONFIG_GPIO_SPRD)			+= gpio-sprd.o
diff --git a/drivers/gpio/gpio-sl28cpld.c b/drivers/gpio/gpio-sl28cpld.c
new file mode 100644
index 000000000000..94f82013882f
--- /dev/null
+++ b/drivers/gpio/gpio-sl28cpld.c
@@ -0,0 +1,332 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SMARC-sAL28 GPIO driver.
+ *
+ * Copyright 2019 Kontron Europe GmbH
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/interrupt.h>
+#include <linux/regmap.h>
+#include <linux/platform_device.h>
+#include <linux/gpio/driver.h>
+
+#define GPIO_REG_DIR	0
+#define GPIO_REG_OUT	1
+#define GPIO_REG_IN	2
+#define GPIO_REG_IE	3
+#define GPIO_REG_IP	4
+
+#define GPI_REG_IN	0
+
+#define GPO_REG_OUT	0
+
+enum sl28cpld_gpio_type {
+	sl28cpld_gpio,
+	sl28cpld_gpi,
+	sl28cpld_gpo,
+};
+
+struct sl28cpld_gpio {
+	struct gpio_chip gpio_chip;
+	struct irq_chip irq_chip;
+	struct regmap *regmap;
+	u32 offset;
+	struct mutex lock;
+	u8 ie;
+};
+
+static void sl28cpld_gpio_set_reg(struct gpio_chip *chip, unsigned int reg,
+				  unsigned int offset, int value)
+{
+	struct sl28cpld_gpio *gpio = gpiochip_get_data(chip);
+	unsigned int mask = 1 << offset;
+	unsigned int val = value << offset;
+
+	regmap_update_bits(gpio->regmap, gpio->offset + reg, mask, val);
+}
+
+static void sl28cpld_gpio_set(struct gpio_chip *chip, unsigned int offset,
+			      int value)
+{
+	sl28cpld_gpio_set_reg(chip, GPIO_REG_OUT, offset, value);
+}
+
+static void sl28cpld_gpo_set(struct gpio_chip *chip, unsigned int offset,
+			     int value)
+{
+	sl28cpld_gpio_set_reg(chip, GPO_REG_OUT, offset, value);
+}
+
+static int sl28cpld_gpio_get_reg(struct gpio_chip *chip, unsigned int reg,
+				 unsigned int offset)
+{
+	struct sl28cpld_gpio *gpio = gpiochip_get_data(chip);
+	unsigned int mask = 1 << offset;
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(gpio->regmap, gpio->offset + reg, &val);
+	if (ret)
+		return ret;
+
+	return (val & mask) ? 1 : 0;
+}
+
+static int sl28cpld_gpio_get(struct gpio_chip *chip, unsigned int offset)
+{
+	return sl28cpld_gpio_get_reg(chip, GPIO_REG_IN, offset);
+}
+
+static int sl28cpld_gpi_get(struct gpio_chip *chip, unsigned int offset)
+{
+	return sl28cpld_gpio_get_reg(chip, GPI_REG_IN, offset);
+}
+
+static int sl28cpld_gpio_get_direction(struct gpio_chip *chip,
+				       unsigned int offset)
+{
+	struct sl28cpld_gpio *gpio = gpiochip_get_data(chip);
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(gpio->regmap, gpio->offset + GPIO_REG_DIR, &reg);
+	if (ret)
+		return ret;
+
+	if (reg & (1 << offset))
+		return GPIO_LINE_DIRECTION_OUT;
+	else
+		return GPIO_LINE_DIRECTION_IN;
+}
+
+static int sl28cpld_gpio_set_direction(struct gpio_chip *chip,
+				       unsigned int offset,
+				       bool output)
+{
+	struct sl28cpld_gpio *gpio = gpiochip_get_data(chip);
+	unsigned int mask = 1 << offset;
+	unsigned int val = (output) ? mask : 0;
+
+	return regmap_update_bits(gpio->regmap, gpio->offset + GPIO_REG_DIR,
+				  mask, val);
+
+}
+
+static int sl28cpld_gpio_direction_input(struct gpio_chip *chip,
+					 unsigned int offset)
+{
+	return sl28cpld_gpio_set_direction(chip, offset, false);
+}
+
+static int sl28cpld_gpio_direction_output(struct gpio_chip *chip,
+					  unsigned int offset, int value)
+{
+	sl28cpld_gpio_set_reg(chip, GPIO_REG_OUT, offset, value);
+	return sl28cpld_gpio_set_direction(chip, offset, true);
+}
+
+static void sl28cpld_gpio_irq_lock(struct irq_data *data)
+{
+	struct sl28cpld_gpio *gpio =
+		gpiochip_get_data(irq_data_get_irq_chip_data(data));
+
+	mutex_lock(&gpio->lock);
+}
+
+static void sl28cpld_gpio_irq_sync_unlock(struct irq_data *data)
+{
+	struct sl28cpld_gpio *gpio =
+		gpiochip_get_data(irq_data_get_irq_chip_data(data));
+
+	regmap_write(gpio->regmap, gpio->offset + GPIO_REG_IE, gpio->ie);
+	mutex_unlock(&gpio->lock);
+}
+
+static void sl28cpld_gpio_irq_disable(struct irq_data *data)
+{
+	struct sl28cpld_gpio *gpio =
+		gpiochip_get_data(irq_data_get_irq_chip_data(data));
+
+	if (data->hwirq >= 8)
+		return;
+
+	gpio->ie &= ~(1 << data->hwirq);
+}
+
+static void sl28cpld_gpio_irq_enable(struct irq_data *data)
+{
+	struct sl28cpld_gpio *gpio =
+		gpiochip_get_data(irq_data_get_irq_chip_data(data));
+
+	if (data->hwirq >= 8)
+		return;
+
+	gpio->ie |= (1 << data->hwirq);
+}
+
+static int sl28cpld_gpio_irq_set_type(struct irq_data *data, unsigned int type)
+{
+	/* only edge triggered interrupts on both edges are supported */
+	return (type == IRQ_TYPE_EDGE_BOTH) ? 0 : -EINVAL;
+}
+
+static irqreturn_t sl28cpld_gpio_irq_thread(int irq, void *data)
+{
+	struct sl28cpld_gpio *gpio = data;
+	unsigned int ip;
+	unsigned int virq;
+	int pin;
+	int ret;
+
+	ret = regmap_read(gpio->regmap, gpio->offset + GPIO_REG_IP, &ip);
+	if (ret)
+		return IRQ_NONE;
+
+	/* mask other pending interrupts which are not enabled */
+	ip &= gpio->ie;
+
+	/* ack the interrupts */
+	regmap_write(gpio->regmap, gpio->offset + GPIO_REG_IP, ip);
+
+	/* and handle them */
+	while (ip) {
+		pin = __ffs(ip);
+		ip &= ~BIT(pin);
+
+		virq = irq_find_mapping(gpio->gpio_chip.irq.domain, pin);
+		if (virq)
+			handle_nested_irq(virq);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int sl28_cpld_gpio_irq_init(struct platform_device *pdev, int irq)
+{
+	struct sl28cpld_gpio *gpio = platform_get_drvdata(pdev);
+	struct irq_chip *irq_chip = &gpio->irq_chip;
+	int ret;
+
+	irq_chip->name = "sl28cpld-gpio-irq",
+	irq_chip->irq_bus_lock = sl28cpld_gpio_irq_lock,
+	irq_chip->irq_bus_sync_unlock = sl28cpld_gpio_irq_sync_unlock,
+	irq_chip->irq_disable = sl28cpld_gpio_irq_disable,
+	irq_chip->irq_enable = sl28cpld_gpio_irq_enable,
+	irq_chip->irq_set_type = sl28cpld_gpio_irq_set_type,
+	irq_chip->flags = IRQCHIP_SKIP_SET_WAKE,
+
+	ret = gpiochip_irqchip_add_nested(&gpio->gpio_chip, irq_chip, 0,
+					  handle_simple_irq, IRQ_TYPE_NONE);
+	if (ret)
+		return ret;
+
+	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+					sl28cpld_gpio_irq_thread,
+					IRQF_SHARED | IRQF_ONESHOT,
+					pdev->name, gpio);
+	if (ret)
+		return ret;
+
+	gpiochip_set_nested_irqchip(&gpio->gpio_chip, irq_chip, irq);
+
+	return 0;
+}
+
+static int sl28cpld_gpio_probe(struct platform_device *pdev)
+{
+	enum sl28cpld_gpio_type type =
+		platform_get_device_id(pdev)->driver_data;
+	struct device_node *np = pdev->dev.of_node;
+	struct sl28cpld_gpio *gpio;
+	struct gpio_chip *chip;
+	struct resource *res;
+	bool irq_support = false;
+	int ret;
+	int irq;
+
+	gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
+	if (!gpio)
+		return -ENOMEM;
+
+	if (!pdev->dev.parent)
+		return -ENODEV;
+
+	gpio->regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!gpio->regmap)
+		return -ENODEV;
+
+	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
+	if (!res)
+		return -EINVAL;
+	gpio->offset = res->start;
+
+	/* initialize struct gpio_chip */
+	mutex_init(&gpio->lock);
+	chip = &gpio->gpio_chip;
+	chip->parent = &pdev->dev;
+	chip->label = dev_name(&pdev->dev);
+	chip->owner = THIS_MODULE;
+	chip->can_sleep = true;
+	chip->base = -1;
+	chip->ngpio = 8;
+
+	switch (type) {
+	case sl28cpld_gpio:
+		chip->get_direction = sl28cpld_gpio_get_direction;
+		chip->direction_input = sl28cpld_gpio_direction_input;
+		chip->direction_output = sl28cpld_gpio_direction_output;
+		chip->get = sl28cpld_gpio_get;
+		chip->set = sl28cpld_gpio_set;
+		irq_support = true;
+		break;
+	case sl28cpld_gpo:
+		chip->set = sl28cpld_gpo_set;
+		chip->get = sl28cpld_gpi_get;
+		break;
+	case sl28cpld_gpi:
+		chip->get = sl28cpld_gpi_get;
+		break;
+	}
+
+	ret = devm_gpiochip_add_data(&pdev->dev, chip, gpio);
+	if (ret < 0)
+		return ret;
+
+	platform_set_drvdata(pdev, gpio);
+
+	if (irq_support && of_property_read_bool(np, "interrupt-controller")) {
+		irq = platform_get_irq(pdev, 0);
+		if (irq < 0)
+			return ret;
+
+		ret = sl28_cpld_gpio_irq_init(pdev, irq);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static const struct platform_device_id sl28cpld_gpio_id_table[] = {
+	{"sl28cpld-gpio", sl28cpld_gpio},
+	{"sl28cpld-gpi", sl28cpld_gpi},
+	{"sl28cpld-gpo", sl28cpld_gpo},
+};
+MODULE_DEVICE_TABLE(platform, sl28cpld_gpio_id_table);
+
+static struct platform_driver sl28cpld_gpio_driver = {
+	.probe = sl28cpld_gpio_probe,
+	.id_table = sl28cpld_gpio_id_table,
+	.driver = {
+		.name = "sl28cpld-gpio",
+	},
+};
+module_platform_driver(sl28cpld_gpio_driver);
+
+MODULE_DESCRIPTION("sl28cpld GPIO Driver");
+MODULE_LICENSE("GPL");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
