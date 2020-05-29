Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83171E8792
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8FR9bC7B0FPyWwtsH88K9rnqIuhQEDYegePlHV5ezaY=; b=IAhI2CcscJ8RFMwx6WAUnN+XuZ
	w9bIkLrkPAN26MnIveg0E4GM45Q7Bor/6f1TgAs/JOe1SOMxmirYpBTc6ue1t6I6z3hXw+YU2oeAf
	dzkH3LgLZfvTIznxmFAExcH1NcJzsu2T9FgI5kuWtjjlJ/p4tb40LxKzC2tHk9VpfZATP8/k9P3yc
	UyAQJmxVAvoRO6Xzi6+3rgpj9e2EGe3euEhpyhXwteFh1kiMrY+j22oIXzVufdEGEKIbS9Ia8K/wz
	th7PHxyQ1u4Q41/qTlUijkA02wLAUV4EgP0ecJJ3Kq4tWsAck4I8jzhvKTHXgcHJBrnu3TQZ58aJg
	ykSDGSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekW7-0003rc-M3; Fri, 29 May 2020 19:18:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekUy-0002zy-I9; Fri, 29 May 2020 19:16:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id d66so312637pfd.6;
 Fri, 29 May 2020 12:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EIjxAykk2tEttvRx9JnBGeY9/qJpeki3+e7nJQ2gjnE=;
 b=ad3gth5nKUdz0v9um43Fwb3jWGazQdA5gCgFD3/5E7SSFH3AJvG+GPliixKy8cHaPT
 wuOkMV4SkXG9UwVyjLWNwH/pOxnj4Vnvi+v+CSibTNC5fCRyTMBn/qiciVrE5GFck/TZ
 71kkYR7SsbldH0HVvHQ4GdKSbPA3W2Y9wFWLXx4Nzu343JliIXh+/RAEsEtu43erzEH1
 Rt6DJCrqDEJQRuXYzrE00ya7u3CjzTfpOQz3aoGn1oIdzbz3GSa3tEbTMc/fXDUcZzia
 lfl8VlwtcYcehgE0RK7/G1zlR0sP3/JpW5KJJP/sCSv6lE0cDpNb24U/U39/ABZ+Apf+
 Ic2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EIjxAykk2tEttvRx9JnBGeY9/qJpeki3+e7nJQ2gjnE=;
 b=VlpjSuF8LA56Wj+33+Ouh/yQyNRSV3w4tEAiNxCaO8BpViviKizuXoK0QJpXsdGMI6
 ykcQqaQ7qCtKCNcWtEXmxOsr3bqRMXv02cug90dR0I6XH4Kwl5ZFWmClMyQFhgM8B+Ij
 ApGq1ttR5mVnqHQ8mXp52YIHqGEaVe9FBiIPoAUm5nFOnHc0B17z0DM8VfPhJwyVe6rR
 6saz8iSf7KgZIpCH9vYOdf2930/Ksvvh39joeAF9UfMV5ZdCatD63S4p3nxkiSRtMm7z
 kOLjw9WeVe7hLKk4bMEUDucZO1PnetPPGh1xVotM4mR4IoH3w/4LnaAVDVZ2QF3wrC7k
 M3sQ==
X-Gm-Message-State: AOAM531ZjgNzciJ/5vfv/Prfba8NUCYAJ/R1/6bvut3YkhtYX+FsL5pK
 UVdW2w9QQQEnJc+d9hWwwxA=
X-Google-Smtp-Source: ABdhPJyaZe9ea+hMIcwaCx50qw1p0vx0dz0p9ALM5yPtD8ybx+di/H54gVlWvly/GLOUrORykVEQQg==
X-Received: by 2002:a63:6345:: with SMTP id x66mr9424392pgb.156.1590779815731; 
 Fri, 29 May 2020 12:16:55 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g92sm202505pje.13.2020.05.29.12.16.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:16:55 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] pinctrl: bcm2835: Add support for wake-up interrupts
Date: Fri, 29 May 2020 12:15:22 -0700
Message-Id: <20200529191522.27938-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529191522.27938-1-f.fainelli@gmail.com>
References: <20200529191522.27938-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121656_606792_7653DAEC 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 1b00d93aa66e..1fbf067a3eed 100644
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
+	else if (gpio >= 46 && gpio <= 53)
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
