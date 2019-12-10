Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB3A119171
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:03:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YdOW5NJKrk7veuvl/wJGaIyNGipZzRwmt6GCHyTffDw=; b=QDJBD+p/PnrkFGXZPcdqTNUHdu
	MOUj7KbGbmqdCAQDkC9B8/vZkUJ3pPEkIa38ysFmDZVYovK8G4SIWyiw/tadNFt2voe0VgKUqqO6U
	fAG9DdOcgHhhszQiNMM2J9bezhnEP/mD4g7+AEuGjlnx8ITkcctnxJ7wEDyst20bE20B0gVz6GLyk
	WtxLRiAKGIk2bMnd7uUr51A1MjYKQQs8N9CZ3DED153Sw94cqk3bKXj/60pWe+IIhpj5Lt6TkrAI8
	9z15rlEUTMwfHqC63yBTbx8YgvzHQbae0Eryfyagki5vUlKtkprLKS+/E3zBxhI2Vm8ycKqVtQRAs
	SAhWC+bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielin-0005bt-Fs; Tue, 10 Dec 2019 20:03:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielhY-0004MU-EK
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:01:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so21538570wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gXxjPhJ3Q7lu/30NWGeVZetMfJAJiDa+9jYWsXuiNY4=;
 b=QwyahkVI/O2HXvXv01ZnNh5RjagGtwlxGoPp97Kvt1FjORtnBVkybPbcIdhn/TT4z9
 McqMXz5y0280tJFMD4jzZbp5PXxqILyf876XCWN5b5V5dHyuGFyzXa3XXzmmxrWIoKAp
 jYwQlKE0XDAUaToLLRYvNuSvinUnoRCe7oM5GH1p6hCA0wvwAxFz1Dv9Ut6yBC9HHfZ9
 rjFW1blGL6I6LVWNSP9WJftoxojZ0GhrJeq5BY56psiNI871Wws7yWtsZYoLgVUlgt7h
 mab0mv0siqcdJXH+b6f0XxC1m/eWIoe+e9pxTmjcowk09VrNsPmte+xFOwqsdKp1RhuG
 B4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gXxjPhJ3Q7lu/30NWGeVZetMfJAJiDa+9jYWsXuiNY4=;
 b=SYYq7xPalLUlCm2YzK/7V2zBdFrGnm6FU/DDWckE/AZUus3XCp/Rj9QsJRIEcd3ZQp
 62j2n2XQZpAgrOgjGoaqcrEIgMrdPhHsJLfy+m7TR7MIRPd0CvbAvonz7cgDDlj2y4az
 LWc+qBLWv5jMoa++MJ6F354nqTl2igOkyRontn1d3zAQU7nNiWLAk29lF/TZJKHImT8R
 ppt1iY89OswT6fi5fjWHE1xw7ESlvYiIbhinxSZBDTDqepkunS6b+W0L7uSoxBcUDpPu
 5GXG78PEfuonzmfV8k+vfA8jvxCDQBie0xw5bU/zCqljJTY2JTbBPN3rYhHGVn3uG7h1
 VasA==
X-Gm-Message-State: APjAAAXBUKf6OJvh2l/dtR27N8J7NfvmZItzt8BWAga4utcoEW4Gj6DH
 OvLWTMmRI5o6j58fTIGmBO4=
X-Google-Smtp-Source: APXvYqzlwL2JVvC24iFfkTJHpiYHh759+P/FnYILdCUDrTo3HueHBW1pbEbI79hKMfNAMaulXP3iHA==
X-Received: by 2002:a5d:65c5:: with SMTP id e5mr5190052wrw.311.1576008102576; 
 Tue, 10 Dec 2019 12:01:42 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z6sm4352255wmz.12.2019.12.10.12.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:01:41 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] reset: Add Broadcom STB RESCAL reset controller
Date: Tue, 10 Dec 2019 11:59:03 -0800
Message-Id: <20191210195903.24127-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210195903.24127-1-f.fainelli@gmail.com>
References: <20191210195903.24127-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120144_696948_749C78F4 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
 drivers/reset/reset-brcmstb-rescal.c | 124 +++++++++++++++++++++++++++
 3 files changed, 132 insertions(+)
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
index 000000000000..58a30e624a14
--- /dev/null
+++ b/drivers/reset/reset-brcmstb-rescal.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018 Broadcom */
+
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+#include <linux/types.h>
+
+#define BRCM_RESCAL_START	0
+#define	BRCM_RESCAL_START_BIT	BIT(0)
+#define BRCM_RESCAL_CTRL	4
+#define BRCM_RESCAL_STATUS	8
+#define BRCM_RESCAL_STATUS_BIT	BIT(0)
+
+struct brcm_rescal_reset {
+	void __iomem	*base;
+	struct device *dev;
+	struct reset_controller_dev rcdev;
+};
+
+static int brcm_rescal_reset_assert(struct reset_controller_dev *rcdev,
+				      unsigned long id)
+{
+	return 0;
+}
+
+static int brcm_rescal_reset_deassert(struct reset_controller_dev *rcdev,
+				      unsigned long id)
+{
+	struct brcm_rescal_reset *data =
+		container_of(rcdev, struct brcm_rescal_reset, rcdev);
+	void __iomem *base = data->base;
+	const int NUM_RETRIES = 10;
+	u32 reg;
+	int i;
+
+	reg = readl(base + BRCM_RESCAL_START);
+	writel(reg | BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
+	reg = readl(base + BRCM_RESCAL_START);
+	if (!(reg & BRCM_RESCAL_START_BIT)) {
+		dev_err(data->dev, "failed to start sata/pcie rescal\n");
+		return -EIO;
+	}
+
+	reg = readl(base + BRCM_RESCAL_STATUS);
+	for (i = NUM_RETRIES; i >= 0 &&  !(reg & BRCM_RESCAL_STATUS_BIT); i--) {
+		udelay(100);
+		reg = readl(base + BRCM_RESCAL_STATUS);
+	}
+	if (!(reg & BRCM_RESCAL_STATUS_BIT)) {
+		dev_err(data->dev, "timedout on sata/pcie rescal\n");
+		return -ETIMEDOUT;
+	}
+
+	reg = readl(base + BRCM_RESCAL_START);
+	writel(reg ^ BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
+	reg = readl(base + BRCM_RESCAL_START);
+	dev_dbg(data->dev, "sata/pcie rescal success\n");
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
+	.assert = brcm_rescal_reset_assert,
+	.deassert = brcm_rescal_reset_deassert,
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
+
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
+MODULE_DESCRIPTION("Broadcom Sata/PCIe rescal reset controller");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
