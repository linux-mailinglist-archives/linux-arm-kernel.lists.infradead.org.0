Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE7112F1BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 00:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=na8AkYNUOPWWBLx82nRxGJCh8gMQkGTaShMT/btNJZ0=; b=WfXgjp6d1+T8/3Jzc7sD9Q+9O+
	VeWuEKuKTSGg5loWsoGCw44kYDyapQqgqD9NolXisbnjAdV7SmvINPf6n0GcUnH4BKniU/EGZUOE2
	7DNb48yZ1+FHMwZpt6cEScdoBjwN6w07iEgrvfryCto09IUKHsZt7eShzTNatglib8D/y/GRc2NlK
	22aYtjX5bjS+QY6HHAsQIPs1XZZ76qKLDjevgkexoXY2xlngxJfMH+qI+lVmYcjdyzAvlwCgm9isd
	mWsSKlxK3OKzV6x90FJYW6wSG7IqMg/NzQjHwc52chpaV8X1rfZilYwSWucfrv8SgPod4glJVKGch
	POyUouNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in9gg-0000mN-Gy; Thu, 02 Jan 2020 23:15:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in9g4-0007co-Ae
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 23:14:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so7139343wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 15:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VTfXXdQ4DaxX2MrB4LmP+Aif0Q6oi4pCATE+/VJBSQM=;
 b=XfL2Mp6mF0j02+Mx1hWLUnGOA7wAsq0Bti5MnU/f4Mp/16QraUGtGG784B6fpIOoXA
 JU57eT5H5zbuOUuOvvAxB30ExpiB4JPT8KEBdhEB6y25Y9+aCUrmS1NgMxiY3mqEtEnH
 iUGNJzv0bF5vElNJH3Gp6ks1MLs9gjne1WugqSdDXFE0MrolZdHJMmQRk0YypblLJ1OH
 7OGI6Q+kY8OuRToLX4YYFDkgy/2U5PfUv39y5ygQfGgGZtD3YCFHXMToZcWTCUDIaM7h
 dFvtOWk2UhsQ7Eicu0L67WjGGissCqWwFacJQimimsVDSUsnpwguUvXQlqeUjPTnep3F
 yYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VTfXXdQ4DaxX2MrB4LmP+Aif0Q6oi4pCATE+/VJBSQM=;
 b=Hqck/bMN7pEjXjfNW4uxLARIL1tze7rhoTTXQTYvoxvu0YiKxlFYBxljNQDaGzL9SH
 AUVglT4LX+MUGQIYlGBHSBRpKYpP8kDIgOlbw2iWt/D/un7Z17V0F93gV0YCX1ezKU2T
 ecaW7ujKOYJj/tlN5WXCKTwByrV2rKySwu+aIGyexbX92hirp++DC9kcIDF1Cg0G23wE
 OE60yZaMkBpdyBb1JSeFDT1+A03GMjP9WxKexRzF3p81nCQjG1NVSQmwYLQ0fIu8vuqo
 19OPlgw28Ho35eaRFL70ZllEocgGtPe9kWPfrfsuqk4IJxhsFKB8ZLuLPxJotdfQb41a
 IXbg==
X-Gm-Message-State: APjAAAXDd7Gtl/DtO1E1wRm02IxET7XwJFjlm2tS+p4rjMwZcyUh9X5N
 ggEN3ovGprLjWvkLYF9t2VY=
X-Google-Smtp-Source: APXvYqy+KtO1EhMOojqacKzhBKB/AComoMyRoMJHdAeWNF0QTJABnPZu5GPo3N5iBDUHq9zKrk7itA==
X-Received: by 2002:a7b:cc6a:: with SMTP id n10mr16778749wmj.170.1578006891076; 
 Thu, 02 Jan 2020 15:14:51 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i10sm58214711wru.16.2020.01.02.15.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 15:14:50 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] reset: Add Broadcom STB RESCAL reset controller
Date: Thu,  2 Jan 2020 15:14:35 -0800
Message-Id: <20200102231435.21703-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200102231435.21703-1-f.fainelli@gmail.com>
References: <20200102231435.21703-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_151452_381350_74D88453 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jim Quinlan <im2101024@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jim2101024@gmail.com>

On BCM7216 there is a special purpose reset controller named RESCAL
(reset calibration) which is necessary for SATA and PCIe0/1 to operate
correctly. This commit adds support for such a reset controller to be
available.

Signed-off-by: Jim Quinlan <im2101024@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/reset/Kconfig                |   7 ++
 drivers/reset/Makefile               |   1 +
 drivers/reset/reset-brcmstb-rescal.c | 110 +++++++++++++++++++++++++++
 3 files changed, 118 insertions(+)
 create mode 100644 drivers/reset/reset-brcmstb-rescal.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 12f5c897788d..b7cc0a2049d9 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -49,6 +49,13 @@ config RESET_BRCMSTB
 	  This enables the reset controller driver for Broadcom STB SoCs using
 	  a SUN_TOP_CTRL_SW_INIT style controller.
 
+config RESET_BRCMSTB_RESCAL
+	bool "Broadcom STB RESCAL reset controller"
+	default ARCH_BRCMSTB || COMPILE_TEST
+	help
+	  This enables the RESCAL reset controller for SATA, PCIe0, or PCIe1 on
+	  BCM7216.
+
 config RESET_HSDK
 	bool "Synopsys HSDK Reset Driver"
 	depends on HAS_IOMEM
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 00767c03f5f2..1e4291185c52 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
 obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
 obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
 obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
+obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
 obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
diff --git a/drivers/reset/reset-brcmstb-rescal.c b/drivers/reset/reset-brcmstb-rescal.c
new file mode 100644
index 000000000000..e1c038e62855
--- /dev/null
+++ b/drivers/reset/reset-brcmstb-rescal.c
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2020 Broadcom */
+
+#include <linux/device.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+
+#define BRCM_RESCAL_START	0x0
+#define  BRCM_RESCAL_START_BIT	BIT(0)
+#define BRCM_RESCAL_CTRL	0x4
+#define BRCM_RESCAL_STATUS	0x8
+#define  BRCM_RESCAL_STATUS_BIT	BIT(0)
+
+struct brcm_rescal_reset {
+	void __iomem	*base;
+	struct device *dev;
+	struct reset_controller_dev rcdev;
+};
+
+static int brcm_rescal_reset_set(struct reset_controller_dev *rcdev,
+				 unsigned long id)
+{
+	struct brcm_rescal_reset *data =
+		container_of(rcdev, struct brcm_rescal_reset, rcdev);
+	void __iomem *base = data->base;
+	u32 reg;
+	int ret;
+
+	reg = readl(base + BRCM_RESCAL_START);
+	writel(reg | BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
+	reg = readl(base + BRCM_RESCAL_START);
+	if (!(reg & BRCM_RESCAL_START_BIT)) {
+		dev_err(data->dev, "failed to start SATA/PCIe rescal\n");
+		return -EIO;
+	}
+
+	ret = readl_poll_timeout(base + BRCM_RESCAL_STATUS, reg,
+				 !(reg & BRCM_RESCAL_STATUS_BIT), 100, 1000);
+	if (ret) {
+		dev_err(data->dev, "time out on SATA/PCIe rescal\n");
+		return -ETIMEDOUT;
+	}
+
+	reg = readl(base + BRCM_RESCAL_START);
+	writel(reg & ~BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
+	(void)readl(base + BRCM_RESCAL_START);
+
+	dev_dbg(data->dev, "SATA/PCIe rescal success\n");
+
+	return 0;
+}
+
+static int brcm_rescal_reset_xlate(struct reset_controller_dev *rcdev,
+				   const struct of_phandle_args *reset_spec)
+{
+	/* This is needed if #reset-cells == 0. */
+	return 0;
+}
+
+static const struct reset_control_ops brcm_rescal_reset_ops = {
+	.reset = brcm_rescal_reset_set,
+};
+
+static int brcm_rescal_reset_probe(struct platform_device *pdev)
+{
+	struct brcm_rescal_reset *data;
+	struct resource *res;
+
+	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	data->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(data->base))
+		return PTR_ERR(data->base);
+
+	platform_set_drvdata(pdev, data);
+
+	data->rcdev.owner = THIS_MODULE;
+	data->rcdev.nr_resets = 1;
+	data->rcdev.ops = &brcm_rescal_reset_ops;
+	data->rcdev.of_node = pdev->dev.of_node;
+	data->rcdev.of_xlate = brcm_rescal_reset_xlate;
+	data->dev = &pdev->dev;
+
+	return devm_reset_controller_register(&pdev->dev, &data->rcdev);
+}
+
+static const struct of_device_id brcm_rescal_reset_of_match[] = {
+	{ .compatible = "brcm,bcm7216-pcie-sata-rescal" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, brcm_rescal_reset_of_match);
+
+static struct platform_driver brcm_rescal_reset_driver = {
+	.probe = brcm_rescal_reset_probe,
+	.driver = {
+		.name	= "brcm-rescal-reset",
+		.of_match_table	= brcm_rescal_reset_of_match,
+	}
+};
+module_platform_driver(brcm_rescal_reset_driver);
+
+MODULE_AUTHOR("Broadcom");
+MODULE_DESCRIPTION("Broadcom SATA/PCIe rescal reset controller");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
