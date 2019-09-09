Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DC1AD577
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPaxoRJDtJ1p6d+BzR4T3Ug1RiBMAc3WvIgFShtNrZ4=; b=UrAW/N35AqZKt3
	yO8HFLF4YR6F+4TbXXpZT5l+C1/z42uoUZyxj/EtXohN51SdiUAUhUx0ygH1/MbAdy1l9y2D2QWKo
	YSsNpG1rWgCgIUEsTJqz5FADcY8b3NZEosOHm2CdgDMzzL8Ir/R0mnJ8kEAEMUjhNh+ti6kJhDJ+r
	B26DNJ/cjbKJpBe4CqxnSCoPC+VHojRigeLiUKfsbjmeTN4LujGwRqyunJ6CgRFQnXFEtnji6YeGH
	RyY/DMACjPgj+GuSsCFKXzZ78JxwT8opIgFBRWNhNnuW8g22ndoljwrxPVct+QZb5Fjl/BdxX2Jnq
	so3cP5KsGBttNJNZsiOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Fkh-00033l-Oz; Mon, 09 Sep 2019 09:14:27 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FkQ-000332-R6
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568020450; x=1599556450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=7bxATOD4YpTfA2T6D2FS+tUZcECPge1g5C9oB541ceY=;
 b=r3MaQvNOhjsiMpsLIonOEEGVK9Y8mAVsxQsGp3cbG27rcjcUIq30tfRS
 yAQe7Mmxs/Gndtq/vIr5OGpalI19sYROBkdBlAx+l+I3/Zial05Q8MthU
 HPGlZtBACRMZzZ9+WGEWLnk7atsd9N7CWkAF03IBQnVMyj6tZfMMPDJGJ A=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="829173315"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2a-c5104f52.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 09 Sep 2019 09:11:13 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-c5104f52.us-west-2.amazon.com (Postfix) with ESMTPS
 id 263E9A1D0C; Mon,  9 Sep 2019 09:11:12 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:11:11 +0000
Received: from udc4a3e82dbc15a031435.hfa15.amazon.com (10.43.161.176) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:10:59 +0000
From: Talel Shenhar <talel@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <nicolas.ferre@microchip.com>,
 <tglx@linutronix.de>, <arnd@arndb.de>, <venture@google.com>,
 <linus.walleij@linaro.org>, <olof@lixom.net>, <mripard@kernel.org>,
 <ssantosh@kernel.org>, <paul.kocialkowski@bootlin.com>,
 <mjourdan@baylibre.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <talel@amazon.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna Labs
 POS driver
Date: Mon, 9 Sep 2019 12:10:19 +0300
Message-ID: <1568020220-7758-3-git-send-email-talel@amazon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568020220-7758-1-git-send-email-talel@amazon.com>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.161.176]
X-ClientProxiedBy: EX13D23UWA001.ant.amazon.com (10.43.160.68) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_021410_946023_74F74BF3 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: barakw@amazon.com, hhhawa@amazon.com, benh@kernel.crashing.org,
 jonnyc@amazon.com, ronenk@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amazon's Annapurna Labs SoCs includes Point Of Serialization error
logging unit that reports an error in case write error (e.g. attempt to
write to a read only register).
This patch introduces the support for this unit.

Signed-off-by: Talel Shenhar <talel@amazon.com>
---
 MAINTAINERS                 |   6 +++
 drivers/soc/Kconfig         |   1 +
 drivers/soc/Makefile        |   1 +
 drivers/soc/amazon/Kconfig  |   5 ++
 drivers/soc/amazon/Makefile |   1 +
 drivers/soc/amazon/al_pos.c | 129 ++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 143 insertions(+)
 create mode 100644 drivers/soc/amazon/Kconfig
 create mode 100644 drivers/soc/amazon/Makefile
 create mode 100644 drivers/soc/amazon/al_pos.c

diff --git a/MAINTAINERS b/MAINTAINERS
index e7a47b5..627af40 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -751,6 +751,12 @@ F:	drivers/tty/serial/altera_jtaguart.c
 F:	include/linux/altera_uart.h
 F:	include/linux/altera_jtaguart.h
 
+AMAZON ANNAPURNA LABS POS
+M:	Talel Shenhar <talel@amazon.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/soc/amazon/amazon,al-pos.txt
+F:	drivers/soc/amazon/al_pos.c
+
 AMAZON ANNAPURNA LABS THERMAL MMIO DRIVER
 M:	Talel Shenhar <talel@amazon.com>
 S:	Maintained
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index 833e04a..913a6b1 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -2,6 +2,7 @@
 menu "SOC (System On Chip) specific Drivers"
 
 source "drivers/soc/actions/Kconfig"
+source "drivers/soc/amazon/Kconfig"
 source "drivers/soc/amlogic/Kconfig"
 source "drivers/soc/aspeed/Kconfig"
 source "drivers/soc/atmel/Kconfig"
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 2ec3550..c1c5c64 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -6,6 +6,7 @@
 obj-$(CONFIG_ARCH_ACTIONS)	+= actions/
 obj-$(CONFIG_SOC_ASPEED)	+= aspeed/
 obj-$(CONFIG_ARCH_AT91)		+= atmel/
+obj-y				+= amazon/
 obj-y				+= bcm/
 obj-$(CONFIG_ARCH_DOVE)		+= dove/
 obj-$(CONFIG_MACH_DOVE)		+= dove/
diff --git a/drivers/soc/amazon/Kconfig b/drivers/soc/amazon/Kconfig
new file mode 100644
index 00000000..fdd4cdd
--- /dev/null
+++ b/drivers/soc/amazon/Kconfig
@@ -0,0 +1,5 @@
+config AL_POS
+	bool "Amazon's Annapurna Labs POS driver"
+	depends on ARCH_ALPINE || COMPILE_TEST
+	help
+	  Include support for the SoC POS error capability.
diff --git a/drivers/soc/amazon/Makefile b/drivers/soc/amazon/Makefile
new file mode 100644
index 00000000..a31441a
--- /dev/null
+++ b/drivers/soc/amazon/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_AL_POS) += al_pos.o
diff --git a/drivers/soc/amazon/al_pos.c b/drivers/soc/amazon/al_pos.c
new file mode 100644
index 00000000..6d0bdff
--- /dev/null
+++ b/drivers/soc/amazon/al_pos.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
+ */
+#include <linux/bitfield.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Talel Shenhar");
+MODULE_DESCRIPTION("Amazon's Annapurna Labs POS driver");
+
+/* Registers Offset */
+#define AL_POS_ERROR_LOG_1	0x0
+#define AL_POS_ERROR_LOG_0	0x4
+
+/* Registers Fields */
+#define AL_POS_ERROR_LOG_1_VALID	GENMASK(31, 31)
+#define AL_POS_ERROR_LOG_1_BRESP	GENMASK(18, 17)
+#define AL_POS_ERROR_LOG_1_REQUEST_ID	GENMASK(16, 8)
+#define AL_POS_ERROR_LOG_1_ADDR_HIGH	GENMASK(7, 0)
+
+#define AL_POS_ERROR_LOG_0_ADDR_LOW	GENMASK(31, 0)
+
+static int al_pos_panic;
+module_param(al_pos_panic, int, 0);
+MODULE_PARM_DESC(al_pos_panic, "Defines if POS error is causing panic()");
+
+struct al_pos {
+	struct platform_device *pdev;
+	void __iomem *mmio_base;
+	int irq;
+};
+
+static irqreturn_t al_pos_irq_handler(int irq, void *info)
+{
+	struct platform_device *pdev = info;
+	struct al_pos *pos = platform_get_drvdata(pdev);
+	u32 log1;
+	u32 log0;
+	u64 addr;
+	u16 request_id;
+	u8 bresp;
+
+	log1 = readl_relaxed(pos->mmio_base + AL_POS_ERROR_LOG_1);
+	if (!FIELD_GET(AL_POS_ERROR_LOG_1_VALID, log1))
+		return IRQ_NONE;
+
+	log0 = readl_relaxed(pos->mmio_base + AL_POS_ERROR_LOG_0);
+	writel_relaxed(0, pos->mmio_base + AL_POS_ERROR_LOG_1);
+
+	addr = FIELD_GET(AL_POS_ERROR_LOG_0_ADDR_LOW, log0);
+	addr |= (FIELD_GET(AL_POS_ERROR_LOG_1_ADDR_HIGH, log1) << 32);
+	request_id = FIELD_GET(AL_POS_ERROR_LOG_1_REQUEST_ID, log1);
+	bresp = FIELD_GET(AL_POS_ERROR_LOG_1_BRESP, log1);
+
+	dev_err(&pdev->dev, "addr=0x%llx request_id=0x%x bresp=0x%x\n",
+		addr, request_id, bresp);
+
+	if (al_pos_panic)
+		panic("POS");
+
+	return IRQ_HANDLED;
+}
+
+static int al_pos_probe(struct platform_device *pdev)
+{
+	struct al_pos *pos;
+	struct resource *resource;
+	int ret;
+
+	pos = devm_kzalloc(&pdev->dev, sizeof(*pos), GFP_KERNEL);
+	if (!pos)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, pos);
+	pos->pdev = pdev;
+
+	resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pos->mmio_base = devm_ioremap_resource(&pdev->dev, resource);
+	if (IS_ERR(pos->mmio_base)) {
+		dev_err(&pdev->dev, "failed to ioremap memory (%ld)\n",
+			PTR_ERR(pos->mmio_base));
+		return PTR_ERR(pos->mmio_base);
+	}
+
+	pos->irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
+	if (pos->irq <= 0) {
+		dev_err(&pdev->dev, "fail to parse and map irq\n");
+		return -EINVAL;
+	}
+
+	ret = devm_request_irq(&pdev->dev,
+			       pos->irq,
+			       al_pos_irq_handler,
+			       0,
+			       pdev->name,
+			       pdev);
+	if (ret != 0) {
+		dev_err(&pdev->dev,
+			"failed to register to irq %d (%d)\n",
+			pos->irq, ret);
+		return ret;
+	}
+
+	dev_info(&pdev->dev, "successfully loaded\n");
+
+	return 0;
+}
+
+static const struct of_device_id al_pos_of_match[] = {
+	{ .compatible = "amazon,al-pos", },
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, al_pos_of_match);
+
+static struct platform_driver al_pos_driver = {
+	.probe = al_pos_probe,
+	.driver = {
+		.name = "al-pos",
+		.of_match_table = al_pos_of_match,
+	},
+};
+
+module_platform_driver(al_pos_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
