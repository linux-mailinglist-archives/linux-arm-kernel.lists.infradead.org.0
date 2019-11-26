Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BE21098E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 06:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaccmMX7os77LFB0w2bZcfBAUj1RWczpdris9LpQ25A=; b=RuKqUXzsYsCY+S
	MD9yXLD78wpUQ81dNo9XbQMX8mnYn91ayXgHHOJwMA5p2I0QepQqSWG7L1p3hsuD2PMFOaGD2cybu
	K32x4Dv4UnzC2p/dXbRuJJF1vXRecndhIe0Ie61ARNhjqmEUJHlPkqNBQxeVC089XpwffdXm7XC2E
	K9VAPzNT7TPssWXcL3qQj1h+CD1Ny5C0xSrT4nHv+m6vwlfSYkqc9VLGitxBW1Oy3bzl0sohVsG/d
	U4BuFctg83PgAecKH1z0YXZX44uIkFA9wSC03Hh2SzyWEdolvdJWUzrvmrSGcRe2O/wLJblfG3w4t
	cZykgcfqiB4DmJ3DgcNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZTYH-000536-8g; Tue, 26 Nov 2019 05:38:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZTXB-000478-CP; Tue, 26 Nov 2019 05:37:11 +0000
X-UUID: 7ea9c0c4815848618f1def4cd7ca3c89-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=hFL5vz7eKp6uNs/FXh/b9reSAR4W3oNkLg9bRkAq17w=; 
 b=gbIz5wXwxQPvWbcGAuP22JA7wttL1F4kpqmsHIr88vjvGRzqGMy3RPtKzCnsJz2ZM1tzn1PMsYhRidQqCchF8OSyt+DG2Sx/e+XFwovwzOHX1HjT8pGO3+s8yesi3vVF+5asOVyh9JI4/tsc1+Kk1mh8yJgEXbpSLM7/U4i1o1k=;
X-UUID: 7ea9c0c4815848618f1def4cd7ca3c89-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <freddy.hsin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2648324; Mon, 25 Nov 2019 21:36:48 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 21:35:03 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 13:34:45 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 13:34:34 +0800
From: <freddy.hsin@mediatek.com>
To: <sre@kernel.org>, <linux-pm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 1/4] power: reset: add reboot mode driver
Date: Tue, 26 Nov 2019 13:34:47 +0800
Message-ID: <1574746490-625-2-git-send-email-freddy.hsin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
References: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_213709_436160_EF4F004E 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Freddy Hsin <freddy.hsin@mediatek.com>, Chang-An.Chen@mediatek.com,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Freddy Hsin <freddy.hsin@mediatek.com>

This driver parses the reboot commands like "reboot bootloader"
and "reboot recovery" to get a boot mode described in the
device tree , then call the write interfae to store the boot
mode in mtk RGU (reset generation unit) non-volatile register,
which can be read by the bootloader after system reboot, then
the bootloader can take different action according to the mode
stored.

Signed-off-by: Freddy Hsin <freddy.hsin@mediatek.com>
---
 drivers/power/reset/Kconfig      |   11 ++++
 drivers/power/reset/Makefile     |    1 +
 drivers/power/reset/mtk-reboot.c |  116 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 128 insertions(+)
 create mode 100644 drivers/power/reset/mtk-reboot.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index a564237..31fedb8 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -256,5 +256,16 @@ config NVMEM_REBOOT_MODE
 	  then the bootloader can read it and take different
 	  action according to the mode.
 
+config MTK_REBOOT_MODE
+	tristate "Mediatek SoCs reset driver"
+	depends on OF
+	depends on REGMAP
+	select REBOOT_MODE
+	help
+	  Say y here will enable reboot mode driver. This will
+	  get reboot mode arguments and store it in RGU mapped
+	  register, then the bootloader can read it to take different
+	  action according to the mode.
+
 endif
 
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 85da3198..2c64104 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -30,3 +30,4 @@ obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
 obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
 obj-$(CONFIG_POWER_RESET_SC27XX) += sc27xx-poweroff.o
 obj-$(CONFIG_NVMEM_REBOOT_MODE) += nvmem-reboot-mode.o
+obj-$(CONFIG_MTK_REBOOT_MODE) += mtk-reboot.o
diff --git a/drivers/power/reset/mtk-reboot.c b/drivers/power/reset/mtk-reboot.c
new file mode 100644
index 0000000..545c427
--- /dev/null
+++ b/drivers/power/reset/mtk-reboot.c
@@ -0,0 +1,116 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author Freddy Hsin <freddy.hsin@mediatek.com>
+ */
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reboot.h>
+#include <linux/regmap.h>
+#include <linux/of_address.h>
+#include <linux/reboot-mode.h>
+
+static const struct regmap_config mtk_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
+struct mtk_reboot_mode {
+	struct regmap *map;
+	struct reboot_mode_driver reboot;
+	u32 offset;
+	u32 mask;
+};
+
+static int mtk_reboot_mode_write(struct reboot_mode_driver *reboot,
+				 unsigned int magic)
+{
+	struct mtk_reboot_mode *mtk_rbm;
+	int ret;
+
+	mtk_rbm = container_of(reboot, struct mtk_reboot_mode, reboot);
+
+	ret = regmap_update_bits(mtk_rbm->map, mtk_rbm->offset,
+				 mtk_rbm->mask, magic);
+	if (ret < 0)
+		dev_info(reboot->dev, "update reboot mode bits failed\n");
+
+	return ret;
+}
+
+static int mtk_regmap_lookup_by_phandle(struct device *dev,
+					struct mtk_reboot_mode *mtk_rbm)
+{
+	struct device_node *toprgu_np;
+	struct device_node *np = dev->of_node;
+	void __iomem *base;
+
+	toprgu_np = of_parse_phandle(np, "regmap", 0);
+
+	if (!of_device_is_compatible(toprgu_np, "mediatek,toprgu"))
+		return -EINVAL;
+
+	base = of_iomap(toprgu_np, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	mtk_rbm->map = devm_regmap_init_mmio(dev, base,
+					     &mtk_regmap_config);
+	return PTR_ERR_OR_ZERO(mtk_rbm->map);
+}
+
+static int mtk_reboot_mode_probe(struct platform_device *pdev)
+{
+	int ret;
+	struct mtk_reboot_mode *mtk_rbm;
+
+	mtk_rbm = devm_kzalloc(&pdev->dev, sizeof(*mtk_rbm), GFP_KERNEL);
+	if (!mtk_rbm)
+		return -ENOMEM;
+
+	mtk_rbm->reboot.dev = &pdev->dev;
+	mtk_rbm->reboot.write = mtk_reboot_mode_write;
+	mtk_rbm->mask = 0xf;
+
+	ret = mtk_regmap_lookup_by_phandle(&pdev->dev, mtk_rbm);
+	if (ret) {
+		dev_info(&pdev->dev, "Couldn't create the toprgu regmap\n");
+		return -EINVAL;
+	}
+
+	if (of_property_read_u32(pdev->dev.of_node, "offset",
+				 &mtk_rbm->offset))
+		return -EINVAL;
+
+	of_property_read_u32(pdev->dev.of_node, "mask", &mtk_rbm->mask);
+
+	ret = devm_reboot_mode_register(&pdev->dev, &mtk_rbm->reboot);
+	if (ret)
+		dev_info(&pdev->dev, "can't register reboot mode\n");
+
+	return ret;
+}
+
+static const struct of_device_id mtk_reboot_mode_of_match[] = {
+	{ .compatible = "toprgu-reboot-mode" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, mtk_reboot_mode_of_match);
+
+static struct platform_driver mtk_reboot_mode_driver = {
+	.probe = mtk_reboot_mode_probe,
+	.driver = {
+		.name = "toprgu-reboot-mode",
+		.of_match_table = mtk_reboot_mode_of_match,
+	},
+};
+module_platform_driver(mtk_reboot_mode_driver);
+
+MODULE_AUTHOR("Freddy Hsin <freddy.hsin@mediatek.com>");
+MODULE_DESCRIPTION("Mediatek reboot mode driver");
+MODULE_LICENSE("GPL v2");
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
