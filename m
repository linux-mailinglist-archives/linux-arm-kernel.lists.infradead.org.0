Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF491346DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 16:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=azFziA6UY5rCaqhGt9p5YW3zFyeWJVPRAQFZyioZ9R4=; b=Ok4
	Ax77zwdqrTDikEqPJRRYm0l3kTu7r0ObH8XXi8E5Toz8TaGtIqNr+ETdHZSDUCAXEGuOaYyeChluu
	JJTUPwFG2LNXzSjAw8BI9uinbASJWKkVmcc5b8RDDBaIGL5qqLOCS1hMAQN0Ql1I/yv6/7LgOfhmE
	tW2cRna/+3l6MaoxHT45jjAsxAZtmCWEpIzOiuH9amrfx7gexCPRB3BDOrIpz96st1t0+A/xMurv4
	I3DzSjXELJCzlC8LvI0Il8N2yQJWEn11cEmkEEgNazmKu+fIzpRKxbmRdxAsy3Eh8s+GaFxjKWVwX
	mMcr5IzVRJmHQmQnSJUCc8bb7qw3cYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDkI-0006HH-Id; Wed, 08 Jan 2020 15:59:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDjc-0005o6-4x; Wed, 08 Jan 2020 15:59:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92E9EDA7;
 Wed,  8 Jan 2020 07:59:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A67F3F534;
 Wed,  8 Jan 2020 07:59:02 -0800 (PST)
Date: Wed, 08 Jan 2020 15:59:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Applied "regulator: mp8859: add driver" to the regulator tree
In-Reply-To: <20200106211633.2882-2-m.reichl@fivetechno.de>
Message-Id: <applied-20200106211633.2882-2-m.reichl@fivetechno.de>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_075904_308602_39F85B23 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: mp8859: add driver

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 4444a1c10069e2f371fa497ba22feafafed5aada Mon Sep 17 00:00:00 2001
From: Markus Reichl <m.reichl@fivetechno.de>
Date: Mon, 6 Jan 2020 22:16:24 +0100
Subject: [PATCH] regulator: mp8859: add driver

The MP8859 from Monolithic Power Systems is a single output DC/DC
converter. The voltage can be controlled via I2C.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
Link: https://lore.kernel.org/r/20200106211633.2882-2-m.reichl@fivetechno.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/mp8859.c | 156 +++++++++++++++++++++++++++++++++++++
 1 file changed, 156 insertions(+)
 create mode 100644 drivers/regulator/mp8859.c

diff --git a/drivers/regulator/mp8859.c b/drivers/regulator/mp8859.c
new file mode 100644
index 000000000000..e804a5267301
--- /dev/null
+++ b/drivers/regulator/mp8859.c
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 five technologies GmbH
+// Author: Markus Reichl <m.reichl@fivetechno.de>
+
+#include <linux/module.h>
+#include <linux/i2c.h>
+#include <linux/of.h>
+#include <linux/regulator/driver.h>
+#include <linux/regmap.h>
+
+
+#define VOL_MIN_IDX			0x00
+#define VOL_MAX_IDX			0x7ff
+
+/* Register definitions */
+#define MP8859_VOUT_L_REG		0    //3 lo Bits
+#define MP8859_VOUT_H_REG		1    //8 hi Bits
+#define MP8859_VOUT_GO_REG		2
+#define MP8859_IOUT_LIM_REG		3
+#define MP8859_CTL1_REG			4
+#define MP8859_CTL2_REG			5
+#define MP8859_RESERVED1_REG		6
+#define MP8859_RESERVED2_REG		7
+#define MP8859_RESERVED3_REG		8
+#define MP8859_STATUS_REG		9
+#define MP8859_INTERRUPT_REG		0x0A
+#define MP8859_MASK_REG			0x0B
+#define MP8859_ID1_REG			0x0C
+#define MP8859_MFR_ID_REG		0x27
+#define MP8859_DEV_ID_REG		0x28
+#define MP8859_IC_REV_REG		0x29
+
+#define MP8859_MAX_REG			0x29
+
+#define MP8859_GO_BIT			0x01
+
+
+static int mp8859_set_voltage_sel(struct regulator_dev *rdev, unsigned int sel)
+{
+	int ret;
+
+	ret = regmap_write(rdev->regmap, MP8859_VOUT_L_REG, sel & 0x7);
+
+	if (ret)
+		return ret;
+	ret = regmap_write(rdev->regmap, MP8859_VOUT_H_REG, sel >> 3);
+
+	if (ret)
+		return ret;
+	ret = regmap_update_bits(rdev->regmap, MP8859_VOUT_GO_REG,
+					MP8859_GO_BIT, 1);
+	return ret;
+}
+
+static int mp8859_get_voltage_sel(struct regulator_dev *rdev)
+{
+	unsigned int val_tmp;
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(rdev->regmap, MP8859_VOUT_H_REG, &val_tmp);
+
+	if (ret)
+		return ret;
+	val = val_tmp << 3;
+
+	ret = regmap_read(rdev->regmap, MP8859_VOUT_L_REG, &val_tmp);
+
+	if (ret)
+		return ret;
+	val |= val_tmp & 0x07;
+	return val;
+}
+
+static const struct regulator_linear_range mp8859_dcdc_ranges[] = {
+	REGULATOR_LINEAR_RANGE(0, VOL_MIN_IDX, VOL_MAX_IDX, 10000),
+};
+
+static const struct regmap_config mp8859_regmap = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = MP8859_MAX_REG,
+	.cache_type = REGCACHE_RBTREE,
+};
+
+static const struct regulator_ops mp8859_ops = {
+	.set_voltage_sel = mp8859_set_voltage_sel,
+	.get_voltage_sel = mp8859_get_voltage_sel,
+	.list_voltage = regulator_list_voltage_linear_range,
+};
+
+static const struct regulator_desc mp8859_regulators[] = {
+	{
+		.id = 0,
+		.type = REGULATOR_VOLTAGE,
+		.name = "mp8859_dcdc",
+		.of_match = of_match_ptr("mp8859_dcdc"),
+		.n_voltages = VOL_MAX_IDX + 1,
+		.linear_ranges = mp8859_dcdc_ranges,
+		.n_linear_ranges = 1,
+		.ops = &mp8859_ops,
+		.owner = THIS_MODULE,
+	},
+};
+
+static int mp8859_i2c_probe(struct i2c_client *i2c)
+{
+	int ret;
+	struct regulator_config config = {.dev = &i2c->dev};
+	struct regmap *regmap = devm_regmap_init_i2c(i2c, &mp8859_regmap);
+	struct regulator_dev *rdev;
+
+	if (IS_ERR(regmap)) {
+		ret = PTR_ERR(regmap);
+		dev_err(&i2c->dev, "regmap init failed: %d\n", ret);
+		return ret;
+	}
+	rdev = devm_regulator_register(&i2c->dev, &mp8859_regulators[0],
+					&config);
+
+	if (IS_ERR(rdev)) {
+		ret = PTR_ERR(rdev);
+		dev_err(&i2c->dev, "failed to register %s: %d\n",
+			mp8859_regulators[0].name, ret);
+			return ret;
+		}
+	return 0;
+}
+
+static const struct of_device_id mp8859_dt_id[] = {
+	{.compatible =  "mps,mp8859"},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mp8859_dt_id);
+
+static const struct i2c_device_id mp8859_i2c_id[] = {
+	{ "mp8859", },
+	{  },
+};
+MODULE_DEVICE_TABLE(i2c, mp8859_i2c_id);
+
+static struct i2c_driver mp8859_regulator_driver = {
+	.driver = {
+		.name = "mp8859",
+		.of_match_table = of_match_ptr(mp8859_dt_id),
+	},
+	.probe_new = mp8859_i2c_probe,
+	.id_table = mp8859_i2c_id,
+};
+
+module_i2c_driver(mp8859_regulator_driver);
+
+MODULE_DESCRIPTION("Monolithic Power Systems MP8859 voltage regulator driver");
+MODULE_AUTHOR("Markus Reichl <m.reichl@fivetechno.de>");
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
