Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C685EB75D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=muVGRqBSKLPZjsNQUo7C8fpoD8jZOuj6NcwTx1Wy1SY=; b=W3XUbsEQUGt/L8
	E31g5hxtxm4zJGdXRzyT+IprVyhnm4H9gCTPeOnpagSk7onZbA0yD23CIGS7Zox+0pKAi7Q5SR93g
	qi5qIOPpPWWczLY4V7pvRU8sbQAPz03CBkNsD+O1cbO4kcD+zo5Ywqf5m455BW81dPSbu1iidFIJS
	gCMMu9doiK0Nc7svEHn/XOd7QwHPMLO91seDfInjA/iIZaj8j0EEPZOTHSyEws6yKIcLRlHJZQ+UQ
	UTxmMgs/StdL8PjDZ1gXoowhkAOJ669GjWyq6a8guItqpAyOm5vCwj1UfflhnxiW8hhQ/eNRBYxGX
	thunXSnfGyG2gg+yb4GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFO2-0008Vr-Vy; Thu, 31 Oct 2019 18:41:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFNq-0008VE-Sm
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:41:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id w18so7417792wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 11:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=7/bRNZ6f+2d4L/oUjvqWsQNbnVWR20TLQleMcIRmwFo=;
 b=JfoUna8kMEF1zFyaGJgt2t3q9Dl5MjP6Gl92izIO0+1gQ85mYOsbwOGgK9Ep2XaRC3
 zlKeIR04kOenJjqex/B/09KqvvhFEZE8VnMp1rfGtaOielH7jyKy70bSlOG3zm/ILjPd
 hFVwBzFSFM6HocyUilsQAabUVjZasSLsTgDnchjNfRKVVv+G06OCBlj9zfBMFADibe/X
 cS9BpeMtAoccUpa3aS0yhas3Cxail6dOCtdRYqn3IUl7a1+IWACRryEuq6lPy7s9xvw0
 trg66kv/qnpLFROUqDD6trkxjV3TerpU99cjohVW3ewmZohB4XuYIQ9iLAknqx2f5XHY
 KnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=7/bRNZ6f+2d4L/oUjvqWsQNbnVWR20TLQleMcIRmwFo=;
 b=m7YWWwcEBASXIUKBskpx/8mifmy3OXfrLgYqQ4bjK+DD7by6JYQUyh+QSD4V1WYVlv
 CXosGvp4HfpdXfxFrAcDBae7djhQwg8iZxAoUxaDbuJ1lb6ct55pRje4V66UGlHVA+zf
 O8/0VOD+JKF4x3FSoxP//MQoHZV9+7Qj78LhlHRmejORklFj7eVcSOFcQjAzHxa0i0MV
 wUOk2WjxhxveoIa4Jw/hJa4R9rU+rCVdt0bKinYyOmdtwTDw6McurmNLoAS88fQrzjk1
 UK0YN32l6MdAualtAHnidtHmjVVrRZqjuAIvN2MiDfs8IpSHBfvqvf38gU79YPPnWSgv
 Hlpw==
X-Gm-Message-State: APjAAAWFRjsJ2fVd4RbOCxWQmluntXt0+LYn4gElJcbB9PGJyxBc58Oe
 4nA4x8YkK915gMFgrIb+0/oEcQ==
X-Google-Smtp-Source: APXvYqxBHSE2zoQxgjv8HPlkW53ESN1X/xGApC8M002GlmgiXT0U6v8Nos1vxzgETS+06c7LmVjIFA==
X-Received: by 2002:a5d:6402:: with SMTP id z2mr7104167wru.211.1572547280655; 
 Thu, 31 Oct 2019 11:41:20 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id w81sm3598191wmg.5.2019.10.31.11.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 11:41:19 -0700 (PDT)
Message-ID: <5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com>
Date: Thu, 31 Oct 2019 11:41:19 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Lab-Name: lab-theobroma-systems
X-Kernelci-Branch: devel
X-Kernelci-Tree: linusw
X-Kernelci-Kernel: v5.4-rc1-31-g6a41b6c5fc20
X-Kernelci-Report-Type: bisect
Subject: linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on
 rk3399-puma-haikou
To: Linus Walleij <linus.walleij@linaro.org>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com, broonie@kernel.org,
 matthew.hart@linaro.org, Scott Branden <scott.branden@broadcom.com>,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_114122_979272_36492DFF 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on rk3399-puma-haikou

Summary:
  Start:      6a41b6c5fc20 gpio: Add xgs-iproc driver
  Details:    https://kernelci.org/boot/id/5dbb12bf59b514404f60ee79
  Plain log:  https://storage.kernelci.org//linusw/devel/v5.4-rc1-31-g6a41b6c5fc20/arm64/defconfig/gcc-8/lab-theobroma-systems/boot-rk3399-puma-haikou.txt
  HTML log:   https://storage.kernelci.org//linusw/devel/v5.4-rc1-31-g6a41b6c5fc20/arm64/defconfig/gcc-8/lab-theobroma-systems/boot-rk3399-puma-haikou.html
  Result:     6a41b6c5fc20 gpio: Add xgs-iproc driver

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       linusw
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/
  Branch:     devel
  Target:     rk3399-puma-haikou
  CPU arch:   arm64
  Lab:        lab-theobroma-systems
  Compiler:   gcc-8
  Config:     defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 6a41b6c5fc20abced88fa0eed42ae5e5cb70b280
Author: Chris Packham <chris.packham@alliedtelesis.co.nz>
Date:   Fri Oct 25 09:27:03 2019 +1300

    gpio: Add xgs-iproc driver
    
    This driver supports the Chip Common A GPIO controller present on a
    number of Broadcom switch ASICs with integrated SoCs. The controller is
    similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
    different enough that a separate driver is required.
    
    This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
    support (pinctrl-iproc-gpio covers CCB).
    
    Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
    Link: https://lore.kernel.org/r/20191024202703.8017-3-chris.packham@alliedtelesis.co.nz
    Acked-by: Scott Branden <scott.branden@broadcom.com>
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 8ec1f041c98d..e9516393c971 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -155,6 +155,15 @@ config GPIO_BCM_KONA
 	help
 	  Turn on GPIO support for Broadcom "Kona" chips.
 
+config GPIO_BCM_XGS_IPROC
+	tristate "BRCM XGS iProc GPIO support"
+	depends on OF_GPIO && (ARCH_BCM_IPROC || COMPILE_TEST)
+	select GPIO_GENERIC
+	select GPIOLIB_IRQCHIP
+	default ARCH_BCM_IPROC
+	help
+	  Say yes here to enable GPIO support for Broadcom XGS iProc SoCs.
+
 config GPIO_BRCMSTB
 	tristate "BRCMSTB GPIO support"
 	default y if (ARCH_BRCMSTB || BMIPS_GENERIC)
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 84e05701f500..34eb8b2b12dd 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -35,6 +35,7 @@ obj-$(CONFIG_GPIO_ASPEED)		+= gpio-aspeed.o
 obj-$(CONFIG_GPIO_ASPEED_SGPIO)		+= gpio-aspeed-sgpio.o
 obj-$(CONFIG_GPIO_ATH79)		+= gpio-ath79.o
 obj-$(CONFIG_GPIO_BCM_KONA)		+= gpio-bcm-kona.o
+obj-$(CONFIG_GPIO_BCM_XGS_IPROC)	+= gpio-xgs-iproc.o
 obj-$(CONFIG_GPIO_BD70528)		+= gpio-bd70528.o
 obj-$(CONFIG_GPIO_BD9571MWV)		+= gpio-bd9571mwv.o
 obj-$(CONFIG_GPIO_BRCMSTB)		+= gpio-brcmstb.o
diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
new file mode 100644
index 000000000000..a3fdd95cc9e6
--- /dev/null
+++ b/drivers/gpio/gpio-xgs-iproc.c
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 Broadcom
+ */
+
+#include <linux/gpio/driver.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+
+#define IPROC_CCA_INT_F_GPIOINT		BIT(0)
+#define IPROC_CCA_INT_STS		0x20
+#define IPROC_CCA_INT_MASK		0x24
+
+#define IPROC_GPIO_CCA_DIN		0x0
+#define IPROC_GPIO_CCA_DOUT		0x4
+#define IPROC_GPIO_CCA_OUT_EN		0x8
+#define IPROC_GPIO_CCA_INT_LEVEL	0x10
+#define IPROC_GPIO_CCA_INT_LEVEL_MASK	0x14
+#define IPROC_GPIO_CCA_INT_EVENT	0x18
+#define IPROC_GPIO_CCA_INT_EVENT_MASK	0x1C
+#define IPROC_GPIO_CCA_INT_EDGE		0x24
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
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 irq_type, event_status = 0;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	irq_type = irq_get_trigger_type(irq);
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_status |= BIT(pin);
+		writel_relaxed(event_status,
+			       chip->base + IPROC_GPIO_CCA_INT_EVENT);
+	}
+	spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static void iproc_gpio_irq_unmask(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 int_mask, irq_type, event_mask;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	irq_type = irq_get_trigger_type(irq);
+	event_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	int_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_mask |= 1 << pin;
+		writel_relaxed(event_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	} else {
+		int_mask |= 1 << pin;
+		writel_relaxed(int_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+	}
+	spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static void iproc_gpio_irq_mask(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 irq_type, int_mask, event_mask;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	irq_type = irq_get_trigger_type(irq);
+	event_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	int_mask = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+
+	if (irq_type & IRQ_TYPE_EDGE_BOTH) {
+		event_mask &= ~BIT(pin);
+		writel_relaxed(event_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+	} else {
+		int_mask &= ~BIT(pin);
+		writel_relaxed(int_mask,
+			       chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+	}
+	spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static int iproc_gpio_irq_set_type(struct irq_data *d, u32 type)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct iproc_gpio_chip *chip = to_iproc_gpio(gc);
+	int pin = d->hwirq;
+	unsigned long flags;
+	u32 irq = d->irq;
+	u32 event_pol, int_pol;
+	int ret = 0;
+
+	spin_lock_irqsave(&chip->lock, flags);
+	switch (type & IRQ_TYPE_SENSE_MASK) {
+	case IRQ_TYPE_EDGE_RISING:
+		event_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		event_pol &= ~BIT(pin);
+		writel_relaxed(event_pol, chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		break;
+	case IRQ_TYPE_EDGE_FALLING:
+		event_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		event_pol |= BIT(pin);
+		writel_relaxed(event_pol, chip->base + IPROC_GPIO_CCA_INT_EDGE);
+		break;
+	case IRQ_TYPE_LEVEL_HIGH:
+		int_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		int_pol &= ~BIT(pin);
+		writel_relaxed(int_pol, chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		break;
+	case IRQ_TYPE_LEVEL_LOW:
+		int_pol = readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		int_pol |= BIT(pin);
+		writel_relaxed(int_pol, chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		break;
+	default:
+		/* should not come here */
+		ret = -EINVAL;
+		goto out_unlock;
+	}
+
+	if (type & IRQ_TYPE_LEVEL_MASK)
+		irq_set_handler_locked(irq_get_irq_data(irq), handle_level_irq);
+	else if (type & IRQ_TYPE_EDGE_BOTH)
+		irq_set_handler_locked(irq_get_irq_data(irq), handle_edge_irq);
+
+out_unlock:
+	spin_unlock_irqrestore(&chip->lock, flags);
+
+	return ret;
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
+	int_status = readl_relaxed(chip->intr + IPROC_CCA_INT_STS);
+	if (int_status & IPROC_CCA_INT_F_GPIOINT) {
+		u32 event, level;
+
+		/* Get level and edge interrupts */
+		event =
+		    readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT_MASK);
+		event &= readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_EVENT);
+		level = readl_relaxed(chip->base + IPROC_GPIO_CCA_DIN);
+		level ^= readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL);
+		level &=
+		    readl_relaxed(chip->base + IPROC_GPIO_CCA_INT_LEVEL_MASK);
+		int_bits = level | event;
+
+		for_each_set_bit(bit, &int_bits, gc->ngpio)
+			generic_handle_irq(irq_linear_revmap(gc->irq.domain, bit));
+	}
+
+	return int_bits ? IRQ_HANDLED : IRQ_NONE;
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
+	spin_lock_init(&chip->lock);
+
+	chip->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(chip->base))
+		return PTR_ERR(chip->base);
+
+	ret = bgpio_init(&chip->gc, dev, 4,
+			 chip->base + IPROC_GPIO_CCA_DIN,
+			 chip->base + IPROC_GPIO_CCA_DOUT,
+			 NULL,
+			 chip->base + IPROC_GPIO_CCA_OUT_EN,
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
+		val = readl_relaxed(chip->intr + IPROC_CCA_INT_MASK);
+		val |= IPROC_CCA_INT_F_GPIOINT;
+		writel_relaxed(val, chip->intr + IPROC_CCA_INT_MASK);
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
+		girq->chip = irqc;
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
+		val = readl_relaxed(chip->intr + IPROC_CCA_INT_MASK);
+		val &= ~IPROC_CCA_INT_F_GPIOINT;
+		writel_relaxed(val, chip->intr + IPROC_CCA_INT_MASK);
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
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [fe12e94375da34d62f7d5556161ce7629212ff80] Merge tag 'gpio-v5.5-updates-for-linus-part-1' of git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux into devel
git bisect good fe12e94375da34d62f7d5556161ce7629212ff80
# bad: [6a41b6c5fc20abced88fa0eed42ae5e5cb70b280] gpio: Add xgs-iproc driver
git bisect bad 6a41b6c5fc20abced88fa0eed42ae5e5cb70b280
# good: [d57eb825e0dc6f0b5be78251d69cbf1bdd1db622] gpio: Add RDA Micro GPIO controller support
git bisect good d57eb825e0dc6f0b5be78251d69cbf1bdd1db622
# good: [1dfc462a54386d8467ff427ef900f553e2e470e3] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
git bisect good 1dfc462a54386d8467ff427ef900f553e2e470e3
# first bad commit: [6a41b6c5fc20abced88fa0eed42ae5e5cb70b280] gpio: Add xgs-iproc driver
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
