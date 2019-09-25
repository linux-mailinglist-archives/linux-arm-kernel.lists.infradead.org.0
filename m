Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9909BE521
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 20:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWbHd0MvwuBrmsf3/VeaRa6E3Nrr0PwqCKnClxSg1No=; b=iuzExfkAMqBmsT
	t6fKlLHmHDgSp29w40gVIIc1DzEnb1JsjuW0VE2ZICU1rfndVBYrQjpSEUaNDCxrJOw0Sb89c1zFf
	4yZqqqlqIQmegh1k+SbczkL/xDY0BWK/9DC9r09cLQ1CTnm16euJ2p5LkbZdzGy/IuxH3mCmArauC
	zzSTzFpQGH/Ke3hFiyXmaO/OHB/VDRi6Tw6oCfURmFCvPfm1wYaUEOvtf7z0BKjV+ZZFNogKTwYo5
	ZMMvIgylOgE3vhEk2UygK46X1K5HHQwxuW0NQ4icsmIf+RHRhamGe52DrrnAwR2K55TkKS0dNFfcB
	aMKS1l+zcxuXaAYZqwTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCNC-00036S-76; Wed, 25 Sep 2019 18:50:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCMf-0002qo-G0; Wed, 25 Sep 2019 18:50:15 +0000
Received: from muedsl-82-207-238-254.citykom.de ([82.207.238.254]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iDCMb-0005K2-Ex; Wed, 25 Sep 2019 20:50:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org
Subject: [PATCH 2/2] nvmem: add Rockchip OTP driver
Date: Wed, 25 Sep 2019 20:49:57 +0200
Message-Id: <20190925184957.14338-2-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925184957.14338-1-heiko@sntech.de>
References: <20190925184957.14338-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_115013_688766_ABE52D12 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Finley Xiao <finley.xiao@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Finley Xiao <finley.xiao@rock-chips.com>

Newer Rockchip socs like the px30 use a different one-time-programmable
memory controller for things like cpu-id and leakage information,
so add the necessary driver for it.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[ported from vendor 4.4, converted to clock-bulk API and cleanups]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/Kconfig        |  11 ++
 drivers/nvmem/Makefile       |   2 +
 drivers/nvmem/rockchip-otp.c | 268 +++++++++++++++++++++++++++++++++++
 3 files changed, 281 insertions(+)
 create mode 100644 drivers/nvmem/rockchip-otp.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index c2ec750cae6e..80b7e5d9c448 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -119,6 +119,17 @@ config ROCKCHIP_EFUSE
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem_rockchip_efuse.
 
+config ROCKCHIP_OTP
+	tristate "Rockchip OTP controller support"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on HAS_IOMEM
+	help
+	  This is a simple drive to dump specified values of Rockchip SoC
+	  from otp, such as cpu-leakage.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called nvmem_rockchip_otp.
+
 config NVMEM_BCM_OCOTP
 	tristate "Broadcom On-Chip OTP Controller support"
 	depends on ARCH_BCM_IPROC || COMPILE_TEST
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index e5c153d99a67..bbdbb929470f 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -30,6 +30,8 @@ obj-$(CONFIG_QCOM_QFPROM)	+= nvmem_qfprom.o
 nvmem_qfprom-y			:= qfprom.o
 obj-$(CONFIG_ROCKCHIP_EFUSE)	+= nvmem_rockchip_efuse.o
 nvmem_rockchip_efuse-y		:= rockchip-efuse.o
+obj-$(CONFIG_ROCKCHIP_OTP)	+= nvmem-rockchip-otp.o
+nvmem-rockchip-otp-y		:= rockchip-otp.o
 obj-$(CONFIG_NVMEM_SUNXI_SID)	+= nvmem_sunxi_sid.o
 nvmem_stm32_romem-y 		:= stm32-romem.o
 obj-$(CONFIG_NVMEM_STM32_ROMEM) += nvmem_stm32_romem.o
diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
new file mode 100644
index 000000000000..9f53bcce2f87
--- /dev/null
+++ b/drivers/nvmem/rockchip-otp.c
@@ -0,0 +1,268 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Rockchip OTP Driver
+ *
+ * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
+ * Author: Finley Xiao <finley.xiao@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+/* OTP Register Offsets */
+#define OTPC_SBPI_CTRL			0x0020
+#define OTPC_SBPI_CMD_VALID_PRE		0x0024
+#define OTPC_SBPI_CS_VALID_PRE		0x0028
+#define OTPC_SBPI_STATUS		0x002C
+#define OTPC_USER_CTRL			0x0100
+#define OTPC_USER_ADDR			0x0104
+#define OTPC_USER_ENABLE		0x0108
+#define OTPC_USER_Q			0x0124
+#define OTPC_INT_STATUS			0x0304
+#define OTPC_SBPI_CMD0_OFFSET		0x1000
+#define OTPC_SBPI_CMD1_OFFSET		0x1004
+
+/* OTP Register bits and masks */
+#define OTPC_USER_ADDR_MASK		GENMASK(31, 16)
+#define OTPC_USE_USER			BIT(0)
+#define OTPC_USE_USER_MASK		GENMASK(16, 16)
+#define OTPC_USER_FSM_ENABLE		BIT(0)
+#define OTPC_USER_FSM_ENABLE_MASK	GENMASK(16, 16)
+#define OTPC_SBPI_DONE			BIT(1)
+#define OTPC_USER_DONE			BIT(2)
+
+#define SBPI_DAP_ADDR			0x02
+#define SBPI_DAP_ADDR_SHIFT		8
+#define SBPI_DAP_ADDR_MASK		GENMASK(31, 24)
+#define SBPI_CMD_VALID_MASK		GENMASK(31, 16)
+#define SBPI_DAP_CMD_WRF		0xC0
+#define SBPI_DAP_REG_ECC		0x3A
+#define SBPI_ECC_ENABLE			0x00
+#define SBPI_ECC_DISABLE		0x09
+#define SBPI_ENABLE			BIT(0)
+#define SBPI_ENABLE_MASK		GENMASK(16, 16)
+
+#define OTPC_TIMEOUT			10000
+
+struct rockchip_otp {
+	struct device *dev;
+	void __iomem *base;
+	struct clk_bulk_data	*clks;
+	int num_clks;
+	struct reset_control *rst;
+};
+
+/* list of required clocks */
+static const char * const rockchip_otp_clocks[] = {
+	"otp", "apb_pclk", "phy",
+};
+
+struct rockchip_data {
+	int size;
+};
+
+static int rockchip_otp_reset(struct rockchip_otp *otp)
+{
+	int ret;
+
+	ret = reset_control_assert(otp->rst);
+	if (ret) {
+		dev_err(otp->dev, "failed to assert otp phy %d\n", ret);
+		return ret;
+	}
+
+	udelay(2);
+
+	ret = reset_control_deassert(otp->rst);
+	if (ret) {
+		dev_err(otp->dev, "failed to deassert otp phy %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_otp_wait_status(struct rockchip_otp *otp, u32 flag)
+{
+	u32 status = 0;
+	int ret;
+
+	ret = readl_poll_timeout_atomic(otp->base + OTPC_INT_STATUS, status,
+					(status & flag), 1, OTPC_TIMEOUT);
+	if (ret)
+		return ret;
+
+	/* clean int status */
+	writel(flag, otp->base + OTPC_INT_STATUS);
+
+	return 0;
+}
+
+static int rockchip_otp_ecc_enable(struct rockchip_otp *otp, bool enable)
+{
+	int ret = 0;
+
+	writel(SBPI_DAP_ADDR_MASK | (SBPI_DAP_ADDR << SBPI_DAP_ADDR_SHIFT),
+	       otp->base + OTPC_SBPI_CTRL);
+
+	writel(SBPI_CMD_VALID_MASK | 0x1, otp->base + OTPC_SBPI_CMD_VALID_PRE);
+	writel(SBPI_DAP_CMD_WRF | SBPI_DAP_REG_ECC,
+	       otp->base + OTPC_SBPI_CMD0_OFFSET);
+	if (enable)
+		writel(SBPI_ECC_ENABLE, otp->base + OTPC_SBPI_CMD1_OFFSET);
+	else
+		writel(SBPI_ECC_DISABLE, otp->base + OTPC_SBPI_CMD1_OFFSET);
+
+	writel(SBPI_ENABLE_MASK | SBPI_ENABLE, otp->base + OTPC_SBPI_CTRL);
+
+	ret = rockchip_otp_wait_status(otp, OTPC_SBPI_DONE);
+	if (ret < 0)
+		dev_err(otp->dev, "timeout during ecc_enable\n");
+
+	return ret;
+}
+
+static int rockchip_otp_read(void *context, unsigned int offset,
+			     void *val, size_t bytes)
+{
+	struct rockchip_otp *otp = context;
+	u8 *buf = val;
+	int ret = 0;
+
+	ret = clk_bulk_prepare_enable(otp->num_clks, otp->clks);
+	if (ret < 0) {
+		dev_err(otp->dev, "failed to prepare/enable clks\n");
+		return ret;
+	}
+
+	ret = rockchip_otp_reset(otp);
+	if (ret) {
+		dev_err(otp->dev, "failed to reset otp phy\n");
+		goto disable_clks;
+	}
+
+	ret = rockchip_otp_ecc_enable(otp, false);
+	if (ret < 0) {
+		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
+		goto disable_clks;
+	}
+
+	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
+	udelay(5);
+	while (bytes--) {
+		writel(offset++ | OTPC_USER_ADDR_MASK,
+		       otp->base + OTPC_USER_ADDR);
+		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
+		       otp->base + OTPC_USER_ENABLE);
+		ret = rockchip_otp_wait_status(otp, OTPC_USER_DONE);
+		if (ret < 0) {
+			dev_err(otp->dev, "timeout during read setup\n");
+			goto read_end;
+		}
+		*buf++ = readb(otp->base + OTPC_USER_Q);
+	}
+
+read_end:
+	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
+disable_clks:
+	clk_bulk_disable_unprepare(otp->num_clks, otp->clks);
+
+	return ret;
+}
+
+static struct nvmem_config otp_config = {
+	.name = "rockchip-otp",
+	.owner = THIS_MODULE,
+	.read_only = true,
+	.stride = 1,
+	.word_size = 1,
+	.reg_read = rockchip_otp_read,
+};
+
+static const struct rockchip_data px30_data = {
+	.size = 0x40,
+};
+
+static const struct of_device_id rockchip_otp_match[] = {
+	{
+		.compatible = "rockchip,px30-otp",
+		.data = (void *)&px30_data,
+	},
+	{
+		.compatible = "rockchip,rk3308-otp",
+		.data = (void *)&px30_data,
+	},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, rockchip_otp_match);
+
+static int rockchip_otp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rockchip_otp *otp;
+	const struct rockchip_data *data;
+	struct nvmem_device *nvmem;
+	int ret, i;
+
+	data = of_device_get_match_data(dev);
+	if (!data) {
+		dev_err(dev, "failed to get match data\n");
+		return -EINVAL;
+	}
+
+	otp = devm_kzalloc(&pdev->dev, sizeof(struct rockchip_otp),
+			   GFP_KERNEL);
+	if (!otp)
+		return -ENOMEM;
+
+	otp->dev = dev;
+	otp->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(otp->base))
+		return PTR_ERR(otp->base);
+
+	otp->num_clks = ARRAY_SIZE(rockchip_otp_clocks);
+	otp->clks = devm_kcalloc(dev, otp->num_clks,
+				     sizeof(*otp->clks), GFP_KERNEL);
+	if (!otp->clks)
+		return -ENOMEM;
+
+	for (i = 0; i < otp->num_clks; ++i)
+		otp->clks[i].id = rockchip_otp_clocks[i];
+
+	ret = devm_clk_bulk_get(dev, otp->num_clks, otp->clks);
+	if (ret)
+		return ret;
+
+	otp->rst = devm_reset_control_get(dev, "phy");
+	if (IS_ERR(otp->rst))
+		return PTR_ERR(otp->rst);
+
+	otp_config.size = data->size;
+	otp_config.priv = otp;
+	otp_config.dev = dev;
+	nvmem = devm_nvmem_register(dev, &otp_config);
+
+	return PTR_ERR_OR_ZERO(nvmem);
+}
+
+static struct platform_driver rockchip_otp_driver = {
+	.probe = rockchip_otp_probe,
+	.driver = {
+		.name = "rockchip-otp",
+		.of_match_table = rockchip_otp_match,
+	},
+};
+
+module_platform_driver(rockchip_otp_driver);
+MODULE_DESCRIPTION("Rockchip OTP driver");
+MODULE_LICENSE("GPL v2");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
