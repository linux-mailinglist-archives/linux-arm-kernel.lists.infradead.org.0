Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C7812FCD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 20:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SPpzcV/a0/1CXBF7s8WhvM/XGqMW+BDLdXqL/iYghQ4=; b=b1tNz/wvzot8TiksHoZ6ANn3wl
	2PuoYKQWmOQTYFvJZyLPzVnnWYqe3ksGX+e+eB5UPnnIpw18eG6jUQp4B9tnbsTsdtw3ANm/S+4rs
	d9zYKAVJDWKzn1EUWoi9mKHT/0MGPg6/fyLzzArUQnIVY16hvGY72J6BWipgngb1OmhpVAQtreVF3
	VDiwmXfi28yOVJR7RVvEDfivuAyy2jeRH/pR//NLEoYp3Uv+RarykXf99OlfW7QjRRiUzo9mKU1xu
	NiMh8TLN1Km8yfUAj9kPoFAjC6HY0WwONj2w8qrz46EjV5EIhqk9ZBj61rg9ElCZVJDmyhrOo0pHM
	9XlCjrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inSGL-0003iJ-1g; Fri, 03 Jan 2020 19:05:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inSFZ-00026P-1w
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 19:04:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id d139so7513870wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 11:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LJc4p3FlODcQIsYgVOBme1xyncONHScEBKawv+qDbnE=;
 b=DNQgsV5bFcnyIBr7pylb6ehp/50srPAwFIUiOsVaRll9gEWrTW6ugPOPXqP8p5hcU8
 RMCqsjDfK7mUBHwGaGDezTuvtaExap36VAACecX/gQDb0Mn4oSpAiLHySCIyWCzwKeHM
 ctgTHdeJbXPm8vRM+E2gqWP6pUqnB3pF1bbS49+aqY8YMr3i3V1XDXs1GdxFOkaG8+tE
 Y9WIRbnj6vqf91dLkxNalZtMhQzLrLbsvcGCqRIxxa4oJr0FrjBegjRvoX7wE1IZD1tR
 lkubnV7XM+usGwaS6tZXit6OAM7bBc5hnBfQP10Jr1/gKYLOVuO7dkJiRbQ2ZhrT7mkR
 bk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LJc4p3FlODcQIsYgVOBme1xyncONHScEBKawv+qDbnE=;
 b=qzws6zE9pTOVBoPmj0bJ5EKdfGKFKtXiuaCAnZBFjmbi/LqB6SZ8k6/JWvcdv3sSI1
 gvC5NZaHU/BlnSD7f8tzuAJGJtz0Fb90OMUWU77HX6iPyQEpQ1CNzpduirbp060Du89n
 nHjfvC3bKpWuwh3GQxNdV3muQlhWSN1eN+XSZcG6Z5bLurA+pyVQhW+KszGN2j2NQA/y
 XW3dIOPTpPLMZB1CNPk7UcGUDdVJKo5oJuIquxhQjv/HKH+/NETbN5jxBWlrJrQsyFh/
 1eHeO7oVVPO3OXm480XwRJ21bkIQ+1sKhRtAs82tpPgcxZb+zbi340oWur3VVwWl/ZNH
 hONw==
X-Gm-Message-State: APjAAAXHNPdRp12swMQm9RvZHb1pgOUhRtOPlf5Cc4NcxNjzYVBW28uT
 mGl0E7sfdqLiuqvuMdmB0Lc=
X-Google-Smtp-Source: APXvYqyW/K2xJVWsHHLgUS+so5qh8fHSu1Yr5Ojz6AZPiuRiRMRSHfkIwEzhQxmCf80Lcno9IbhPfw==
X-Received: by 2002:a7b:cd0a:: with SMTP id f10mr21822578wmj.56.1578078283105; 
 Fri, 03 Jan 2020 11:04:43 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f16sm60822416wrm.65.2020.01.03.11.04.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 11:04:42 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] reset: Add Broadcom STB RESCAL reset controller
Date: Fri,  3 Jan 2020 11:04:29 -0800
Message-Id: <20200103190429.1847-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103190429.1847-1-f.fainelli@gmail.com>
References: <20200103190429.1847-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_110445_137346_9E198872 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
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

Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/reset/Kconfig                |   7 ++
 drivers/reset/Makefile               |   1 +
 drivers/reset/reset-brcmstb-rescal.c | 107 +++++++++++++++++++++++++++
 3 files changed, 115 insertions(+)
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
index 000000000000..b6f074d6a65f
--- /dev/null
+++ b/drivers/reset/reset-brcmstb-rescal.c
@@ -0,0 +1,107 @@
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
+	void __iomem *base;
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
+		return ret;
+	}
+
+	reg = readl(base + BRCM_RESCAL_START);
+	writel(reg & ~BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
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
