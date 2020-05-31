Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203271E94B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VkP6pPREX9FlbTnNoeYD7PuXl8Odv+YhzhxABD+8avQ=; b=SdN958XtQmFnobfgIuUxvP0FEI
	SuZhbJTmBuBUZioHiy5pJUnizh1MKxbeCtQnwdS8UMcGzqsiNQTnz1a7pvvg9fJlXl0mXDYnbQwZo
	wrFpYGAEVJRH9pK/PVeVYOrpoYzhqzkLg3h9RW7Gkwi3RGs2H2FKo7svvrc7b6BWgtparerSAa8Md
	MSnkwHmyQtXLpdSF7YifjNhvOJcqJ5En1WqS8AQDtUmcXF8PIG6q4KWqPibH2DWKxl5RoNuru/gyM
	7xeKWDdY0qj88610mwqBfpjFqDUIj4pWWqKS/t5ExY27PLrXrzl9z4jwN4rjeo9XECwAYxTT3IUx4
	gtcGo9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBag-0003rj-Ai; Sun, 31 May 2020 00:12:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBZV-00031X-3N; Sun, 31 May 2020 00:11:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id u13so7328946wml.1;
 Sat, 30 May 2020 17:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/qqSfLjKkG/CC5CtAlFtO9K7r/VC6yMAZmB7aTtn0LU=;
 b=H0ZwBJLIX6kzFlOwZ20H0EEL4E/z1rjAxWfc8t4tOsV0IIZsetFA51knqjFmfBzQcK
 cXPkOTMIEBnkY5NaaCoUB8LcOCls5K3kVZaceU0uRicxkGyBFdZvRuKT5RvnOZkdWw2I
 ihY19vKONopg7vUMjV9Mfg5B0sDK6PdM4hqPtzCcxWfXfq/BAdNLNFuS2c0toXpLnbRV
 XvcgBCv/Rx8gM+rDcpsoDIkS7QxuCLNvIIWGdpucytBqHQlMO8Fr7ChIqmultiI/ztgj
 GqiUKhppUlcsNukryd0mlTx3dkXa3zgO3LALTaxZ2F+rYEwXEYriGkOVZOb2qhV/7OCQ
 R6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/qqSfLjKkG/CC5CtAlFtO9K7r/VC6yMAZmB7aTtn0LU=;
 b=J1G9D7EA1eUdbAEZWWqYgCtCzF72ZFxvKGvSPfNX3xV4t/VAX5bQ4BKzC41nfGXl+a
 9W02Q9yb2fSPqRPq7D9Cg3OLy376aLC5d9/6Tc88ENOxrYZH+7ow+HVEpqoXt5dOPsb8
 2fNeLc8GJ04uhwysUp12WKdmp/XzoVjFbSgvW0YzoKYx+GbV9MR5vCac1XDs1PMVOWip
 oat15KzlulsTGxKEqJNUtCKcKFoSglw3+c0L9oIWwb59j9pmP1dj2DdVD7vaMfG9neYi
 yrGiidFT9UyR6iCgOfDpJOTSRL5gB2PHI09I8qigfZaBAKNGaH+p3pfKX4F1JHXUBDhS
 2LXQ==
X-Gm-Message-State: AOAM5331FTvsLvYwiTrwM4rAUhPoiGGVyKPnqfJrMiYArR09h2oI+3ge
 WJdnrkFH6hVlbkyO8ZnwEJY=
X-Google-Smtp-Source: ABdhPJy/M+901ea8s/lIkKWWZLnduLHfcOF9kwrw5iHEv9IZl3il7NY4FGYscm/HIVm6HqxUObFDrA==
X-Received: by 2002:a1c:1983:: with SMTP id 125mr14662126wmz.43.1590883883176; 
 Sat, 30 May 2020 17:11:23 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d17sm15455807wrg.75.2020.05.30.17.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 May 2020 17:11:22 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] pinctrl: bcm2835: Add support for wake-up interrupts
Date: Sat, 30 May 2020 17:11:01 -0700
Message-Id: <20200531001101.24945-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200531001101.24945-1-f.fainelli@gmail.com>
References: <20200531001101.24945-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_171125_224991_0C1C24C2 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Leverage the IRQCHIP_MASK_ON_SUSPEND flag in order to avoid having to
specifically treat the GPIO interrupts during suspend and resume, and
simply implement an irq_set_wake() callback that is responsible for
enabling the parent wake-up interrupt as a wake-up interrupt.

To avoid allocating unnecessary resources for other chips, the wake-up
interrupts are only initialized if we have a brcm,bcm7211-gpio
compatibility string.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 76 ++++++++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 1b00d93aa66e..1d21129f7751 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -19,6 +19,7 @@
 #include <linux/irq.h>
 #include <linux/irqdesc.h>
 #include <linux/init.h>
+#include <linux/interrupt.h>
 #include <linux/of_address.h>
 #include <linux/of.h>
 #include <linux/of_irq.h>
@@ -76,6 +77,7 @@
 struct bcm2835_pinctrl {
 	struct device *dev;
 	void __iomem *base;
+	int *wake_irq;
 
 	/* note: locking assumes each bank will have its own unsigned long */
 	unsigned long enabled_irq_map[BCM2835_NUM_BANKS];
@@ -435,6 +437,11 @@ static void bcm2835_gpio_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(host_chip, desc);
 }
 
+static irqreturn_t bcm2835_gpio_wake_irq_handler(int irq, void *dev_id)
+{
+	return IRQ_HANDLED;
+}
+
 static inline void __bcm2835_gpio_irq_config(struct bcm2835_pinctrl *pc,
 	unsigned reg, unsigned offset, bool enable)
 {
@@ -634,6 +641,34 @@ static void bcm2835_gpio_irq_ack(struct irq_data *data)
 	bcm2835_gpio_set_bit(pc, GPEDS0, gpio);
 }
 
+static int bcm2835_gpio_irq_set_wake(struct irq_data *data, unsigned int on)
+{
+	struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
+	struct bcm2835_pinctrl *pc = gpiochip_get_data(chip);
+	unsigned gpio = irqd_to_hwirq(data);
+	unsigned int irqgroup;
+	int ret = -EINVAL;
+
+	if (!pc->wake_irq)
+		return ret;
+
+	if (gpio <= 27)
+		irqgroup = 0;
+	else if (gpio >= 28 && gpio <= 45)
+		irqgroup = 1;
+	else if (gpio >= 46 && gpio <= 57)
+		irqgroup = 2;
+	else
+		return ret;
+
+	if (on)
+		ret = enable_irq_wake(pc->wake_irq[irqgroup]);
+	else
+		ret = disable_irq_wake(pc->wake_irq[irqgroup]);
+
+	return ret;
+}
+
 static struct irq_chip bcm2835_gpio_irq_chip = {
 	.name = MODULE_NAME,
 	.irq_enable = bcm2835_gpio_irq_enable,
@@ -642,6 +677,8 @@ static struct irq_chip bcm2835_gpio_irq_chip = {
 	.irq_ack = bcm2835_gpio_irq_ack,
 	.irq_mask = bcm2835_gpio_irq_disable,
 	.irq_unmask = bcm2835_gpio_irq_enable,
+	.irq_set_wake = bcm2835_gpio_irq_set_wake,
+	.flags = IRQCHIP_MASK_ON_SUSPEND,
 };
 
 static int bcm2835_pctl_get_groups_count(struct pinctrl_dev *pctldev)
@@ -1154,6 +1191,7 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	struct resource iomem;
 	int err, i;
 	const struct of_device_id *match;
+	int is_7211 = 0;
 
 	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_pins) != BCM2711_NUM_GPIOS);
 	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_groups) != BCM2711_NUM_GPIOS);
@@ -1180,6 +1218,7 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	pdata = match->data;
+	is_7211 = of_device_is_compatible(np, "brcm,bcm7211-gpio");
 
 	pc->gpio_chip = *pdata->gpio_chip;
 	pc->gpio_chip.parent = dev;
@@ -1214,6 +1253,15 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 				     GFP_KERNEL);
 	if (!girq->parents)
 		return -ENOMEM;
+
+	if (is_7211) {
+		pc->wake_irq = devm_kcalloc(dev, BCM2835_NUM_IRQS,
+					    sizeof(*pc->wake_irq),
+					    GFP_KERNEL);
+		if (!pc->wake_irq)
+			return -ENOMEM;
+	}
+
 	/*
 	 * Use the same handler for all groups: this is necessary
 	 * since we use one gpiochip to cover all lines - the
@@ -1221,8 +1269,34 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	 * bank that was firing the IRQ and look up the per-group
 	 * and bank data.
 	 */
-	for (i = 0; i < BCM2835_NUM_IRQS; i++)
+	for (i = 0; i < BCM2835_NUM_IRQS; i++) {
+		int len;
+		char *name;
+
 		girq->parents[i] = irq_of_parse_and_map(np, i);
+		if (!is_7211)
+			continue;
+
+		/* Skip over the all banks interrupts */
+		pc->wake_irq[i] = irq_of_parse_and_map(np, i +
+						       BCM2835_NUM_IRQS + 1);
+
+		len = strlen(dev_name(pc->dev)) + 16;
+		name = devm_kzalloc(pc->dev, len, GFP_KERNEL);
+		if (!name)
+			return -ENOMEM;
+
+		snprintf(name, len, "%s:bank%d", dev_name(pc->dev), i);
+
+		/* These are optional interrupts */
+		err = devm_request_irq(dev, pc->wake_irq[i],
+				       bcm2835_gpio_wake_irq_handler,
+				       IRQF_SHARED, name, pc);
+		if (err)
+			dev_warn(dev, "unable to request wake IRQ %d\n",
+				 pc->wake_irq[i]);
+	}
+
 	girq->default_type = IRQ_TYPE_NONE;
 	girq->handler = handle_level_irq;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
