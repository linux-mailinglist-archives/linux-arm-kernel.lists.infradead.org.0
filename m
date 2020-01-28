Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D3C14BD01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWZ7rsm4u6LeYtOVAu/AO9eSFOT6M5tyqFyLsWMUaQM=; b=kjppGrI2jB+2Nt
	WDOIk8hYyvFUmds1DBEfTDCQV+IcAJoIhHaXDu53ewfcznpBKcKzBcJ1ZTtFJCRZfVecV1bHLAKd0
	tsmGYgxf/YxffxJQhXOFwYiWSacjnISTkldS3OJUUrkUZyChPVBs2jCaUkLLG88L6mfZsJas/Jii+
	NZ1a/zoCZ7fBqneds7xTfai32/JfEjSrL6wk1CcUN8HKj1ge6iuaPlb4JLTgbPzQ8gnYy1lh8Y9rY
	olKRdVu2cREs5J7GklibIOJEKiC57viG4bBE3RTehKSIMRdtP1fCYmsBp7CQEsD0+Ftlny5+EgsJJ
	CedTxkwkxfqCYBaDuWkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSy7-0004oI-RG; Tue, 28 Jan 2020 15:39:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwf-0003o5-Uc
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:32 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFX6Nw021992; Tue, 28 Jan 2020 16:38:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Ar4ysUo6whK/cok6Jdojo6d6gqeT3A3cGFa6YycKXws=;
 b=HUDdqXCBXSH4J6+9bwwuYs6E9kZAM1p5eGF5qzVMVnFj2Btihh1QQXcLDVcj0SPpMwlA
 ApMmu4k8KGPSluwjJ1paOuIC9+hzyGiFkA9O5wnAO54R8j1o/BX61qyZuJF+pxI3macr
 n4jWj3aBJrwe02jr6YiehZgY49YxLJOmx4nSsHc6K+yHchB96beFP3GLlELIvD2m0Psv
 BXBXlHkKuwJXa9ipKM8ODes1MY/tOQ7PZHn5wrPf12tCUxKmHXFNuiKcUm9OVvewVjoz
 PFEEaoqvVfe+F+ZGriUs7XGuyUwcMWqFUZK7w4P/1QZkllAhf72VPx+MBEviEs/TX6AB EA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaxxmdk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 807AF100034;
 Tue, 28 Jan 2020 16:38:24 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6CD632BF9D0;
 Tue, 28 Jan 2020 16:38:24 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:23
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 5/7] bus: firewall: Add driver for STM32 ETZPC controller
Date: Tue, 28 Jan 2020 16:38:04 +0100
Message-ID: <20200128153806.7780-6-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073830_286958_FEA8E6A9 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

STM32 Extended TrustZone Protection Controller (ETZPC) got 3 possible
configurations per hardware block:
- secure: hardware blocks are only accessible by software running on trust
  zone (i.e op-tee firmware).
- non-secure: hardware blocks are accessible by non-secure software (i.e.
    linux kernel).
- coprocessor: hardware blocks are only accessible by the coprocessor.

Each hardware block status is defined by a 2 bits field and all of
them are packed into 32 bits registers. ETZPC can manage up to 94
hardware blocks.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- provide the full list the hardware blocks
 drivers/bus/firewall/Kconfig                   |   7 ++
 drivers/bus/firewall/Makefile                  |   1 +
 drivers/bus/firewall/stm32-etzpc.c             | 140 +++++++++++++++++++++++++
 include/dt-bindings/bus/firewall/stm32-etzpc.h |  90 ++++++++++++++++
 4 files changed, 238 insertions(+)
 create mode 100644 drivers/bus/firewall/stm32-etzpc.c
 create mode 100644 include/dt-bindings/bus/firewall/stm32-etzpc.h

diff --git a/drivers/bus/firewall/Kconfig b/drivers/bus/firewall/Kconfig
index 893bacb955f5..f724c09801e0 100644
--- a/drivers/bus/firewall/Kconfig
+++ b/drivers/bus/firewall/Kconfig
@@ -4,4 +4,11 @@ config FIREWALL_CONTROLLERS
 	bool "Support of bus firewall controllers"
 	depends on OF
 
+config STM32_ETZPC
+	bool "STM32 ETZPC Domain Controller"
+	depends on FIREWALL_CONTROLLERS && MACH_STM32MP157
+	help
+	  Select y to enable STM32 Extended TrustZone Protection
+	  Controller (ETZPC)
+
 endmenu
diff --git a/drivers/bus/firewall/Makefile b/drivers/bus/firewall/Makefile
index eb6b978d6450..d42e99b5865e 100644
--- a/drivers/bus/firewall/Makefile
+++ b/drivers/bus/firewall/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_FIREWALL_CONTROLLERS) += firewall.o
+obj-$(CONFIG_STM32_ETZPC) += stm32-etzpc.o
diff --git a/drivers/bus/firewall/stm32-etzpc.c b/drivers/bus/firewall/stm32-etzpc.c
new file mode 100644
index 000000000000..39999579fe92
--- /dev/null
+++ b/drivers/bus/firewall/stm32-etzpc.c
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ */
+
+#include <linux/device.h>
+#include <linux/firewall.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/bus/firewall/stm32-etzpc.h>
+
+#define ETZPC_DECPROT	0x010
+#define ETZPC_NUM_LOCKS	94
+
+struct stm32_etzpc {
+	struct regmap_field *fields[ETZPC_NUM_LOCKS];
+};
+
+static int stm32_etzpc_set_config(struct device *dev,
+				  struct of_phandle_args *out_args)
+{
+	struct stm32_etzpc *etzpc = dev_get_drvdata(dev);
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
+		dev_info(dev, "failed to set configuration: index %d, value %d\n",
+			 index, value);
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
+	.fast_io = true,
+};
+
+static int stm32_etzpc_probe(struct platform_device *pdev)
+{
+	struct stm32_etzpc *etzpc;
+	struct resource *res;
+	void __iomem *mmio;
+	struct regmap *regmap;
+	int i;
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
+	return firewall_register(&pdev->dev, &stm32_etzpc_ops);
+}
+
+static int stm32_etzpc_remove(struct platform_device *pdev)
+{
+	firewall_unregister(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id stm32_etzpc_of_match[] = {
+	{ .compatible = "st,stm32-etzpc" },
+	{ /* end node */ }
+};
+MODULE_DEVICE_TABLE(of, stm32_etzpc_of_match);
+
+static struct platform_driver stm32_etzpc_driver = {
+	.probe  = stm32_etzpc_probe,
+	.remove = stm32_etzpc_remove,
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
diff --git a/include/dt-bindings/bus/firewall/stm32-etzpc.h b/include/dt-bindings/bus/firewall/stm32-etzpc.h
new file mode 100644
index 000000000000..9c4783b9783c
--- /dev/null
+++ b/include/dt-bindings/bus/firewall/stm32-etzpc.h
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
