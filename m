Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B849C131A31
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyqTEiRuGPnB/5JBasPcJV1VzPD2RJ741v3LZ/AARDE=; b=ZbPy8Kg5eW2nzy
	hCFIZ9KUkdreejuYO2OSTqaXdl3J+IzAjqcJ99+8uHrHv9B3S2wuWH3TPjaKFdmXVBoUjckt0CirG
	YviTyL9u6uU0xrAqLNSVb9hSjjoARO50qo5DuriATregmayJEC6aU3wpKnY83owdYGtCESvfKRWBY
	XZMsuOuRRCl/MfQY+d2vf4K5qkBL87tbeOMVU6Q+HQQ393WwUjgcc4wW0MFNl4AfXZy77o6b7TrqS
	9d3SbU8DXOyMmTRL+lOD/BnZZYPpKXsE++a+AaAem+RYi8Qwjxey2hmUiyVWh485Hzl/wTquX5nnq
	6tKpPXEefai3+m/v1ujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZkg-0007gX-TD; Mon, 06 Jan 2020 21:17:30 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZkE-0007Os-Ai; Mon, 06 Jan 2020 21:17:03 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ioZkB-0001RX-O1; Mon, 06 Jan 2020 22:16:59 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc-pc (pD9E89450.dip0.t-ipconnect.de [217.232.148.80])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 006LGwcr032130
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 6 Jan 2020 22:16:59 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/5] regulator: mp8859: add driver
Date: Mon,  6 Jan 2020 22:16:24 +0100
Message-Id: <20200106211633.2882-2-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106211633.2882-1-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578345422;
 c03f6164; 
X-HE-SMSGID: 1ioZkB-0001RX-O1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_131702_513237_F0A95554 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MP8859 from Monolithic Power Systems is a single output DC/DC
converter. The voltage can be controlled via I2C.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
