Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897491D98D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNPF9PzE2HOjW9C4C/rTy1T4DsSLImA+w0Up/OLktZs=; b=uqIX2ceCOOkYTP
	oA/MejBAN/pt8cWtyzycikGFBJ5ZjiMrXlMC02Djd9u6VEn6lRvWhpPLsC/zTIbzaRbNntgMnFXKw
	slH/434vTTPy1coADWrtC5XAEiJBLXFZc/RnSDlvdoRBnE0FEx1vrk9zv4yOP3PxgXP3O48pJK6eT
	C7x2GxqenIjAq8HcvB4H2gFfravWeKPvdjI0F6rcB3SqN2NybBg4aJotraKUkX2bX+aOsN/OWyN63
	Zi9vEpDNVc6SlmhdCtZfjh2CCCgC4SmcBZR1UecUJaqzy8nKkxB48UOsGhjOXFlHZpPTUk6QwFLNw
	VLstpMei9MSmJtII9/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2s6-0006bN-Kq; Tue, 19 May 2020 14:05:30 +0000
Received: from mail-eopbgr70078.outbound.protection.outlook.com ([40.107.7.78]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2rR-0006R6-7d
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:04:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c82fLZm0cyinS636STTxFWiD/DQT1VwEc1reSNXSXnkJUh16SSIymNSJ6ZTBi3CgO/vZc6DZ4+E+Zkox0WYZRdAvP8pTEQMH4HP0HrZbRS2sunNsV+TY+LjlxGn0K8diEWhsTRPCH68lBMNd/eTO+gCrdh6eOtG6i/r4YsJRnm0kVgeHhH/lOQOnQTpVmzbVyoQ7oGgM+x7dDEltRAnbomVN8sHQwwtRr/CHtb3raLFjDHojZNZqGwPFP+WR20O309iTrZ2HLGk7ezIYkQX8VcMcovFOmQSP9GZ+nbpMyWXLMBG2ZCM/+jcPGehA+MDZB63AG4LduxLpzpFYRW0D2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wSBytGKuQGJD46DrDvrjUMBwqmLxHkFTE7ftPBoUBQM=;
 b=mDB92ovtxwyETAMZusO0WrhAfvqLSj23XsDDsjT3wbcSqxfVeFeTxpQRx6C7GvD336ofyO5rgJ3Od9Er1ijWn3q+YkUaaTzlNtGh2+t2hKOTPmGgqho3GmaMaaVoy9P214EI8r+LVxO/LurOskBhS5fV0tPAQAabLqnnXWdVKdzdlujMGzYb4g9CUIRnCPIFnBNrLwJjXh2viuSEyM8+DkO8+PSW/TNbiR2Y4ZpmRyUK/zU9ETH18XtVQsF4mDwweYrg+lZ0Xo2283M/np2xgP77tbwAGDr96n3L50KVMczASZVi0gbjl+wtLbajRvS6ctBxvCOaLdAer00rhPcO3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wSBytGKuQGJD46DrDvrjUMBwqmLxHkFTE7ftPBoUBQM=;
 b=bg7cfu6NR8yPvMH/l4IXDpvd5w2971w8BGCFbWl7IbaEgI1qgDp5KNXqb17wy3akXYNkwAXdxtul/3//BcaAky4rrpOToyemLvOi8OGolu7SWgOJ/ROBI0lL+0SEsuabI5tRJVFzHXyAV7z+MVvm33B66VYhQADQgx1z3E9zbmE=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6367.eurprd04.prod.outlook.com (2603:10a6:803:11a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Tue, 19 May
 2020 14:04:45 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 14:04:45 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 anson.huang@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 john.lee@nxp.com
Subject: [PATCH v1 1/4] regulator: pca9450: add pca9450 pmic driver
Date: Wed, 20 May 2020 06:05:04 +0800
Message-Id: <1589925907-9195-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589925907-9195-1-git-send-email-yibin.gong@nxp.com>
References: <1589925907-9195-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0128.apcprd03.prod.outlook.com (2603:1096:4:91::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Tue, 19 May 2020 14:04:40 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d04f1a4e-edf0-4d1b-e22e-08d7fbfd9545
X-MS-TrafficTypeDiagnostic: VE1PR04MB6367:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6367E64BE27A33D61799CEB989B90@VE1PR04MB6367.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:820;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GP7JFMat+jaIID6YgRRZquV7xOj7uGHLLCMmmucBQNY7BQTb0Ne6RYTh33PPJZH3iZ033XqDMAUGCusyDvhYroOJHKYjF6f7gPzJekW1sJcLO7VCm4AmQQ50NQZC4AgeVgYbQ08bHky20IfHeiq8EGGIU+2k9cjkBx2P7GmMkyW3XbYV20wyAecRKXHOL/F3bJ5CnRRVubeD/o1bYO2si92aYqaS2poPf3BhPxM74HHyJc+LyVXqGOmMZd/mh3+nWboC/IRnBgK3JGwkcR3GIBznZuKeaK4ZNwqFJ/xUMRpmuJZY9A3Awci1fFmoj7O5a3ftI5JWXIYiSi/oxOtpFLrQs9hh5pmKICEx9ZR0voEVaL4TomlZRLMNyS6J5r15E95j4s0WecP2hbK0qv/AeeRvK8un8JshWuzSSkGVCQ38+7yL2aS4lpfp4VK1BAEaxm1IVAzibxSMFpkdhnsFtrq8Evdr+3gV2M8hJV01Y1Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6636002)(6512007)(4326008)(2616005)(6506007)(6666004)(5660300002)(7416002)(26005)(30864003)(186003)(16526019)(956004)(52116002)(8936002)(36756003)(66946007)(66556008)(2906002)(6486002)(66476007)(86362001)(8676002)(498600001)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: sPbNgNCZGcfIelI6/tt82a+ND2zUNgky55vG+Tj0hPu2TcOzrOj4fF0Z23+jS3bhfWUvhpd0P74Irpm4yt9c5s2y1CakilwmRZCK6P4il8wbe25RVLyKuMvgKKXWBvjgi6l9a9/sHPAiXpB0UHYwV6EkOElgt2QPz8X/DF3hejb4K7KYL0MuQ6dqWVaUda1m57/JLRja0ZfExq0ceArG3m1lNZ3HxxDots9kgYPPd3L9MVdBtoMNyn/yf/hWcsozwNnPFfhM8mwr97Dr6U8h1u1ZEu3VhyNLrEBL0baekm0GTHrRmS4GnZ4UUhS07NvwayPM1ZQy2VrxjYfup/N40EvL4Lshmam57FCWXhTNLmHFHCW6fiEogqBek2nj0OOVAHoJL70Z0R1TPBsn5DIvQ0jKw9FzBNkFOGfsv7fc4MXsi96QhiaL0EPYQAVGHkPie/QCBTmHobn+Jzacy3drQl53LG/2SZ+0t08OzQqiMPg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d04f1a4e-edf0-4d1b-e22e-08d7fbfd9545
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 14:04:45.1294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FJZEl++gwZR1slrdwLRQ1ptkp6R5z7sKzg0WRdcrQ3hIPhyiNb1JcZyneEXcbCT/uT2FNommMk1qpbIyZ8sQ0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_070449_448936_ADB37904 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.78 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add NXP pca9450 pmic driver.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/regulator/Kconfig             |   8 +
 drivers/regulator/Makefile            |   1 +
 drivers/regulator/pca9450-regulator.c | 859 ++++++++++++++++++++++++++++++++++
 include/linux/regulator/pca9450.h     | 219 +++++++++
 4 files changed, 1087 insertions(+)
 create mode 100644 drivers/regulator/pca9450-regulator.c
 create mode 100644 include/linux/regulator/pca9450.h

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index e8f7a09..d94c8ef 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -729,6 +729,14 @@ config REGULATOR_PBIAS
 	 This driver provides support for OMAP pbias modelled
 	 regulators.
 
+config REGULATOR_PCA9450
+	tristate "NXP PCA9450A/PCA9450B/PCA9450C regulator driver"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  Say y here to support the NXP PCA9450A/PCA9450B/PCA9450C PMIC
+	  regulator driver.
+
 config REGULATOR_PCAP
 	tristate "Motorola PCAP2 regulator driver"
 	depends on EZX_PCAP
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index e8f1633..356ca89 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -93,6 +93,7 @@ obj-$(CONFIG_REGULATOR_QCOM_RPMH) += qcom-rpmh-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_SMD_RPM) += qcom_smd-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_SPMI) += qcom_spmi-regulator.o
 obj-$(CONFIG_REGULATOR_PALMAS) += palmas-regulator.o
+obj-$(CONFIG_REGULATOR_PCA9450) += pca9450-regulator.o
 obj-$(CONFIG_REGULATOR_PFUZE100) += pfuze100-regulator.o
 obj-$(CONFIG_REGULATOR_PV88060) += pv88060-regulator.o
 obj-$(CONFIG_REGULATOR_PV88080) += pv88080-regulator.o
diff --git a/drivers/regulator/pca9450-regulator.c b/drivers/regulator/pca9450-regulator.c
new file mode 100644
index 00000000..bdf256d
--- /dev/null
+++ b/drivers/regulator/pca9450-regulator.c
@@ -0,0 +1,859 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2020 NXP.
+ * NXP PCA9450 pmic driver
+ */
+
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/machine.h>
+#include <linux/regulator/of_regulator.h>
+#include <linux/regulator/pca9450.h>
+
+struct pc9450_dvs_config {
+	unsigned int run_reg; /* dvs0 */
+	unsigned int run_mask;
+	unsigned int standby_reg; /* dvs1 */
+	unsigned int standby_mask;
+};
+
+struct pca9450_regulator_desc {
+	struct regulator_desc desc;
+	const struct pc9450_dvs_config dvs;
+};
+
+struct pca9450 {
+	struct device *dev;
+	struct regmap *regmap;
+	enum pca9450_chip_type type;
+	unsigned int rcnt;
+	int irq;
+};
+
+static const struct regmap_range pca9450_status_range = {
+	.range_min = PCA9450_REG_INT1,
+	.range_max = PCA9450_REG_PWRON_STAT,
+};
+
+static const struct regmap_access_table pca9450_volatile_regs = {
+	.yes_ranges = &pca9450_status_range,
+	.n_yes_ranges = 1,
+};
+
+static const struct regmap_config pca9450_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.volatile_table = &pca9450_volatile_regs,
+	.max_register = PCA9450_MAX_REGISTER - 1,
+	.cache_type = REGCACHE_RBTREE,
+};
+
+/*
+ * BUCK1/2/3
+ * BUCK1RAM[1:0] BUCK1 DVS ramp rate setting
+ * 00: 25mV/1usec
+ * 01: 25mV/2usec
+ * 10: 25mV/4usec
+ * 11: 25mV/8usec
+ */
+static int pca9450_dvs_set_ramp_delay(struct regulator_dev *rdev,
+				      int ramp_delay)
+{
+	int id = rdev_get_id(rdev);
+	unsigned int ramp_value;
+
+	switch (ramp_delay) {
+	case 1 ... 3125:
+		ramp_value = BUCK1_RAMP_3P125MV;
+		break;
+	case 3126 ... 6250:
+		ramp_value = BUCK1_RAMP_6P25MV;
+		break;
+	case 6251 ... 12500:
+		ramp_value = BUCK1_RAMP_12P5MV;
+		break;
+	case 12501 ... 25000:
+		ramp_value = BUCK1_RAMP_25MV;
+		break;
+	default:
+		ramp_value = BUCK1_RAMP_25MV;
+	}
+
+	return regmap_update_bits(rdev->regmap, PCA9450_REG_BUCK1CTRL + id * 3,
+				  BUCK1_RAMP_MASK, ramp_value << 6);
+}
+
+static struct regulator_ops pca9450_dvs_buck_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_voltage_time_sel = regulator_set_voltage_time_sel,
+	.set_ramp_delay = pca9450_dvs_set_ramp_delay,
+};
+
+static struct regulator_ops pca9450_buck_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_voltage_time_sel = regulator_set_voltage_time_sel,
+};
+
+static struct regulator_ops pca9450_ldo_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+};
+
+/*
+ * BUCK1/2/3
+ * 0.60 to 2.1875V (12.5mV step)
+ */
+static const struct regulator_linear_range pca9450_dvs_buck_volts[] = {
+	REGULATOR_LINEAR_RANGE(600000,  0x00, 0x7F, 12500),
+};
+
+/*
+ * BUCK4/5/6
+ * 0.6V to 3.4V (25mV step)
+ */
+static const struct regulator_linear_range pca9450_buck_volts[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0x00, 0x70, 25000),
+	REGULATOR_LINEAR_RANGE(3400000, 0x71, 0x7F, 0),
+};
+
+/*
+ * LDO1
+ * 1.6 to 3.3V ()
+ */
+static const struct regulator_linear_range pca9450_ldo1_volts[] = {
+	REGULATOR_LINEAR_RANGE(1600000, 0x00, 0x03, 100000),
+	REGULATOR_LINEAR_RANGE(3000000, 0x04, 0x07, 100000),
+};
+
+/*
+ * LDO2
+ * 0.8 to 1.15V (50mV step)
+ */
+static const struct regulator_linear_range pca9450_ldo2_volts[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0x00, 0x07, 50000),
+};
+
+/*
+ * LDO3/4
+ * 0.8 to 3.3V (100mV step)
+ */
+static const struct regulator_linear_range pca9450_ldo34_volts[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0x00, 0x19, 100000),
+	REGULATOR_LINEAR_RANGE(3300000, 0x1A, 0x1F, 0),
+};
+
+/*
+ * LDO5
+ * 1.8 to 3.3V (100mV step)
+ */
+static const struct regulator_linear_range pca9450_ldo5_volts[] = {
+	REGULATOR_LINEAR_RANGE(1800000,  0x00, 0x0F, 100000),
+};
+
+static int buck_set_dvs(const struct regulator_desc *desc,
+			struct device_node *np, struct regmap *regmap,
+			char *prop, unsigned int reg, unsigned int mask)
+{
+	int ret, i;
+	uint32_t uv;
+
+	ret = of_property_read_u32(np, prop, &uv);
+	if (ret) {
+		if (ret != -EINVAL)
+			return ret;
+		return 0;
+	}
+
+	for (i = 0; i < desc->n_voltages; i++) {
+		ret = regulator_desc_list_voltage_linear_range(desc, i);
+		if (ret < 0)
+			continue;
+		if (ret == uv) {
+			i <<= ffs(desc->vsel_mask) - 1;
+			ret = regmap_update_bits(regmap, reg, mask, i);
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static int pca9450_set_dvs_levels(struct device_node *np,
+			    const struct regulator_desc *desc,
+			    struct regulator_config *cfg)
+{
+	struct pca9450_regulator_desc *data = container_of(desc,
+					struct pca9450_regulator_desc, desc);
+	const struct pc9450_dvs_config *dvs = &data->dvs;
+	unsigned int reg, mask;
+	char *prop;
+	int i, ret = 0;
+
+	for (i = 0; i < PCA9450_DVS_LEVEL_MAX; i++) {
+		switch (i) {
+		case PCA9450_DVS_LEVEL_RUN:
+			prop = "nxp,dvs-run-voltage";
+			reg = dvs->run_reg;
+			mask = dvs->run_mask;
+			break;
+		case PCA9450_DVS_LEVEL_STANDBY:
+			prop = "nxp,dvs-standby-voltage";
+			reg = dvs->standby_reg;
+			mask = dvs->standby_mask;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		ret = buck_set_dvs(desc, np, cfg->regmap, prop, reg, mask);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+static const struct pca9450_regulator_desc pca9450a_regulators[] = {
+	{
+		.desc = {
+			.name = "buck1",
+			.of_match = of_match_ptr("BUCK1"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK1,
+			.ops = &pca9450_dvs_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK1_VOLTAGE_NUM,
+			.linear_ranges = pca9450_dvs_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK1OUT_DVS0,
+			.vsel_mask = BUCK1OUT_DVS0_MASK,
+			.enable_reg = PCA9450_REG_BUCK1CTRL,
+			.enable_mask = BUCK1_ENMODE_MASK,
+			.owner = THIS_MODULE,
+			.of_parse_cb = pca9450_set_dvs_levels,
+		},
+		.dvs = {
+			.run_reg = PCA9450_REG_BUCK1OUT_DVS0,
+			.run_mask = BUCK1OUT_DVS0_MASK,
+			.standby_reg = PCA9450_REG_BUCK1OUT_DVS1,
+			.standby_mask = BUCK1OUT_DVS1_MASK,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck2",
+			.of_match = of_match_ptr("BUCK2"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK2,
+			.ops = &pca9450_dvs_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK2_VOLTAGE_NUM,
+			.linear_ranges = pca9450_dvs_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK2OUT_DVS0,
+			.vsel_mask = BUCK2OUT_DVS0_MASK,
+			.enable_reg = PCA9450_REG_BUCK2CTRL,
+			.enable_mask = BUCK1_ENMODE_MASK,
+			.owner = THIS_MODULE,
+			.of_parse_cb = pca9450_set_dvs_levels,
+		},
+		.dvs = {
+			.run_reg = PCA9450_REG_BUCK2OUT_DVS0,
+			.run_mask = BUCK2OUT_DVS0_MASK,
+			.standby_reg = PCA9450_REG_BUCK2OUT_DVS1,
+			.standby_mask = BUCK2OUT_DVS1_MASK,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck3",
+			.of_match = of_match_ptr("BUCK3"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK3,
+			.ops = &pca9450_dvs_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK3_VOLTAGE_NUM,
+			.linear_ranges = pca9450_dvs_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK3OUT_DVS0,
+			.vsel_mask = BUCK3OUT_DVS0_MASK,
+			.enable_reg = PCA9450_REG_BUCK3CTRL,
+			.enable_mask = BUCK3_ENMODE_MASK,
+			.owner = THIS_MODULE,
+			.of_parse_cb = pca9450_set_dvs_levels,
+		},
+		.dvs = {
+			.run_reg = PCA9450_REG_BUCK3OUT_DVS0,
+			.run_mask = BUCK3OUT_DVS0_MASK,
+			.standby_reg = PCA9450_REG_BUCK3OUT_DVS1,
+			.standby_mask = BUCK3OUT_DVS1_MASK,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck4",
+			.of_match = of_match_ptr("BUCK4"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK4,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK4_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK4OUT,
+			.vsel_mask = BUCK4OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK4CTRL,
+			.enable_mask = BUCK4_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck4",
+			.of_match = of_match_ptr("BUCK4"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK4,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK4_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK4OUT,
+			.vsel_mask = BUCK4OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK4CTRL,
+			.enable_mask = BUCK4_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck5",
+			.of_match = of_match_ptr("BUCK5"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK5,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK5_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK5OUT,
+			.vsel_mask = BUCK5OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK5CTRL,
+			.enable_mask = BUCK5_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck6",
+			.of_match = of_match_ptr("BUCK6"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK6,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK6_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK6OUT,
+			.vsel_mask = BUCK6OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK6CTRL,
+			.enable_mask = BUCK6_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo1",
+			.of_match = of_match_ptr("LDO1"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO1,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO1_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo1_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo1_volts),
+			.vsel_reg = PCA9450_REG_LDO1CTRL,
+			.vsel_mask = LDO1OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO1CTRL,
+			.enable_mask = LDO1_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo2",
+			.of_match = of_match_ptr("LDO2"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO2,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO2_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo2_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo2_volts),
+			.vsel_reg = PCA9450_REG_LDO2CTRL,
+			.vsel_mask = LDO2OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO2CTRL,
+			.enable_mask = LDO2_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo3",
+			.of_match = of_match_ptr("LDO3"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO3,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO3_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo34_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+			.vsel_reg = PCA9450_REG_LDO3CTRL,
+			.vsel_mask = LDO3OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO3CTRL,
+			.enable_mask = LDO3_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo4",
+			.of_match = of_match_ptr("LDO4"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO4,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO4_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo34_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+			.vsel_reg = PCA9450_REG_LDO4CTRL,
+			.vsel_mask = LDO4OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO4CTRL,
+			.enable_mask = LDO4_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo5",
+			.of_match = of_match_ptr("LDO5"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO5,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO5_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo5_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo5_volts),
+			.vsel_reg = PCA9450_REG_LDO5CTRL_H,
+			.vsel_mask = LDO5HOUT_MASK,
+			.enable_reg = PCA9450_REG_LDO5CTRL_H,
+			.enable_mask = LDO5H_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+};
+
+/*
+ * Buck3 removed on PCA9450B and conneced with Buck1 internal for dual phase
+ * on PCA9450C as no Buck3.
+ */
+static const struct pca9450_regulator_desc pca9450bc_regulators[] = {
+	{
+		.desc = {
+			.name = "buck1",
+			.of_match = of_match_ptr("BUCK1"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK1,
+			.ops = &pca9450_dvs_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK1_VOLTAGE_NUM,
+			.linear_ranges = pca9450_dvs_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK1OUT_DVS0,
+			.vsel_mask = BUCK1OUT_DVS0_MASK,
+			.enable_reg = PCA9450_REG_BUCK1CTRL,
+			.enable_mask = BUCK1_ENMODE_MASK,
+			.owner = THIS_MODULE,
+			.of_parse_cb = pca9450_set_dvs_levels,
+		},
+		.dvs = {
+			.run_reg = PCA9450_REG_BUCK1OUT_DVS0,
+			.run_mask = BUCK1OUT_DVS0_MASK,
+			.standby_reg = PCA9450_REG_BUCK1OUT_DVS1,
+			.standby_mask = BUCK1OUT_DVS1_MASK,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck2",
+			.of_match = of_match_ptr("BUCK2"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK2,
+			.ops = &pca9450_dvs_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK2_VOLTAGE_NUM,
+			.linear_ranges = pca9450_dvs_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK2OUT_DVS0,
+			.vsel_mask = BUCK2OUT_DVS0_MASK,
+			.enable_reg = PCA9450_REG_BUCK2CTRL,
+			.enable_mask = BUCK1_ENMODE_MASK,
+			.owner = THIS_MODULE,
+			.of_parse_cb = pca9450_set_dvs_levels,
+		},
+		.dvs = {
+			.run_reg = PCA9450_REG_BUCK2OUT_DVS0,
+			.run_mask = BUCK2OUT_DVS0_MASK,
+			.standby_reg = PCA9450_REG_BUCK2OUT_DVS1,
+			.standby_mask = BUCK2OUT_DVS1_MASK,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck4",
+			.of_match = of_match_ptr("BUCK4"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK4,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK4_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK4OUT,
+			.vsel_mask = BUCK4OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK4CTRL,
+			.enable_mask = BUCK4_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck5",
+			.of_match = of_match_ptr("BUCK5"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK5,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK5_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK5OUT,
+			.vsel_mask = BUCK5OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK5CTRL,
+			.enable_mask = BUCK5_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "buck6",
+			.of_match = of_match_ptr("BUCK6"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_BUCK6,
+			.ops = &pca9450_buck_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_BUCK6_VOLTAGE_NUM,
+			.linear_ranges = pca9450_buck_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+			.vsel_reg = PCA9450_REG_BUCK6OUT,
+			.vsel_mask = BUCK6OUT_MASK,
+			.enable_reg = PCA9450_REG_BUCK6CTRL,
+			.enable_mask = BUCK6_ENMODE_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo1",
+			.of_match = of_match_ptr("LDO1"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO1,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO1_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo1_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo1_volts),
+			.vsel_reg = PCA9450_REG_LDO1CTRL,
+			.vsel_mask = LDO1OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO1CTRL,
+			.enable_mask = LDO1_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo2",
+			.of_match = of_match_ptr("LDO2"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO2,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO2_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo2_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo2_volts),
+			.vsel_reg = PCA9450_REG_LDO2CTRL,
+			.vsel_mask = LDO2OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO2CTRL,
+			.enable_mask = LDO2_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo3",
+			.of_match = of_match_ptr("LDO3"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO3,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO3_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo34_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+			.vsel_reg = PCA9450_REG_LDO3CTRL,
+			.vsel_mask = LDO3OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO3CTRL,
+			.enable_mask = LDO3_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo4",
+			.of_match = of_match_ptr("LDO4"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO4,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO4_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo34_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+			.vsel_reg = PCA9450_REG_LDO4CTRL,
+			.vsel_mask = LDO4OUT_MASK,
+			.enable_reg = PCA9450_REG_LDO4CTRL,
+			.enable_mask = LDO4_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+	{
+		.desc = {
+			.name = "ldo5",
+			.of_match = of_match_ptr("LDO5"),
+			.regulators_node = of_match_ptr("regulators"),
+			.id = PCA9450_LDO5,
+			.ops = &pca9450_ldo_regulator_ops,
+			.type = REGULATOR_VOLTAGE,
+			.n_voltages = PCA9450_LDO5_VOLTAGE_NUM,
+			.linear_ranges = pca9450_ldo5_volts,
+			.n_linear_ranges = ARRAY_SIZE(pca9450_ldo5_volts),
+			.vsel_reg = PCA9450_REG_LDO5CTRL_H,
+			.vsel_mask = LDO5HOUT_MASK,
+			.enable_reg = PCA9450_REG_LDO5CTRL_H,
+			.enable_mask = LDO5H_EN_MASK,
+			.owner = THIS_MODULE,
+		},
+	},
+};
+
+static irqreturn_t pca9450_irq_handler(int irq, void *data)
+{
+	struct pca9450 *pca9450 = data;
+	struct regmap *regmap = pca9450->regmap;
+	unsigned int status;
+	int ret;
+
+	ret = regmap_read(regmap, PCA9450_REG_INT1, &status);
+	if (ret < 0) {
+		dev_err(pca9450->dev,
+			"Failed to read INT1(%d)\n", ret);
+		return IRQ_NONE;
+	}
+
+	if (status & IRQ_PWRON)
+		dev_warn(pca9450->dev, "PWRON interrupt.\n");
+
+	if (status & IRQ_WDOGB)
+		dev_warn(pca9450->dev, "WDOGB interrupt.\n");
+
+	if (status & IRQ_VR_FLT1)
+		dev_warn(pca9450->dev, "VRFLT1 interrupt.\n");
+
+	if (status & IRQ_VR_FLT2)
+		dev_warn(pca9450->dev, "VRFLT2 interrupt.\n");
+
+	if (status & IRQ_LOWVSYS)
+		dev_warn(pca9450->dev, "LOWVSYS interrupt.\n");
+
+	if (status & IRQ_THERM_105)
+		dev_warn(pca9450->dev, "IRQ_THERM_105 interrupt.\n");
+
+	if (status & IRQ_THERM_125)
+		dev_warn(pca9450->dev, "IRQ_THERM_125 interrupt.\n");
+
+	return IRQ_HANDLED;
+}
+
+static int pca9450_i2c_probe(struct i2c_client *i2c,
+			     const struct i2c_device_id *id)
+{
+	enum pca9450_chip_type type = (unsigned int)(uintptr_t)
+				      of_device_get_match_data(&i2c->dev);
+	const struct pca9450_regulator_desc	*regulator_desc;
+	struct regulator_config config = { };
+	struct pca9450 *pca9450;
+	unsigned int device_id, i;
+	int ret;
+
+	if (!i2c->irq) {
+		dev_err(&i2c->dev, "No IRQ configured?\n");
+		return -EINVAL;
+	}
+
+	pca9450 = devm_kzalloc(&i2c->dev, sizeof(struct pca9450), GFP_KERNEL);
+	if (!pca9450)
+		return -ENOMEM;
+
+	switch (type) {
+	case PCA9450_TYPE_PCA9450A:
+		regulator_desc = pca9450a_regulators;
+		pca9450->rcnt = ARRAY_SIZE(pca9450a_regulators);
+		break;
+	case PCA9450_TYPE_PCA9450BC:
+		regulator_desc = pca9450bc_regulators;
+		pca9450->rcnt = ARRAY_SIZE(pca9450bc_regulators);
+		break;
+	default:
+		dev_err(&i2c->dev, "Unknown device type");
+		return -EINVAL;
+	}
+
+	pca9450->irq = i2c->irq;
+	pca9450->type = type;
+	pca9450->dev = &i2c->dev;
+
+	dev_set_drvdata(&i2c->dev, pca9450);
+
+	pca9450->regmap = devm_regmap_init_i2c(i2c,
+					       &pca9450_regmap_config);
+	if (IS_ERR(pca9450->regmap)) {
+		dev_err(&i2c->dev, "regmap initialization failed\n");
+		return PTR_ERR(pca9450->regmap);
+	}
+
+	ret = regmap_read(pca9450->regmap, PCA9450_REG_DEV_ID, &device_id);
+	if (ret) {
+		dev_err(&i2c->dev, "Read device id error\n");
+		return ret;
+	}
+
+	/* Check your board and dts for match the right pmic */
+	if (((device_id >> 4) != 0x1 && type == PCA9450_TYPE_PCA9450A) ||
+	    ((device_id >> 4) != 0x3 && type == PCA9450_TYPE_PCA9450BC)) {
+		dev_err(&i2c->dev, "Device id(%x) mismatched\n",
+			device_id >> 4);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < pca9450->rcnt; i++) {
+		const struct regulator_desc *desc;
+		struct regulator_dev *rdev;
+		const struct pca9450_regulator_desc *r;
+
+		r = &regulator_desc[i];
+		desc = &r->desc;
+
+		config.regmap = pca9450->regmap;
+		config.dev = pca9450->dev;
+
+		rdev = devm_regulator_register(pca9450->dev, desc, &config);
+		if (IS_ERR(rdev)) {
+			ret = PTR_ERR(rdev);
+			dev_err(pca9450->dev,
+				"Failed to register regulator(%s): %d\n",
+				desc->name, ret);
+			return ret;
+		}
+	}
+
+	ret = devm_request_threaded_irq(pca9450->dev, pca9450->irq, NULL,
+					pca9450_irq_handler,
+					(IRQF_TRIGGER_FALLING | IRQF_ONESHOT),
+					"pca9450-irq", pca9450);
+	if (ret != 0) {
+		dev_err(pca9450->dev, "Failed to request IRQ: %d\n",
+			pca9450->irq);
+		return ret;
+	}
+	/* Unmask all interrupt except PWRON/WDOG/RSVD */
+	ret = regmap_update_bits(pca9450->regmap, PCA9450_REG_INT1_MSK,
+				IRQ_VR_FLT1 | IRQ_VR_FLT2 | IRQ_LOWVSYS |
+				IRQ_THERM_105 | IRQ_THERM_125,
+				IRQ_PWRON | IRQ_WDOGB | IRQ_RSVD);
+	if (ret) {
+		dev_err(&i2c->dev, "Unmask irq error\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id pca9450_of_match[] = {
+	{
+		.compatible = "nxp,pca9450a",
+		.data = (void *)PCA9450_TYPE_PCA9450A,
+	},
+	{
+		.compatible = "nxp,pca9450b",
+		.data = (void *)PCA9450_TYPE_PCA9450BC,
+	},
+	{
+		.compatible = "nxp,pca9450c",
+		.data = (void *)PCA9450_TYPE_PCA9450BC,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, pca9450_of_match);
+
+static struct i2c_driver pca9450_i2c_driver = {
+	.driver = {
+		.name = "nxp-pca9450",
+		.of_match_table = pca9450_of_match,
+	},
+	.probe = pca9450_i2c_probe,
+};
+
+static int __init pca9450_i2c_init(void)
+{
+	return i2c_add_driver(&pca9450_i2c_driver);
+}
+module_init(pca9450_i2c_init);
+
+static void __exit pca9450_i2c_exit(void)
+{
+	i2c_del_driver(&pca9450_i2c_driver);
+}
+module_exit(pca9450_i2c_exit);
+
+MODULE_AUTHOR("Robin Gong <yibin.gong@nxp.com>");
+MODULE_DESCRIPTION("NXP PCA9450 Power Management IC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/regulator/pca9450.h b/include/linux/regulator/pca9450.h
new file mode 100644
index 00000000..1bbd301
--- /dev/null
+++ b/include/linux/regulator/pca9450.h
@@ -0,0 +1,219 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright 2020 NXP. */
+
+#ifndef __LINUX_REG_PCA9450_H__
+#define __LINUX_REG_PCA9450_H__
+
+#include <linux/regmap.h>
+
+enum pca9450_chip_type {
+	PCA9450_TYPE_PCA9450A = 0,
+	PCA9450_TYPE_PCA9450BC,
+	PCA9450_TYPE_AMOUNT,
+};
+
+enum {
+	PCA9450_BUCK1 = 0,
+	PCA9450_BUCK2,
+	PCA9450_BUCK3,
+	PCA9450_BUCK4,
+	PCA9450_BUCK5,
+	PCA9450_BUCK6,
+	PCA9450_LDO1,
+	PCA9450_LDO2,
+	PCA9450_LDO3,
+	PCA9450_LDO4,
+	PCA9450_LDO5,
+	PCA9450_REGULATOR_CNT,
+};
+
+enum {
+	PCA9450_DVS_LEVEL_RUN = 0,
+	PCA9450_DVS_LEVEL_STANDBY,
+	PCA9450_DVS_LEVEL_MAX,
+};
+
+#define PCA9450_BUCK1_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK2_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK3_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK4_VOLTAGE_NUM	0x80
+
+#define PCA9450_BUCK5_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK6_VOLTAGE_NUM	0x80
+
+#define PCA9450_LDO1_VOLTAGE_NUM	0x08
+#define PCA9450_LDO2_VOLTAGE_NUM	0x08
+#define PCA9450_LDO3_VOLTAGE_NUM	0x20
+#define PCA9450_LDO4_VOLTAGE_NUM	0x20
+#define PCA9450_LDO5_VOLTAGE_NUM	0x10
+
+enum {
+	PCA9450_REG_DEV_ID	    = 0x00,
+	PCA9450_REG_INT1	    = 0x01,
+	PCA9450_REG_INT1_MSK	    = 0x02,
+	PCA9450_REG_STATUS1	    = 0x03,
+	PCA9450_REG_STATUS2	    = 0x04,
+	PCA9450_REG_PWRON_STAT	    = 0x05,
+	PCA9450_REG_SWRST	    = 0x06,
+	PCA9450_REG_PWRCTRL         = 0x07,
+	PCA9450_REG_RESET_CTRL      = 0x08,
+	PCA9450_REG_CONFIG1         = 0x09,
+	PCA9450_REG_CONFIG2         = 0x0A,
+	PCA9450_REG_BUCK123_DVS     = 0x0C,
+	PCA9450_REG_BUCK1OUT_LIMIT  = 0x0D,
+	PCA9450_REG_BUCK2OUT_LIMIT  = 0x0E,
+	PCA9450_REG_BUCK3OUT_LIMIT  = 0x0F,
+	PCA9450_REG_BUCK1CTRL       = 0x10,
+	PCA9450_REG_BUCK1OUT_DVS0   = 0x11,
+	PCA9450_REG_BUCK1OUT_DVS1   = 0x12,
+	PCA9450_REG_BUCK2CTRL       = 0x13,
+	PCA9450_REG_BUCK2OUT_DVS0   = 0x14,
+	PCA9450_REG_BUCK2OUT_DVS1   = 0x15,
+	PCA9450_REG_BUCK3CTRL       = 0x16,
+	PCA9450_REG_BUCK3OUT_DVS0   = 0x17,
+	PCA9450_REG_BUCK3OUT_DVS1   = 0x18,
+	PCA9450_REG_BUCK4CTRL       = 0x19,
+	PCA9450_REG_BUCK4OUT        = 0x1A,
+	PCA9450_REG_BUCK5CTRL       = 0x1B,
+	PCA9450_REG_BUCK5OUT        = 0x1C,
+	PCA9450_REG_BUCK6CTRL       = 0x1D,
+	PCA9450_REG_BUCK6OUT        = 0x1E,
+	PCA9450_REG_LDO_AD_CTRL     = 0x20,
+	PCA9450_REG_LDO1CTRL        = 0x21,
+	PCA9450_REG_LDO2CTRL        = 0x22,
+	PCA9450_REG_LDO3CTRL        = 0x23,
+	PCA9450_REG_LDO4CTRL        = 0x24,
+	PCA9450_REG_LDO5CTRL_L      = 0x25,
+	PCA9450_REG_LDO5CTRL_H      = 0x26,
+	PCA9450_REG_LOADSW_CTRL     = 0x2A,
+	PCA9450_REG_VRFLT1_STS      = 0x2B,
+	PCA9450_REG_VRFLT2_STS      = 0x2C,
+	PCA9450_REG_VRFLT1_MASK     = 0x2D,
+	PCA9450_REG_VRFLT2_MASK     = 0x2E,
+	PCA9450_MAX_REGISTER	    = 0x2F,
+};
+
+/* PCA9450 BUCK ENMODE bits */
+#define BUCK_ENMODE_OFF			0x00
+#define BUCK_ENMODE_ONREQ		0x01
+#define BUCK_ENMODE_ONREQ_STBYREQ	0x02
+#define BUCK_ENMODE_ON			0x03
+
+/* PCA9450_REG_BUCK1_CTRL bits */
+#define BUCK1_RAMP_MASK			0xC0
+#define BUCK1_RAMP_25MV			0x0
+#define BUCK1_RAMP_12P5MV		0x1
+#define BUCK1_RAMP_6P25MV		0x2
+#define BUCK1_RAMP_3P125MV		0x3
+#define BUCK1_DVS_CTRL			0x10
+#define BUCK1_AD			0x08
+#define BUCK1_FPWM			0x04
+#define BUCK1_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK2_CTRL bits */
+#define BUCK2_RAMP_MASK			0xC0
+#define BUCK2_RAMP_25MV			0x0
+#define BUCK2_RAMP_12P5MV		0x1
+#define BUCK2_RAMP_6P25MV		0x2
+#define BUCK2_RAMP_3P125MV		0x3
+#define BUCK2_DVS_CTRL			0x10
+#define BUCK2_AD			0x08
+#define BUCK2_FPWM			0x04
+#define BUCK2_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK3_CTRL bits */
+#define BUCK3_RAMP_MASK			0xC0
+#define BUCK3_RAMP_25MV			0x0
+#define BUCK3_RAMP_12P5MV		0x1
+#define BUCK3_RAMP_6P25MV		0x2
+#define BUCK3_RAMP_3P125MV		0x3
+#define BUCK3_DVS_CTRL			0x10
+#define BUCK3_AD			0x08
+#define BUCK3_FPWM			0x04
+#define BUCK3_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK4_CTRL bits */
+#define BUCK4_AD			0x08
+#define BUCK4_FPWM			0x04
+#define BUCK4_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK5_CTRL bits */
+#define BUCK5_AD			0x08
+#define BUCK5_FPWM			0x04
+#define BUCK5_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK6_CTRL bits */
+#define BUCK6_AD			0x08
+#define BUCK6_FPWM			0x04
+#define BUCK6_ENMODE_MASK		0x03
+
+/* PCA9450_BUCK1OUT_DVS0 bits */
+#define BUCK1OUT_DVS0_MASK		0x7F
+#define BUCK1OUT_DVS0_DEFAULT		0x14
+
+/* PCA9450_BUCK1OUT_DVS1 bits */
+#define BUCK1OUT_DVS1_MASK		0x7F
+#define BUCK1OUT_DVS1_DEFAULT		0x14
+
+/* PCA9450_BUCK2OUT_DVS0 bits */
+#define BUCK2OUT_DVS0_MASK		0x7F
+#define BUCK2OUT_DVS0_DEFAULT		0x14
+
+/* PCA9450_BUCK2OUT_DVS1 bits */
+#define BUCK2OUT_DVS1_MASK		0x7F
+#define BUCK2OUT_DVS1_DEFAULT		0x14
+
+/* PCA9450_BUCK3OUT_DVS0 bits */
+#define BUCK3OUT_DVS0_MASK		0x7F
+#define BUCK3OUT_DVS0_DEFAULT		0x14
+
+/* PCA9450_BUCK3OUT_DVS1 bits */
+#define BUCK3OUT_DVS1_MASK		0x7F
+#define BUCK3OUT_DVS1_DEFAULT		0x14
+
+/* PCA9450_REG_BUCK4OUT bits */
+#define BUCK4OUT_MASK			0x7F
+#define BUCK4OUT_DEFAULT		0x6C
+
+/* PCA9450_REG_BUCK5OUT bits */
+#define BUCK5OUT_MASK			0x7F
+#define BUCK5OUT_DEFAULT		0x30
+
+/* PCA9450_REG_BUCK6OUT bits */
+#define BUCK6OUT_MASK			0x7F
+#define BUCK6OUT_DEFAULT		0x14
+
+/* PCA9450_REG_LDO1_VOLT bits */
+#define LDO1_EN_MASK			0xC0
+#define LDO1OUT_MASK			0x07
+
+/* PCA9450_REG_LDO2_VOLT bits */
+#define LDO2_EN_MASK			0xC0
+#define LDO2OUT_MASK			0x07
+
+/* PCA9450_REG_LDO3_VOLT bits */
+#define LDO3_EN_MASK			0xC0
+#define LDO3OUT_MASK			0x0F
+
+/* PCA9450_REG_LDO4_VOLT bits */
+#define LDO4_EN_MASK			0xC0
+#define LDO4OUT_MASK			0x0F
+
+/* PCA9450_REG_LDO5_VOLT bits */
+#define LDO5L_EN_MASK			0xC0
+#define LDO5LOUT_MASK			0x0F
+
+#define LDO5H_EN_MASK			0xC0
+#define LDO5HOUT_MASK			0x0F
+
+/* PCA9450_REG_IRQ bits */
+#define IRQ_PWRON			0x80
+#define IRQ_WDOGB			0x40
+#define IRQ_RSVD			0x20
+#define IRQ_VR_FLT1			0x10
+#define IRQ_VR_FLT2			0x08
+#define IRQ_LOWVSYS			0x04
+#define IRQ_THERM_105			0x02
+#define IRQ_THERM_125			0x01
+
+#endif /* __LINUX_REG_PCA9450_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
