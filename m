Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8095C1B0D5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JDCwlpHU6JR5i7RnmyIco3BxuBDxuGL+50YkDzMSho=; b=pX/CDhfw6PJ4NK
	Xj1K6Of/551aPabdNt7EGXlJB3+vjmEJdvnP/wfhH0w1/UnU9sBSxAqaKVM6u2X8UiQHm8sgQVFfE
	3nkVU4yU5b3mx4JDlIzIpCQVRCWoFd4ixKwrhHNn5HjB3FogMvFaEE+nPNrfEFfX51AnAd6Z58Q9u
	88H1m5QRMkqygiCUgeOgUdGLX2aiX9zUMRjUmQrMW7s4ciE91RBYov6Z36ESBxiH+Eli0lVcu83G3
	rQUwINKdy8KR+MXY6/zWf9xqvB3o6VEaImsoj+UCwpld47VW8NIWig1fY/1N+JIVfvaf5HKTEQby4
	Xr4TdKeBYSCV/57NZg+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWo1-0004yV-TZ; Mon, 20 Apr 2020 13:49:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWmZ-0003qR-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:48:22 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KDm9H9000348; Mon, 20 Apr 2020 15:48:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Hcw1lJCHjCweC5Z6YyOzJ+eYTpoFQ8lrStCDfhV3rK8=;
 b=a5JuoP50PKw2YKdbYFFJekTw8od3QeCWh6y9NjNK4TeRuZsYAfoHe5kaawrDj6ZeKvwH
 okHWoc24UM07Yo9LADZNcZczzd0owqPMNAM5pGOPnTYTUWBBcHBExvka8KdUenvdefDs
 4oqf88iWdC49Ej/+N03uvgbbcorVAxlLaApJkwuiwD0HxIFwU7y8tY+zfo/tC7Eu1A2f
 P5kDpsU+pHxsfvFN23jPWf/2C8zETnZujvvRygOcUwunA6zro8KcocrK61+yqYtlycVE
 HomTGQIrdYK8ro46Qf85PCl19cV8BAqt5cbWzb9LJ9r+AXVd/xcNfQmD0IHqpesccvBt cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregabn0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 15:48:09 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B63E0100034;
 Mon, 20 Apr 2020 15:48:08 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A9D032C0BED;
 Mon, 20 Apr 2020 15:48:08 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 15:48:07
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <gregkh@linuxfoundation.org>,
 <loic.pallardy@st.com>, <linus.walleij@linaro.org>
Subject: [PATCH 4/5] bus: stm32: Add stm32 ETZPC firewall bus controller
Date: Mon, 20 Apr 2020 15:47:59 +0200
Message-ID: <20200420134800.31604-5-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200420134800.31604-1-benjamin.gaignard@st.com>
References: <20200420134800.31604-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_04:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_064819_485331_DB4CD2B8 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add STM32 Extended TrustZone Protection bus controller.
For each of device-tree nodes it will check and apply
firewall configuration. If it doesn't match the device
will not be probed by platform bus.

A device could be configured to be accessible by trusted world,
co-processor or non-secure world.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/bus/stm32/Kconfig                   |   8 ++
 drivers/bus/stm32/Makefile                  |   1 +
 drivers/bus/stm32/stm32-etzpc.c             | 160 ++++++++++++++++++++++++++++
 include/dt-bindings/bus/stm32/stm32-etzpc.h |  90 ++++++++++++++++
 4 files changed, 259 insertions(+)
 create mode 100644 drivers/bus/stm32/stm32-etzpc.c
 create mode 100644 include/dt-bindings/bus/stm32/stm32-etzpc.h

diff --git a/drivers/bus/stm32/Kconfig b/drivers/bus/stm32/Kconfig
index 57221e833e2d..5dc6e2504de5 100644
--- a/drivers/bus/stm32/Kconfig
+++ b/drivers/bus/stm32/Kconfig
@@ -1,3 +1,11 @@
 config FIREWALL_CONTROLLERS
 	bool "Support of bus firewall controllers"
 	depends on OF
+
+config STM32_ETZPC
+	bool "STM32 ETZPC bus controller"
+	depends on MACH_STM32MP157
+	select FIREWALL_CONTROLLERS
+	help
+	  Select y to enable STM32 Extended TrustZone Protection
+	  Controller (ETZPC)
diff --git a/drivers/bus/stm32/Makefile b/drivers/bus/stm32/Makefile
index eb6b978d6450..d42e99b5865e 100644
--- a/drivers/bus/stm32/Makefile
+++ b/drivers/bus/stm32/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_FIREWALL_CONTROLLERS) += firewall.o
+obj-$(CONFIG_STM32_ETZPC) += stm32-etzpc.o
diff --git a/drivers/bus/stm32/stm32-etzpc.c b/drivers/bus/stm32/stm32-etzpc.c
new file mode 100644
index 000000000000..c216c71448ed
--- /dev/null
+++ b/drivers/bus/stm32/stm32-etzpc.c
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ */
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/bus/stm32/stm32-etzpc.h>
+
+#include "firewall.h"
+
+#define ETZPC_DECPROT	0x010
+#define ETZPC_NUM_LOCKS	94
+
+struct stm32_etzpc {
+	struct regmap_field *fields[ETZPC_NUM_LOCKS];
+};
+
+static int stm32_etzpc_set_config(void *priv, struct of_phandle_args *out_args)
+{
+	struct stm32_etzpc *etzpc = dev_get_drvdata((struct device *)priv);
+	int index = out_args->args[0];
+	unsigned int value = out_args->args[1];
+	u32 status;
+
+	if (out_args->args_count != 2)
+		return -EINVAL;
+
+	if (index >= ETZPC_NUM_LOCKS)
+		return -EINVAL;
+
+	if (value > STM32_ETZPC_NON_SECURE)
+		return -EINVAL;
+
+	regmap_field_force_write(etzpc->fields[index], value);
+
+	/* Hardware could denied the new value, read it back to check it */
+	regmap_field_read(etzpc->fields[index], &status);
+
+	if (value != status) {
+		pr_info("failed to set configuration: index %d, value %d\n",
+			index, value);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static struct firewall_ops stm32_etzpc_ops = {
+	.set_config = stm32_etzpc_set_config,
+};
+
+static const struct regmap_config stm32_etzpc_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = sizeof(u32),
+	.max_register = 0x3FF,
+};
+
+static void stm32_etzpc_populate(struct device *parent)
+{
+	struct device_node *child;
+
+	if (!parent)
+		return;
+
+	for_each_available_child_of_node(dev_of_node(parent), child) {
+		if (firewall_set_default_config(child)) {
+			/*
+			 * Failed to set firewall configuration mark the node
+			 * as populated so platform bus won't probe it
+			 */
+			of_node_set_flag(child, OF_POPULATED);
+			dev_info(parent, "%s: Bad firewall configuration\n",
+				 child->name);
+		}
+	}
+}
+
+static int stm32_etzpc_probe(struct platform_device *pdev)
+{
+	struct stm32_etzpc *etzpc;
+	struct regmap *regmap;
+	struct resource *res;
+	void __iomem *mmio;
+	int i, ret;
+
+	etzpc = devm_kzalloc(&pdev->dev, sizeof(*etzpc), GFP_KERNEL);
+	if (!etzpc)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	mmio = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(mmio))
+		return PTR_ERR(mmio);
+
+	regmap = devm_regmap_init_mmio(&pdev->dev, mmio,
+				       &stm32_etzpc_regmap_cfg);
+
+	for (i = 0; i < ETZPC_NUM_LOCKS; i++) {
+		struct reg_field field;
+
+		/*
+		 * Each hardware block status is defined by
+		 * a 2 bits field and all of them are packed into
+		 * 32 bits registers. Do some computation to get
+		 * register offset and the shift.
+		 */
+		field.reg = ETZPC_DECPROT + (i >> 4) * sizeof(u32);
+		field.lsb = (i % 0x10) << 1;
+		field.msb = field.lsb + 1;
+
+		etzpc->fields[i] = devm_regmap_field_alloc(&pdev->dev,
+							   regmap, field);
+	}
+
+	platform_set_drvdata(pdev, etzpc);
+
+	ret = firewall_register(dev_of_node(&pdev->dev),
+				&stm32_etzpc_ops,
+				&pdev->dev);
+	if (ret)
+		return ret;
+
+	stm32_etzpc_populate(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id stm32_etzpc_of_match[] = {
+	{ .compatible = "st,stm32-etzpc-bus" },
+	{ /* end node */ }
+};
+MODULE_DEVICE_TABLE(of, stm32_etzpc_of_match);
+
+static struct platform_driver stm32_etzpc_driver = {
+	.probe  = stm32_etzpc_probe,
+	.driver = {
+		.name = "stm32-etzpc",
+		.of_match_table = stm32_etzpc_of_match,
+	},
+};
+
+static int __init stm32_etzpc_init(void)
+{
+	return platform_driver_register(&stm32_etzpc_driver);
+}
+arch_initcall(stm32_etzpc_init);
+
+MODULE_AUTHOR("Benjamin Gaignard <benjamin.gaignard@st.com>");
+MODULE_DESCRIPTION("STMicroelectronics STM32 Bus Firewall Controller");
diff --git a/include/dt-bindings/bus/stm32/stm32-etzpc.h b/include/dt-bindings/bus/stm32/stm32-etzpc.h
new file mode 100644
index 000000000000..9c4783b9783c
--- /dev/null
+++ b/include/dt-bindings/bus/stm32/stm32-etzpc.h
@@ -0,0 +1,90 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ */
+
+#ifndef _STM32_ETZPC_H_
+#define _STM32_ETZPC_H_
+
+/* ETZPC configurations: trust-zone, non-secure or coprocessor*/
+#define STM32_ETZPC_TRUST	1
+#define STM32_ETPCZ_COPRO	2
+#define STM32_ETZPC_NON_SECURE	3
+
+/* ETZPC hard blocks index */
+#define STM32_ETZPC_USART1	3
+#define STM32_ETZPC_SPI6	4
+#define STM32_ETZPC_I2C4	5
+#define STM32_ETZPC_RNG1	7
+#define STM32_ETZPC_HASH1	8
+#define STM32_ETZPC_CRYP1	9
+#define STM32_ETZPC_I2C6	12
+#define STM32_ETZPC_TIM2	16
+#define STM32_ETZPC_TIM3	17
+#define STM32_ETZPC_TIM4	18
+#define STM32_ETZPC_TIM5	19
+#define STM32_ETZPC_TIM6	20
+#define STM32_ETZPC_TIM7	21
+#define STM32_ETZPC_TIM12	22
+#define STM32_ETZPC_TIM13	23
+#define STM32_ETZPC_TIM14	24
+#define STM32_ETZPC_LPTIM1	25
+#define STM32_ETZPC_SPI2	27
+#define STM32_ETZPC_SPI3	28
+#define STM32_ETZPC_USART2	30
+#define STM32_ETZPC_USART3	31
+#define STM32_ETZPC_USART4	32
+#define STM32_ETZPC_USART5	33
+#define STM32_ETZPC_I2C1	34
+#define STM32_ETZPC_I2C2	35
+#define STM32_ETZPC_I2C3	36
+#define STM32_ETZPC_I2C5	37
+#define STM32_ETZPC_CEC		38
+#define STM32_ETZPC_DAC		39
+#define STM32_ETZPC_UART7	40
+#define STM32_ETZPC_UART8	41
+#define STM32_ETZPC_MDIOS	44
+#define STM32_ETZPC_TIM1	48
+#define STM32_ETZPC_TIM8	49
+#define STM32_ETZPC_USART6	51
+#define STM32_ETZPC_SPI1	52
+#define STM32_ETZPC_SPI4	53
+#define STM32_ETZPC_TIM15	54
+#define STM32_ETZPC_TIM16	55
+#define STM32_ETZPC_TIM17	56
+#define STM32_ETZPC_SPI5	57
+#define STM32_ETZPC_SAI1	58
+#define STM32_ETZPC_SAI2	59
+#define STM32_ETZPC_SAI3	60
+#define STM32_ETZPC_DFSDM	61
+#define STM32_ETZPC_TT_FDCAN	62
+#define STM32_ETZPC_LPTIM2	64
+#define STM32_ETZPC_LPTIM3	65
+#define STM32_ETZPC_LPTIM4	66
+#define STM32_ETZPC_LPTIM5	67
+#define STM32_ETZPC_SAI4	68
+#define STM32_ETZPC_VREFBUF	69
+#define STM32_ETZPC_DCMI	70
+#define STM32_ETZPC_CRC2	71
+#define STM32_ETZPC_ADC		72
+#define STM32_ETZPC_HASH2	73
+#define STM32_ETZPC_RNG2	74
+#define STM32_ETZPC_CRYP2	75
+#define STM32_ETZPC_SRAM1	80
+#define STM32_ETZPC_SRAM2	81
+#define STM32_ETZPC_SRAM3	82
+#define STM32_ETZPC_SRAM4	83
+#define STM32_ETZPC_RETRAM	84
+#define STM32_ETZPC_OTG		85
+#define STM32_ETZPC_SDMMC3	86
+#define STM32_ETZPC_DLYBSD3	87
+#define STM32_ETZPC_DMA1	88
+#define STM32_ETZPC_DMA2	89
+#define STM32_ETZPC_DMAMUX	90
+#define STM32_ETZPC_FMC		91
+#define STM32_ETZPC_QSPI	92
+#define STM32_ETZPC_DLYBQ	93
+#define STM32_ETZPC_ETH1	94
+
+#endif /* _STM32_ETZPC_H_ */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
