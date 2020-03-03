Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AE61771E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qUVT/zwXdEfkEG4DtUK022EO/LyrSik1hFiDvSeTevk=; b=m26QQzskQSSIZteostXdgdmtHC
	gBi+DqzR9Qn/kxeg8Dnms38pGmr+8CtTrp0EFQ220nXfLgyYOrT6in9iU0ND99rx2i4ThVx7dda2l
	nA06s1/ozXoewg4nyeSUvU4EfjWYlmSM6JLLg/NabFNdcu8YX3JxIgUi6q1K70JQYZgsziWSccLQ6
	ZdYeaTuVvbAeerowPktk9tJU/6xEQ/RulI0vinrTITbhQfXXfi1CvbwUPa4MmMyI3bILeHh4lQWSC
	Y+rBsE4oBo1SQZmaAZb6R3E+F3MfLMxqlDA7YIo+XBcifAm3mvhYLMlB8rv84f86yWedNZPBLcjtr
	1FPsihdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Tq-0006JH-Hk; Tue, 03 Mar 2020 09:04:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Sn-0005aZ-Dg
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:03:43 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A64831A145D;
 Tue,  3 Mar 2020 10:03:37 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8F9DD1A09DD;
 Tue,  3 Mar 2020 10:03:37 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7FF9420414;
 Tue,  3 Mar 2020 10:03:36 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [RFC 01/11] mfd: Add i.MX generic mix support
Date: Tue,  3 Mar 2020 11:03:16 +0200
Message-Id: <1583226206-19758-2-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_010341_736785_31620460 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of the i.MX SoCs have a IP for interfacing the dedicated IPs with
clocks, resets and interrupts, plus some other specific control registers.
To allow the functionality to be split between drivers, this MFD driver is
added that has only two purposes: register the devices and map the entire
register addresses. Everything else is left to the dedicated drivers that will
bind to the registered devices.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/mfd/Kconfig   | 11 +++++++++++
 drivers/mfd/Makefile  |  1 +
 drivers/mfd/imx-mix.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 60 insertions(+)
 create mode 100644 drivers/mfd/imx-mix.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 3c547ed..3c89288 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -460,6 +460,17 @@ config MFD_MX25_TSADC
 	  i.MX25 processors. They consist of a conversion queue for general
 	  purpose ADC and a queue for Touchscreens.
 
+config MFD_IMX_MIX
+	tristate "NXP i.MX Generic Mix Control Driver"
+	depends on OF || COMPILE_TEST
+	help
+	  Enable generic mixes support. On some i.MX platforms, there are
+	  devices that are a mix of multiple functionalities like reset
+	  controllers, clock controllers and some others. In order to split
+	  those functionalities between the right drivers, this MFD populates
+	  with virtual devices based on what's found in the devicetree node,
+	  leaving the rest of the behavior control to the dedicated driver.
+
 config MFD_HI6421_PMIC
 	tristate "HiSilicon Hi6421 PMU/Codec IC"
 	depends on OF
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f935d10..5b2ae5d 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -113,6 +113,7 @@ obj-$(CONFIG_MFD_TWL4030_AUDIO)	+= twl4030-audio.o
 obj-$(CONFIG_TWL6040_CORE)	+= twl6040.o
 
 obj-$(CONFIG_MFD_MX25_TSADC)	+= fsl-imx25-tsadc.o
+obj-$(CONFIG_MFD_IMX_MIX)	+= imx-mix.o
 
 obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx-core.o
 obj-$(CONFIG_MFD_MC13XXX_SPI)	+= mc13xxx-spi.o
diff --git a/drivers/mfd/imx-mix.c b/drivers/mfd/imx-mix.c
new file mode 100644
index 00000000..d3f8c71
--- /dev/null
+++ b/drivers/mfd/imx-mix.c
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+#include <linux/platform_device.h>
+#include <linux/of_platform.h>
+
+#include <linux/mfd/core.h>
+
+static int imx_audiomix_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	void __iomem *base;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	dev_set_drvdata(dev, base);
+
+	return devm_of_platform_populate(dev);
+}
+
+static const struct of_device_id imx_audiomix_of_match[] = {
+	{ .compatible = "fsl,imx8mp-audiomix" },
+	{ /* Sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, imx_audiomix_of_match);
+
+static struct platform_driver imx_audiomix_driver = {
+	.probe = imx_audiomix_probe,
+	.driver = {
+		.name = "imx-audiomix",
+		.of_match_table = of_match_ptr(imx_audiomix_of_match),
+	},
+};
+module_platform_driver(imx_audiomix_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
