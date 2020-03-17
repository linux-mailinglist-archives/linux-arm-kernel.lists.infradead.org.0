Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9AF188FC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 21:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncFtPYnj7B/JsK9z0NXh/bv9AoP5MXb1p8O+cCZll9Q=; b=f9DZUnnDF+oTZH
	fXcMTrWAHLULA+L3ZA2FbHmFsuSMxf4vy76MaP2ffsdARC6iVdzKZc0b7NksqZoi3SFKhWxYtLGJw
	jHIsSRCYGZS0DBhUa51w3wcbSdZ9knDzMYTAK67PAfiP5wvzcz6J4wGNrBm3ijfIDzXyuxFEuE7i9
	YyXk68FCeiw4h65cs2hFt4qask5W+Pv1RBUJUcqC5HmbOSNTr7lyqwaMYMhneW45L9wFPhX54injn
	IPjOnSCx7ykCUHtooEIEyIEs4nG0ziIXAvMcsPLPxJBzTPLMeMPOXZC7CkLtQiwhF8AEsd1N2Rejx
	uupqmjkbhkZjh1cbncJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJCm-0000uS-Qd; Tue, 17 Mar 2020 20:52:52 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJAr-0007n8-83
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 20:50:55 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 79A3123E61;
 Tue, 17 Mar 2020 21:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584478252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BvuXdtNKeJv7JIiyhJoueKUgioFsJ6ZeC4+J+Ye+SsU=;
 b=AZwtGvZyQfKcccy2XAEIdnZVnr5dyDBIC47GJI1XkJvZ+a1Uw1qCp9Xbmv+60m1A/87KBs
 oEsAXMor+jVXxmum1NfdBEGwWRukMXRFDu5BkD2cZncwPnQxPs9O78/aBINk6uvCK2dL++
 Xg/+JrGMAJ78oSyV2Hv4LPQwScD5SEI=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/18] irqchip: add sl28cpld interrupt controller support
Date: Tue, 17 Mar 2020 21:50:05 +0100
Message-Id: <20200317205017.28280-7-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317205017.28280-1-michael@walle.cc>
References: <20200317205017.28280-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 79A3123E61
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[0.504];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[22];
 MID_CONTAINS_FROM(1.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_135053_579325_760B44BE 
X-CRM114-Status: GOOD (  16.90  )
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

This patch adds support for the interrupt controller inside the sl28
CPLD management controller.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/irqchip/Kconfig        |  3 ++
 drivers/irqchip/Makefile       |  1 +
 drivers/irqchip/irq-sl28cpld.c | 92 ++++++++++++++++++++++++++++++++++
 drivers/mfd/Kconfig            |  4 +-
 4 files changed, 98 insertions(+), 2 deletions(-)
 create mode 100644 drivers/irqchip/irq-sl28cpld.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 24fe08702ef7..3fd7415c8b55 100644
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
index eae0d78cbf22..0f4a37782609 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -105,3 +105,4 @@ obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
 obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
 obj-$(CONFIG_TI_SCI_INTA_IRQCHIP)	+= irq-ti-sci-inta.o
+obj-$(CONFIG_SL28CPLD_INTC)		+= irq-sl28cpld.o
diff --git a/drivers/irqchip/irq-sl28cpld.c b/drivers/irqchip/irq-sl28cpld.c
new file mode 100644
index 000000000000..fa52ed79137b
--- /dev/null
+++ b/drivers/irqchip/irq-sl28cpld.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SMARC-sAL28 Interrupt core driver.
+ *
+ * Copyright 2019 Kontron Europe GmbH
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/i2c.h>
+#include <linux/regmap.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/core.h>
+
+#define INTC_IE 0
+#define INTC_IP 1
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
+	struct sl28cpld_intc *irqchip;
+	struct resource *res;
+	unsigned int irq;
+	int ret;
+
+	irqchip = devm_kzalloc(&pdev->dev, sizeof(*irqchip), GFP_KERNEL);
+	if (!irqchip)
+		return -ENOMEM;
+
+	if (!pdev->dev.parent)
+		return -ENODEV;
+
+	irqchip->regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!irqchip->regmap)
+		return -ENODEV;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+
+	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
+	if (!res)
+		return -EINVAL;
+
+	irqchip->chip.name = "sl28cpld-intc";
+	irqchip->chip.irqs = sl28cpld_irqs;
+	irqchip->chip.num_irqs = ARRAY_SIZE(sl28cpld_irqs);
+	irqchip->chip.num_regs = 1;
+	irqchip->chip.status_base = res->start + INTC_IP;
+	irqchip->chip.mask_base = res->start + INTC_IE;
+	irqchip->chip.mask_invert = true,
+	irqchip->chip.ack_base = res->start + INTC_IP;
+
+	ret = devm_regmap_add_irq_chip(&pdev->dev, irqchip->regmap, irq,
+				       IRQF_SHARED | IRQF_ONESHOT, 0,
+				       &irqchip->chip, &irqchip->irq_data);
+	if (ret)
+		return ret;
+	dev_info(&pdev->dev, "registered IRQ %d\n", irq);
+
+	return 0;
+}
+
+static struct platform_driver sl28cpld_intc_driver = {
+	.probe	= sl28cpld_intc_probe,
+	.driver = {
+		.name = "sl28cpld-intc",
+	}
+};
+module_platform_driver(sl28cpld_intc_driver);
+
+MODULE_DESCRIPTION("sl28cpld Interrupt Controller Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 01588c366476..4f741d640705 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2060,12 +2060,12 @@ config SGI_MFD_IOC3
 	  then say Y. Otherwise say N.
 
 config MFD_SL28CPLD
-	tristate "Kontron sl28 core driver"
+	bool "Kontron sl28 core driver"
 	depends on I2C=y
 	depends on OF
 	select REGMAP_I2C
 	select REGMAP_IRQ
-	select SL28CPLD_IRQ
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
