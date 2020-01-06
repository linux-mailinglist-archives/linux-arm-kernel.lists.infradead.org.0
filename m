Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F94130F8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GTenr5oFX4h7XX5HWf+bZPUtF3FqCZTEIK0lFyQubbM=; b=BnzgpppVdUTDZ7Qjy+Yf0gB9mb
	E1EysHHvpbUgFPtQvPhovK6YfewdEoWqHUlw7xWt+nTZT4eFENO7aLUZyy9NlRrFDzzUqpQenIebo
	bRyZojU361BTP3AYOvs5CcbxI/F6tve8JxFN8MYQLHzgKieCZgay919r7Q9wE8GsepfFUofD3wwfU
	/h5x4ZkTFK9a2U7FYzuQ6HJcSrWjQ8mdNG6fYM2crZR+lK7Vpv8Kt4HNnWuZZEk4zaJE6eEAa7Foe
	ONQyPIeuv3VoHKqXs7R29XHb/1T6f+7n8JPw2GI9omog3ys1LfXS/hzjjyGkek45MynAgZWXjSr0N
	kXKae8KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOmX-0001PJ-3f; Mon, 06 Jan 2020 09:34:41 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOlp-0000yW-Eu
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:34:00 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7665E1A0030;
 Mon,  6 Jan 2020 10:33:54 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B2721A069F;
 Mon,  6 Jan 2020 10:33:43 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1AF61402C1;
 Mon,  6 Jan 2020 17:33:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
 catalin.marinas@arm.com, will@kernel.org, abel.vesa@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, maxime@cerno.tech,
 leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/3] pinctrl: freescale: Add i.MX8MP pinctrl driver support
Date: Mon,  6 Jan 2020 17:29:51 +0800
Message-Id: <1578302992-5723-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578302992-5723-1-git-send-email-Anson.Huang@nxp.com>
References: <1578302992-5723-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_013357_793033_377D448D 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the pinctrl driver support for i.MX8MP.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
---
No change.
---
 drivers/pinctrl/freescale/Kconfig          |   7 +
 drivers/pinctrl/freescale/Makefile         |   1 +
 drivers/pinctrl/freescale/pinctrl-imx8mp.c | 345 +++++++++++++++++++++++++++++
 3 files changed, 353 insertions(+)
 create mode 100644 drivers/pinctrl/freescale/pinctrl-imx8mp.c

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 3ea9ce3..de775a8 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -137,6 +137,13 @@ config PINCTRL_IMX8MN
 	help
 	  Say Y here to enable the imx8mn pinctrl driver
 
+config PINCTRL_IMX8MP
+	bool "IMX8MP pinctrl driver"
+	depends on ARCH_MXC && ARM64
+	select PINCTRL_IMX
+	help
+	  Say Y here to enable the imx8mp pinctrl driver
+
 config PINCTRL_IMX8MQ
 	bool "IMX8MQ pinctrl driver"
 	depends on ARCH_MXC && ARM64
diff --git a/drivers/pinctrl/freescale/Makefile b/drivers/pinctrl/freescale/Makefile
index 78e9140..0ebd3af 100644
--- a/drivers/pinctrl/freescale/Makefile
+++ b/drivers/pinctrl/freescale/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_PINCTRL_IMX7D)	+= pinctrl-imx7d.o
 obj-$(CONFIG_PINCTRL_IMX7ULP)	+= pinctrl-imx7ulp.o
 obj-$(CONFIG_PINCTRL_IMX8MM)	+= pinctrl-imx8mm.o
 obj-$(CONFIG_PINCTRL_IMX8MN)	+= pinctrl-imx8mn.o
+obj-$(CONFIG_PINCTRL_IMX8MP)	+= pinctrl-imx8mp.o
 obj-$(CONFIG_PINCTRL_IMX8MQ)	+= pinctrl-imx8mq.o
 obj-$(CONFIG_PINCTRL_IMX8QM)	+= pinctrl-imx8qm.o
 obj-$(CONFIG_PINCTRL_IMX8QXP)	+= pinctrl-imx8qxp.o
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8mp.c b/drivers/pinctrl/freescale/pinctrl-imx8mp.c
new file mode 100644
index 0000000..869cf0b
--- /dev/null
+++ b/drivers/pinctrl/freescale/pinctrl-imx8mp.c
@@ -0,0 +1,345 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/of.h>
+#include <linux/pinctrl/pinctrl.h>
+#include <linux/platform_device.h>
+
+#include "pinctrl-imx.h"
+
+enum imx8mp_pads {
+	MX8MP_IOMUXC_RESERVE0 = 0,
+	MX8MP_IOMUXC_RESERVE1 = 1,
+	MX8MP_IOMUXC_RESERVE2 = 2,
+	MX8MP_IOMUXC_RESERVE3 = 3,
+	MX8MP_IOMUXC_RESERVE4 = 4,
+	MX8MP_IOMUXC_GPIO1_IO00 = 5,
+	MX8MP_IOMUXC_GPIO1_IO01 = 6,
+	MX8MP_IOMUXC_GPIO1_IO02 = 7,
+	MX8MP_IOMUXC_GPIO1_IO03 = 8,
+	MX8MP_IOMUXC_GPIO1_IO04 = 9,
+	MX8MP_IOMUXC_GPIO1_IO05 = 10,
+	MX8MP_IOMUXC_GPIO1_IO06 = 11,
+	MX8MP_IOMUXC_GPIO1_IO07 = 12,
+	MX8MP_IOMUXC_GPIO1_IO08 = 13,
+	MX8MP_IOMUXC_GPIO1_IO09 = 14,
+	MX8MP_IOMUXC_GPIO1_IO10 = 15,
+	MX8MP_IOMUXC_GPIO1_IO11 = 16,
+	MX8MP_IOMUXC_GPIO1_IO12 = 17,
+	MX8MP_IOMUXC_GPIO1_IO13 = 18,
+	MX8MP_IOMUXC_GPIO1_IO14 = 19,
+	MX8MP_IOMUXC_GPIO1_IO15 = 20,
+	MX8MP_IOMUXC_ENET_MDC = 21,
+	MX8MP_IOMUXC_ENET_MDIO = 22,
+	MX8MP_IOMUXC_ENET_TD3 = 23,
+	MX8MP_IOMUXC_ENET_TD2 = 24,
+	MX8MP_IOMUXC_ENET_TD1 = 25,
+	MX8MP_IOMUXC_ENET_TD0 = 26,
+	MX8MP_IOMUXC_ENET_TX_CTL = 27,
+	MX8MP_IOMUXC_ENET_TXC = 28,
+	MX8MP_IOMUXC_ENET_RX_CTL = 29,
+	MX8MP_IOMUXC_ENET_RXC = 30,
+	MX8MP_IOMUXC_ENET_RD0 = 31,
+	MX8MP_IOMUXC_ENET_RD1 = 32,
+	MX8MP_IOMUXC_ENET_RD2 = 33,
+	MX8MP_IOMUXC_ENET_RD3 = 34,
+	MX8MP_IOMUXC_SD1_CLK = 35,
+	MX8MP_IOMUXC_SD1_CMD = 36,
+	MX8MP_IOMUXC_SD1_DATA0 = 37,
+	MX8MP_IOMUXC_SD1_DATA1 = 38,
+	MX8MP_IOMUXC_SD1_DATA2 = 39,
+	MX8MP_IOMUXC_SD1_DATA3 = 40,
+	MX8MP_IOMUXC_SD1_DATA4 = 41,
+	MX8MP_IOMUXC_SD1_DATA5 = 42,
+	MX8MP_IOMUXC_SD1_DATA6 = 43,
+	MX8MP_IOMUXC_SD1_DATA7 = 44,
+	MX8MP_IOMUXC_SD1_RESET_B = 45,
+	MX8MP_IOMUXC_SD1_STROBE = 46,
+	MX8MP_IOMUXC_SD2_CD_B = 47,
+	MX8MP_IOMUXC_SD2_CLK = 48,
+	MX8MP_IOMUXC_SD2_CMD = 49,
+	MX8MP_IOMUXC_SD2_DATA0 = 50,
+	MX8MP_IOMUXC_SD2_DATA1 = 51,
+	MX8MP_IOMUXC_SD2_DATA2 = 52,
+	MX8MP_IOMUXC_SD2_DATA3 = 53,
+	MX8MP_IOMUXC_SD2_RESET_B = 54,
+	MX8MP_IOMUXC_SD2_WP = 55,
+	MX8MP_IOMUXC_NAND_ALE = 56,
+	MX8MP_IOMUXC_NAND_CE0_B = 57,
+	MX8MP_IOMUXC_NAND_CE1_B = 58,
+	MX8MP_IOMUXC_NAND_CE2_B = 59,
+	MX8MP_IOMUXC_NAND_CE3_B = 60,
+	MX8MP_IOMUXC_NAND_CLE = 61,
+	MX8MP_IOMUXC_NAND_DATA00 = 62,
+	MX8MP_IOMUXC_NAND_DATA01 = 63,
+	MX8MP_IOMUXC_NAND_DATA02 = 64,
+	MX8MP_IOMUXC_NAND_DATA03 = 65,
+	MX8MP_IOMUXC_NAND_DATA04 = 66,
+	MX8MP_IOMUXC_NAND_DATA05 = 67,
+	MX8MP_IOMUXC_NAND_DATA06 = 68,
+	MX8MP_IOMUXC_NAND_DATA07 = 69,
+	MX8MP_IOMUXC_NAND_DQS = 70,
+	MX8MP_IOMUXC_NAND_RE_B = 71,
+	MX8MP_IOMUXC_NAND_READY_B = 72,
+	MX8MP_IOMUXC_NAND_WE_B = 73,
+	MX8MP_IOMUXC_NAND_WP_B = 74,
+	MX8MP_IOMUXC_SAI5_RXFS = 75,
+	MX8MP_IOMUXC_SAI5_RXC = 76,
+	MX8MP_IOMUXC_SAI5_RXD0 = 77,
+	MX8MP_IOMUXC_SAI5_RXD1 = 78,
+	MX8MP_IOMUXC_SAI5_RXD2 = 79,
+	MX8MP_IOMUXC_SAI5_RXD3 = 80,
+	MX8MP_IOMUXC_SAI5_MCLK = 81,
+	MX8MP_IOMUXC_SAI1_RXFS = 82,
+	MX8MP_IOMUXC_SAI1_RXC = 83,
+	MX8MP_IOMUXC_SAI1_RXD0 = 84,
+	MX8MP_IOMUXC_SAI1_RXD1 = 85,
+	MX8MP_IOMUXC_SAI1_RXD2 = 86,
+	MX8MP_IOMUXC_SAI1_RXD3 = 87,
+	MX8MP_IOMUXC_SAI1_RXD4 = 88,
+	MX8MP_IOMUXC_SAI1_RXD5 = 89,
+	MX8MP_IOMUXC_SAI1_RXD6 = 90,
+	MX8MP_IOMUXC_SAI1_RXD7 = 91,
+	MX8MP_IOMUXC_SAI1_TXFS = 92,
+	MX8MP_IOMUXC_SAI1_TXC = 93,
+	MX8MP_IOMUXC_SAI1_TXD0 = 94,
+	MX8MP_IOMUXC_SAI1_TXD1 = 95,
+	MX8MP_IOMUXC_SAI1_TXD2 = 96,
+	MX8MP_IOMUXC_SAI1_TXD3 = 97,
+	MX8MP_IOMUXC_SAI1_TXD4 = 98,
+	MX8MP_IOMUXC_SAI1_TXD5 = 99,
+	MX8MP_IOMUXC_SAI1_TXD6 = 100,
+	MX8MP_IOMUXC_SAI1_TXD7 = 101,
+	MX8MP_IOMUXC_SAI1_MCLK = 102,
+	MX8MP_IOMUXC_SAI2_RXFS = 103,
+	MX8MP_IOMUXC_SAI2_RXC = 104,
+	MX8MP_IOMUXC_SAI2_RXD0 = 105,
+	MX8MP_IOMUXC_SAI2_TXFS = 106,
+	MX8MP_IOMUXC_SAI2_TXC = 107,
+	MX8MP_IOMUXC_SAI2_TXD0 = 108,
+	MX8MP_IOMUXC_SAI2_MCLK = 109,
+	MX8MP_IOMUXC_SAI3_RXFS = 110,
+	MX8MP_IOMUXC_SAI3_RXC = 111,
+	MX8MP_IOMUXC_SAI3_RXD = 112,
+	MX8MP_IOMUXC_SAI3_TXFS = 113,
+	MX8MP_IOMUXC_SAI3_TXC = 114,
+	MX8MP_IOMUXC_SAI3_TXD = 115,
+	MX8MP_IOMUXC_SAI3_MCLK = 116,
+	MX8MP_IOMUXC_SPDIF_TX = 117,
+	MX8MP_IOMUXC_SPDIF_RX = 118,
+	MX8MP_IOMUXC_SPDIF_EXT_CLK = 119,
+	MX8MP_IOMUXC_ECSPI1_SCLK = 120,
+	MX8MP_IOMUXC_ECSPI1_MOSI = 121,
+	MX8MP_IOMUXC_ECSPI1_MISO = 122,
+	MX8MP_IOMUXC_ECSPI1_SS0 = 123,
+	MX8MP_IOMUXC_ECSPI2_SCLK = 124,
+	MX8MP_IOMUXC_ECSPI2_MOSI = 125,
+	MX8MP_IOMUXC_ECSPI2_MISO = 126,
+	MX8MP_IOMUXC_ECSPI2_SS0 = 127,
+	MX8MP_IOMUXC_I2C1_SCL = 128,
+	MX8MP_IOMUXC_I2C1_SDA = 129,
+	MX8MP_IOMUXC_I2C2_SCL = 130,
+	MX8MP_IOMUXC_I2C2_SDA = 131,
+	MX8MP_IOMUXC_I2C3_SCL = 132,
+	MX8MP_IOMUXC_I2C3_SDA = 133,
+	MX8MP_IOMUXC_I2C4_SCL = 134,
+	MX8MP_IOMUXC_I2C4_SDA = 135,
+	MX8MP_IOMUXC_UART1_RXD = 136,
+	MX8MP_IOMUXC_UART1_TXD = 137,
+	MX8MP_IOMUXC_UART2_RXD = 138,
+	MX8MP_IOMUXC_UART2_TXD = 139,
+	MX8MP_IOMUXC_UART3_RXD = 140,
+	MX8MP_IOMUXC_UART3_TXD = 141,
+	MX8MP_IOMUXC_UART4_RXD = 142,
+	MX8MP_IOMUXC_UART4_TXD = 143,
+	MX8MP_IOMUXC_HDMI_DDC_SCL = 144,
+	MX8MP_IOMUXC_HDMI_DDC_SDA = 145,
+	MX8MP_IOMUXC_HDMI_CEC = 146,
+	MX8MP_IOMUXC_HDMI_HPD = 147,
+};
+
+/* Pad names for the pinmux subsystem */
+static const struct pinctrl_pin_desc imx8mp_pinctrl_pads[] = {
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_RESERVE0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_RESERVE1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_RESERVE2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_RESERVE3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_RESERVE4),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO00),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO01),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO02),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO03),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO04),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO05),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO06),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO07),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO08),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO09),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO10),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO11),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO12),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO13),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO14),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_GPIO1_IO15),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_MDC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_MDIO),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_TD3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_TD2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_TD1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_TD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_TX_CTL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_TXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_RX_CTL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_RXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_RD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_RD1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_RD2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ENET_RD3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_CLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_CMD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA4),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA5),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA6),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_DATA7),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_RESET_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD1_STROBE),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_CD_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_CLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_CMD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_DATA0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_DATA1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_DATA2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_DATA3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_RESET_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SD2_WP),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_ALE),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_CE0_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_CE1_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_CE2_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_CE3_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_CLE),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA00),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA01),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA02),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA03),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA04),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA05),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA06),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DATA07),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_DQS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_RE_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_READY_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_WE_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_NAND_WP_B),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_RXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_RXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_RXD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_RXD1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_RXD2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_RXD3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI5_MCLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD4),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD5),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD6),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_RXD7),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD1),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD2),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD3),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD4),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD5),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD6),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_TXD7),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI1_MCLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_RXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_RXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_RXD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_TXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_TXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_TXD0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI2_MCLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_RXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_RXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_RXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_TXFS),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_TXC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_TXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SAI3_MCLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SPDIF_TX),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SPDIF_RX),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_SPDIF_EXT_CLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI1_SCLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI1_MOSI),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI1_MISO),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI1_SS0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI2_SCLK),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI2_MOSI),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI2_MISO),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_ECSPI2_SS0),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C1_SCL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C1_SDA),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C2_SCL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C2_SDA),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C3_SCL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C3_SDA),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C4_SCL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_I2C4_SDA),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART1_RXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART1_TXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART2_RXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART2_TXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART3_RXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART3_TXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART4_RXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_UART4_TXD),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_HDMI_DDC_SCL),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_HDMI_DDC_SDA),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_HDMI_CEC),
+	IMX_PINCTRL_PIN(MX8MP_IOMUXC_HDMI_HPD),
+};
+
+static struct imx_pinctrl_soc_info imx8mp_pinctrl_info = {
+	.pins = imx8mp_pinctrl_pads,
+	.npins = ARRAY_SIZE(imx8mp_pinctrl_pads),
+	.gpr_compatible = "fsl,imx8mp-iomuxc-gpr",
+};
+
+static struct of_device_id imx8mp_pinctrl_of_match[] = {
+	{ .compatible = "fsl,imx8mp-iomuxc", .data = &imx8mp_pinctrl_info, },
+	{ /* sentinel */ }
+};
+
+static int imx8mp_pinctrl_probe(struct platform_device *pdev)
+{
+	return imx_pinctrl_probe(pdev, &imx8mp_pinctrl_info);
+}
+
+static struct platform_driver imx8mp_pinctrl_driver = {
+	.driver = {
+		.name = "imx8mp-pinctrl",
+		.of_match_table = of_match_ptr(imx8mp_pinctrl_of_match),
+	},
+	.probe = imx8mp_pinctrl_probe,
+};
+
+static int __init imx8mp_pinctrl_init(void)
+{
+	return platform_driver_register(&imx8mp_pinctrl_driver);
+}
+arch_initcall(imx8mp_pinctrl_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
