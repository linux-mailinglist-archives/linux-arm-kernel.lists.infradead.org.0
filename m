Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D597C3362D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzwePhoxoulXMN3cOVHa4VaQCM6DFdkDH3SkOZQpNzU=; b=lnSHYzDEhS2Fca
	fiLw19IP+e2oZvWcqFJ8D86kVYZvgc+C4ZpqSUccbpzzL7EhdIjrZriDy8T6MhPkIN3jTH7euWKAW
	8MMRHlzQSbZqyC7ENCtczqVTja1Xo3C0lx0pbYmang6gw5QO52ezsNXg271nBPMg8nobkuPqHi8nK
	OorsgJcT1CwzSR7n+g7Qp90s+EtSU1lkYxgE3IQ/o0BZCOZQ3gQJJF9s/Qu+6uIA+kYS4pRqBnsoV
	Tzu4gpVosGkjFOfu/Sl6wDqviheR0t+4qTFNvlTy8mz1k3yA+sgCGzs/JeFhGk/q55KG3n/eeRg+U
	YtfgIgxg/f9bzp3ieE3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqTi-00038A-Rm; Mon, 03 Jun 2019 17:10:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqSk-0000uj-Hw; Mon, 03 Jun 2019 17:09:37 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hXqSe-0004ZW-BX; Mon, 03 Jun 2019 19:09:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org,
	lee.jones@linaro.org
Subject: [PATCH RESEND v8 1/5] mfd: rk808: Add RK817 and RK809 support
Date: Mon,  3 Jun 2019 19:08:56 +0200
Message-Id: <20190603170900.5195-2-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603170900.5195-1-heiko@sntech.de>
References: <20190603170900.5195-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_100934_887467_5A61FF7C 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 Stephen Boyd <sboyd@kernel.org>, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Xie <tony.xie@rock-chips.com>

The RK809 and RK817 are a Power Management IC (PMIC) for multimedia
and handheld devices. They contains the following components:
  - Regulators
  - RTC
  - Clocking

Both RK809 and RK817 chips are using a similar register map,
so we can reuse the RTC and Clocking functionality.
Most of regulators have a some implementation also.

Signed-off-by: Tony Xie <tony.xie@rock-chips.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/Kconfig       |   6 +-
 drivers/mfd/rk808.c       | 192 +++++++++++++++++++++++++++++++++++++-
 include/linux/mfd/rk808.h | 172 ++++++++++++++++++++++++++++++++++
 3 files changed, 364 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index d5a8e064965f..27d43faf65b0 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1006,14 +1006,14 @@ config MFD_RC5T583
 	  different functionality of the device.
 
 config MFD_RK808
-	tristate "Rockchip RK805/RK808/RK818 Power Management Chip"
+	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 Power Management Chip"
 	depends on I2C && OF
 	select MFD_CORE
 	select REGMAP_I2C
 	select REGMAP_IRQ
 	help
-	  If you say yes here you get support for the RK805, RK808 and RK818
-	  Power Management chips.
+	  If you say yes here you get support for the RK805, RK808, RK809,
+	  RK817 and RK818 Power Management chips.
 	  This driver provides common support for accessing the device
 	  through I2C interface. The device supports multiple sub-devices
 	  including interrupts, RTC, LDO & DCDC regulators, and onkey.
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 94377782d208..6ee1c461a3bb 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -27,6 +27,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
+#include <linux/syscore_ops.h>
 
 struct rk808_reg_data {
 	int addr;
@@ -62,6 +63,27 @@ static bool rk808_is_volatile_reg(struct device *dev, unsigned int reg)
 	return false;
 }
 
+static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
+{
+	/*
+	 * Notes:
+	 * - Technically the ROUND_30s bit makes RTC_CTRL_REG volatile, but
+	 *   we don't use that feature.  It's better to cache.
+	 */
+
+	switch (reg) {
+	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
+	case RK817_RTC_STATUS_REG:
+	case RK817_INT_STS_REG0:
+	case RK817_INT_STS_REG1:
+	case RK817_INT_STS_REG2:
+	case RK817_SYS_STS:
+		return true;
+	}
+
+	return true;
+}
+
 static const struct regmap_config rk818_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -86,6 +108,14 @@ static const struct regmap_config rk808_regmap_config = {
 	.volatile_reg = rk808_is_volatile_reg,
 };
 
+static const struct regmap_config rk817_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK817_GPIO_INT_CFG,
+	.cache_type = REGCACHE_NONE,
+	.volatile_reg = rk817_is_volatile_reg,
+};
+
 static struct resource rtc_resources[] = {
 	{
 		.start  = RK808_IRQ_RTC_ALARM,
@@ -94,6 +124,10 @@ static struct resource rtc_resources[] = {
 	}
 };
 
+static struct resource rk817_rtc_resources[] = {
+	DEFINE_RES_IRQ(RK817_IRQ_RTC_ALARM),
+};
+
 static struct resource rk805_key_resources[] = {
 	{
 		.start  = RK805_IRQ_PWRON_FALL,
@@ -107,6 +141,11 @@ static struct resource rk805_key_resources[] = {
 	}
 };
 
+static struct resource rk817_pwrkey_resources[] = {
+	DEFINE_RES_IRQ(RK817_IRQ_PWRON_RISE),
+	DEFINE_RES_IRQ(RK817_IRQ_PWRON_FALL),
+};
+
 static const struct mfd_cell rk805s[] = {
 	{ .name = "rk808-clkout", },
 	{ .name = "rk808-regulator", },
@@ -132,6 +171,21 @@ static const struct mfd_cell rk808s[] = {
 	},
 };
 
+static const struct mfd_cell rk817s[] = {
+	{ .name = "rk808-clkout",},
+	{ .name = "rk808-regulator",},
+	{
+		.name = "rk8xx-pwrkey",
+		.num_resources = ARRAY_SIZE(rk817_pwrkey_resources),
+		.resources = &rk817_pwrkey_resources[0],
+	},
+	{
+		.name = "rk808-rtc",
+		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
+		.resources = &rk817_rtc_resources[0],
+	},
+};
+
 static const struct mfd_cell rk818s[] = {
 	{ .name = "rk808-clkout", },
 	{ .name = "rk808-regulator", },
@@ -167,6 +221,13 @@ static const struct rk808_reg_data rk808_pre_init_reg[] = {
 						    VB_LO_SEL_3500MV },
 };
 
+static const struct rk808_reg_data rk817_pre_init_reg[] = {
+	{RK817_RTC_CTRL_REG, RTC_STOP, RTC_STOP},
+	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_H},
+	{RK817_SYS_CFG(1), RK817_HOTDIE_TEMP_MSK | RK817_TSD_TEMP_MSK,
+					   RK817_HOTDIE_105 | RK817_TSD_140},
+};
+
 static const struct rk808_reg_data rk818_pre_init_reg[] = {
 	/* improve efficiency */
 	{ RK818_BUCK2_CONFIG_REG, BUCK2_RATE_MASK,  BUCK_ILMIN_250MA },
@@ -332,6 +393,33 @@ static const struct regmap_irq rk818_irqs[] = {
 	},
 };
 
+static const struct regmap_irq rk817_irqs[RK817_IRQ_END] = {
+	REGMAP_IRQ_REG_LINE(0, 8),
+	REGMAP_IRQ_REG_LINE(1, 8),
+	REGMAP_IRQ_REG_LINE(2, 8),
+	REGMAP_IRQ_REG_LINE(3, 8),
+	REGMAP_IRQ_REG_LINE(4, 8),
+	REGMAP_IRQ_REG_LINE(5, 8),
+	REGMAP_IRQ_REG_LINE(6, 8),
+	REGMAP_IRQ_REG_LINE(7, 8),
+	REGMAP_IRQ_REG_LINE(8, 8),
+	REGMAP_IRQ_REG_LINE(9, 8),
+	REGMAP_IRQ_REG_LINE(10, 8),
+	REGMAP_IRQ_REG_LINE(11, 8),
+	REGMAP_IRQ_REG_LINE(12, 8),
+	REGMAP_IRQ_REG_LINE(13, 8),
+	REGMAP_IRQ_REG_LINE(14, 8),
+	REGMAP_IRQ_REG_LINE(15, 8),
+	REGMAP_IRQ_REG_LINE(16, 8),
+	REGMAP_IRQ_REG_LINE(17, 8),
+	REGMAP_IRQ_REG_LINE(18, 8),
+	REGMAP_IRQ_REG_LINE(19, 8),
+	REGMAP_IRQ_REG_LINE(20, 8),
+	REGMAP_IRQ_REG_LINE(21, 8),
+	REGMAP_IRQ_REG_LINE(22, 8),
+	REGMAP_IRQ_REG_LINE(23, 8)
+};
+
 static struct regmap_irq_chip rk805_irq_chip = {
 	.name = "rk805",
 	.irqs = rk805_irqs,
@@ -355,6 +443,18 @@ static const struct regmap_irq_chip rk808_irq_chip = {
 	.init_ack_masked = true,
 };
 
+static struct regmap_irq_chip rk817_irq_chip = {
+	.name = "rk817",
+	.irqs = rk817_irqs,
+	.num_irqs = ARRAY_SIZE(rk817_irqs),
+	.num_regs = 3,
+	.irq_reg_stride = 2,
+	.status_base = RK817_INT_STS_REG0,
+	.mask_base = RK817_INT_STS_MSK_REG0,
+	.ack_base = RK817_INT_STS_REG0,
+	.init_ack_masked = true,
+};
+
 static const struct regmap_irq_chip rk818_irq_chip = {
 	.name = "rk818",
 	.irqs = rk818_irqs,
@@ -423,9 +523,33 @@ static void rk818_device_shutdown(void)
 		dev_err(&rk808_i2c_client->dev, "power off error!\n");
 }
 
+static void rk8xx_syscore_shutdown(void)
+{
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	int ret;
+
+	if (system_state == SYSTEM_POWER_OFF &&
+	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
+		ret = regmap_update_bits(rk808->regmap,
+					 RK817_SYS_CFG(3),
+					 RK817_SLPPIN_FUNC_MSK,
+					 SLPPIN_DN_FUN);
+		if (ret) {
+			dev_warn(&rk808_i2c_client->dev,
+				 "Cannot switch to power down function\n");
+		}
+	}
+}
+
+static struct syscore_ops rk808_syscore_ops = {
+	.shutdown = rk8xx_syscore_shutdown,
+};
+
 static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk805" },
 	{ .compatible = "rockchip,rk808" },
+	{ .compatible = "rockchip,rk809" },
+	{ .compatible = "rockchip,rk817" },
 	{ .compatible = "rockchip,rk818" },
 	{ },
 };
@@ -438,10 +562,11 @@ static int rk808_probe(struct i2c_client *client,
 	struct rk808 *rk808;
 	const struct rk808_reg_data *pre_init_reg;
 	const struct mfd_cell *cells;
-	void (*pm_pwroff_fn)(void);
+	void (*pm_pwroff_fn)(void) = NULL;
 	int nr_pre_init_regs;
 	int nr_cells;
 	int pm_off = 0, msb, lsb;
+	unsigned char pmic_id_msb, pmic_id_lsb;
 	int ret;
 	int i;
 
@@ -449,15 +574,24 @@ static int rk808_probe(struct i2c_client *client,
 	if (!rk808)
 		return -ENOMEM;
 
+	if (of_device_is_compatible(np, "rockchip,rk817") ||
+	    of_device_is_compatible(np, "rockchip,rk809")) {
+		pmic_id_msb = RK817_ID_MSB;
+		pmic_id_lsb = RK817_ID_LSB;
+	} else {
+		pmic_id_msb = RK808_ID_MSB;
+		pmic_id_lsb = RK808_ID_LSB;
+	}
+
 	/* Read chip variant */
-	msb = i2c_smbus_read_byte_data(client, RK808_ID_MSB);
+	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
 	if (msb < 0) {
 		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
 			RK808_ID_MSB);
 		return msb;
 	}
 
-	lsb = i2c_smbus_read_byte_data(client, RK808_ID_LSB);
+	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
 	if (lsb < 0) {
 		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
 			RK808_ID_LSB);
@@ -495,6 +629,16 @@ static int rk808_probe(struct i2c_client *client,
 		nr_cells = ARRAY_SIZE(rk818s);
 		pm_pwroff_fn = rk818_device_shutdown;
 		break;
+	case RK809_ID:
+	case RK817_ID:
+		rk808->regmap_cfg = &rk817_regmap_config;
+		rk808->regmap_irq_chip = &rk817_irq_chip;
+		pre_init_reg = rk817_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
+		cells = rk817s;
+		nr_cells = ARRAY_SIZE(rk817s);
+		register_syscore_ops(&rk808_syscore_ops);
+		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
 			rk808->variant);
@@ -568,10 +712,52 @@ static int rk808_remove(struct i2c_client *client)
 	return 0;
 }
 
+static int rk8xx_suspend(struct device *dev)
+{
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	int ret = 0;
+
+	switch (rk808->variant) {
+	case RK809_ID:
+	case RK817_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK817_SYS_CFG(3),
+					 RK817_SLPPIN_FUNC_MSK,
+					 SLPPIN_SLP_FUN);
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+
+static int rk8xx_resume(struct device *dev)
+{
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	int ret = 0;
+
+	switch (rk808->variant) {
+	case RK809_ID:
+	case RK817_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK817_SYS_CFG(3),
+					 RK817_SLPPIN_FUNC_MSK,
+					 SLPPIN_NULL_FUN);
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+SIMPLE_DEV_PM_OPS(rk8xx_pm_ops, rk8xx_suspend, rk8xx_resume);
+
 static struct i2c_driver rk808_i2c_driver = {
 	.driver = {
 		.name = "rk808",
 		.of_match_table = rk808_of_match,
+		.pm = &rk8xx_pm_ops,
 	},
 	.probe    = rk808_probe,
 	.remove   = rk808_remove,
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index d3156594674c..0fd9eedf3c20 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -382,6 +382,7 @@ enum rk805_reg {
 #define SWITCH1_EN	BIT(5)
 #define DEV_OFF_RST	BIT(3)
 #define DEV_OFF		BIT(0)
+#define RTC_STOP	BIT(0)
 
 #define VB_LO_ACT		BIT(4)
 #define VB_LO_SEL_3500MV	(7 << 0)
@@ -396,6 +397,175 @@ enum rk805_reg {
 #define SLEEP_FUN			(0x1 << 2)
 #define RK8XX_ID_MSK			0xfff0
 #define FPWM_MODE			BIT(7)
+enum rk817_reg_id {
+	RK817_ID_DCDC1 = 0,
+	RK817_ID_DCDC2,
+	RK817_ID_DCDC3,
+	RK817_ID_DCDC4,
+	RK817_ID_LDO1,
+	RK817_ID_LDO2,
+	RK817_ID_LDO3,
+	RK817_ID_LDO4,
+	RK817_ID_LDO5,
+	RK817_ID_LDO6,
+	RK817_ID_LDO7,
+	RK817_ID_LDO8,
+	RK817_ID_LDO9,
+	RK817_ID_BOOST,
+	RK817_ID_BOOST_OTG_SW,
+	RK817_NUM_REGULATORS
+};
+
+enum rk809_reg_id {
+	RK809_ID_DCDC5 = RK817_ID_BOOST,
+	RK809_ID_SW1,
+	RK809_ID_SW2,
+	RK809_NUM_REGULATORS
+};
+
+#define RK817_SECONDS_REG		0x00
+#define RK817_MINUTES_REG		0x01
+#define RK817_HOURS_REG			0x02
+#define RK817_DAYS_REG			0x03
+#define RK817_MONTHS_REG		0x04
+#define RK817_YEARS_REG			0x05
+#define RK817_WEEKS_REG			0x06
+#define RK817_ALARM_SECONDS_REG		0x07
+#define RK817_ALARM_MINUTES_REG		0x08
+#define RK817_ALARM_HOURS_REG		0x09
+#define RK817_ALARM_DAYS_REG		0x0a
+#define RK817_ALARM_MONTHS_REG		0x0b
+#define RK817_ALARM_YEARS_REG		0x0c
+#define RK817_RTC_CTRL_REG		0xd
+#define RK817_RTC_STATUS_REG		0xe
+#define RK817_RTC_INT_REG		0xf
+#define RK817_RTC_COMP_LSB_REG		0x10
+#define RK817_RTC_COMP_MSB_REG		0x11
+
+#define RK817_POWER_EN_REG(i)		(0xb1 + (i))
+#define RK817_POWER_SLP_EN_REG(i)	(0xb5 + (i))
+
+#define RK817_POWER_CONFIG		(0xb9)
+
+#define RK817_BUCK_CONFIG_REG(i)	(0xba + (i) * 3)
+
+#define RK817_BUCK1_ON_VSEL_REG		0xBB
+#define RK817_BUCK1_SLP_VSEL_REG	0xBC
+
+#define RK817_BUCK2_CONFIG_REG		0xBD
+#define RK817_BUCK2_ON_VSEL_REG		0xBE
+#define RK817_BUCK2_SLP_VSEL_REG	0xBF
+
+#define RK817_BUCK3_CONFIG_REG		0xC0
+#define RK817_BUCK3_ON_VSEL_REG		0xC1
+#define RK817_BUCK3_SLP_VSEL_REG	0xC2
+
+#define RK817_BUCK4_CONFIG_REG		0xC3
+#define RK817_BUCK4_ON_VSEL_REG		0xC4
+#define RK817_BUCK4_SLP_VSEL_REG	0xC5
+
+#define RK817_LDO_ON_VSEL_REG(idx)	(0xcc + (idx) * 2)
+#define RK817_BOOST_OTG_CFG		(0xde)
+
+#define RK817_ID_MSB			0xed
+#define RK817_ID_LSB			0xee
+
+#define RK817_SYS_STS			0xf0
+#define RK817_SYS_CFG(i)		(0xf1 + (i))
+
+#define RK817_ON_SOURCE_REG		0xf5
+#define RK817_OFF_SOURCE_REG		0xf6
+
+/* INTERRUPT REGISTER */
+#define RK817_INT_STS_REG0		0xf8
+#define RK817_INT_STS_MSK_REG0		0xf9
+#define RK817_INT_STS_REG1		0xfa
+#define RK817_INT_STS_MSK_REG1		0xfb
+#define RK817_INT_STS_REG2		0xfc
+#define RK817_INT_STS_MSK_REG2		0xfd
+#define RK817_GPIO_INT_CFG		0xfe
+
+/* IRQ Definitions */
+#define RK817_IRQ_PWRON_FALL		0
+#define RK817_IRQ_PWRON_RISE		1
+#define RK817_IRQ_PWRON			2
+#define RK817_IRQ_PWMON_LP		3
+#define RK817_IRQ_HOTDIE		4
+#define RK817_IRQ_RTC_ALARM		5
+#define RK817_IRQ_RTC_PERIOD		6
+#define RK817_IRQ_VB_LO			7
+#define RK817_IRQ_PLUG_IN		8
+#define RK817_IRQ_PLUG_OUT		9
+#define RK817_IRQ_CHRG_TERM		10
+#define RK817_IRQ_CHRG_TIME		11
+#define RK817_IRQ_CHRG_TS		12
+#define RK817_IRQ_USB_OV		13
+#define RK817_IRQ_CHRG_IN_CLMP		14
+#define RK817_IRQ_BAT_DIS_ILIM		15
+#define RK817_IRQ_GATE_GPIO		16
+#define RK817_IRQ_TS_GPIO		17
+#define RK817_IRQ_CODEC_PD		18
+#define RK817_IRQ_CODEC_PO		19
+#define RK817_IRQ_CLASSD_MUTE_DONE	20
+#define RK817_IRQ_CLASSD_OCP		21
+#define RK817_IRQ_BAT_OVP               22
+#define RK817_IRQ_CHRG_BAT_HI		23
+#define RK817_IRQ_END			(RK817_IRQ_CHRG_BAT_HI + 1)
+
+/*
+ * rtc_ctrl 0xd
+ * same as 808, except bit4
+ */
+#define RK817_RTC_CTRL_RSV4		BIT(4)
+
+/* power config 0xb9 */
+#define RK817_BUCK3_FB_RES_MSK		BIT(6)
+#define RK817_BUCK3_FB_RES_INTER	BIT(6)
+#define RK817_BUCK3_FB_RES_EXT		0
+
+/* buck config 0xba */
+#define RK817_RAMP_RATE_OFFSET		6
+#define RK817_RAMP_RATE_MASK		(0x3 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_3MV_PER_US	(0x0 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_6_3MV_PER_US	(0x1 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_12_5MV_PER_US	(0x2 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_25MV_PER_US	(0x3 << RK817_RAMP_RATE_OFFSET)
+
+/* sys_cfg1 0xf2 */
+#define RK817_HOTDIE_TEMP_MSK		(0x3 << 4)
+#define RK817_HOTDIE_85			(0x0 << 4)
+#define RK817_HOTDIE_95			(0x1 << 4)
+#define RK817_HOTDIE_105		(0x2 << 4)
+#define RK817_HOTDIE_115		(0x3 << 4)
+
+#define RK817_TSD_TEMP_MSK		BIT(6)
+#define RK817_TSD_140			0
+#define RK817_TSD_160			BIT(6)
+
+#define RK817_CLK32KOUT2_EN		BIT(7)
+
+/* sys_cfg3 0xf4 */
+#define RK817_SLPPIN_FUNC_MSK		(0x3 << 3)
+#define SLPPIN_NULL_FUN			(0x0 << 3)
+#define SLPPIN_SLP_FUN			(0x1 << 3)
+#define SLPPIN_DN_FUN			(0x2 << 3)
+#define SLPPIN_RST_FUN			(0x3 << 3)
+
+#define RK817_RST_FUNC_MSK		(0x3 << 6)
+#define RK817_RST_FUNC_SFT		(6)
+#define RK817_RST_FUNC_CNT		(3)
+#define RK817_RST_FUNC_DEV		(0) /* reset the dev */
+#define RK817_RST_FUNC_REG		(0x1 << 6) /* reset the reg only */
+
+#define RK817_SLPPOL_MSK		BIT(5)
+#define RK817_SLPPOL_H			BIT(5)
+#define RK817_SLPPOL_L			(0)
+
+/* gpio&int 0xfe */
+#define RK817_INT_POL_MSK		BIT(1)
+#define RK817_INT_POL_H			BIT(1)
+#define RK817_INT_POL_L			0
+#define RK809_BUCK5_CONFIG(i)		(RK817_BOOST_OTG_CFG + (i) * 1)
 
 enum {
 	BUCK_ILMIN_50MA,
@@ -443,6 +613,8 @@ enum {
 enum {
 	RK805_ID = 0x8050,
 	RK808_ID = 0x0000,
+	RK809_ID = 0x8090,
+	RK817_ID = 0x8170,
 	RK818_ID = 0x8181,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
