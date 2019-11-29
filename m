Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4400D10D914
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 18:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqUr4Q3tpVg9klawuIe0S4byeLTXBeZXtoMiAHBtNpU=; b=OpPP8V7saMYGU3
	sFQC+Kb4GbJG9DyljurvlLtwK+eIo/t1dPZFBLn9GWFVhST9SB9MizAdXJK3HNlmyMsIdO6u1117k
	2odwMMg1JS+aukhhkUeUTyxySIZj0yqtl9U7xldBwcBALEtCdmkT0ZNRb5mlCDfpeQX6d7kwitbzd
	3I1OEhVTHcVd0vtgle4YXg7MqXDWjjPN2Jq4mvDIlXSVgBNY8YgrRTfRTPSlmG2gc4ab6wtXb9VOB
	8eKmQlVwUbQFJ0lCJcEfZ+vCASbfn38Opy9nwxxDFX+QPcc5U49pFTRMmjnOjBvVc4mNFKy18M0D2
	Hs00z2xEFF1Bi4XhBRUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iak3J-0005mm-Pq; Fri, 29 Nov 2019 17:27:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iak1e-0004XD-2Y
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 17:25:56 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1U-0003DA-Mw; Fri, 29 Nov 2019 18:25:40 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1S-0003AX-Mt; Fri, 29 Nov 2019 18:25:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: support.opensource@diasemi.com, lee.jones@linaro.org, robh+dt@kernel.org,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, joel@jms.id.au,
 andrew@aj.id.au, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v3 4/6] regulator: da9062: add voltage selection gpio support
Date: Fri, 29 Nov 2019 18:25:35 +0100
Message-Id: <20191129172537.31410-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191129172537.31410-1-m.felsch@pengutronix.de>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_092550_465634_55B7C78C 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DA9062/1 devices can switch their regulator voltages between
voltage-A (active) and voltage-B (suspend) settings. Switching the
voltages can be controlled by ther internal state-machine or by a gpio
input signal and can be configured for each individual regulator. This
commit adds the gpio-based voltage switching support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v3:
- make use of <linux/gpio/private.h>
- add comment to vsel_gpi
- append vsel_gpi to da9062_regulator_info instead of insert it in the
  middle

v2:
- use new public api gpiod_to_offset()
- add -ENOENT error check to mimic devm_gpio_optional
- add local gpio check for hardening the code
---
 drivers/regulator/da9062-regulator.c | 174 +++++++++++++++++++++++++++
 1 file changed, 174 insertions(+)

diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-regulator.c
index 710e67081d53..6117e631236b 100644
--- a/drivers/regulator/da9062-regulator.c
+++ b/drivers/regulator/da9062-regulator.c
@@ -7,6 +7,8 @@
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/gpio/private.h>			/* for gpiod_to_offset() */
 #include <linux/slab.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -52,6 +54,16 @@ struct da9062_regulator_info {
 	unsigned int suspend_vsel_reg;
 	/* Event detection bit */
 	struct reg_field oc_event;
+	/*
+	 * The DA9062 can use its own general purpose inputs to control the
+	 * regulators. Each regulator can be configured independently. So the
+	 * DA9062 is a consumer of its own provided general purpose inputs.
+	 *
+	 * vsel_gpi:
+	 * The input port which is used by a regulator to select between
+	 * voltage-a/b settings.
+	 */
+	struct reg_field vsel_gpi;
 };
 
 /* Single regulator settings */
@@ -65,6 +77,7 @@ struct da9062_regulator {
 	struct regmap_field			*suspend;
 	struct regmap_field			*sleep;
 	struct regmap_field			*suspend_sleep;
+	struct regmap_field			*vsel_gpi;
 };
 
 /* Encapsulates all information for the regulators driver */
@@ -351,6 +364,81 @@ static const struct regulator_ops da9062_ldo_ops = {
 	.set_suspend_mode	= da9062_ldo_set_suspend_mode,
 };
 
+static int da9062_config_gpi(struct device_node *np,
+			     const struct regulator_desc *desc,
+			     struct regulator_config *cfg, const char *gpi_id)
+{
+	struct da9062_regulator *regl = cfg->driver_data;
+	struct device *hw = regl->hw->dev;
+	struct device_node *gpio_np;
+	struct gpio_desc *gpi;
+	unsigned int nr;
+	int ret;
+	char *prop, *label;
+
+	prop = kasprintf(GFP_KERNEL, "dlg,%s-sense-gpios", gpi_id);
+	if (!prop)
+		return -ENOMEM;
+
+	label = kasprintf(GFP_KERNEL, "%s-%s-gpi", desc->name, gpi_id);
+	if (!label) {
+		ret = -ENOMEM;
+		goto free;
+	}
+
+	/*
+	 * We only must ensure that the gpio device is probed before the
+	 * regulator driver so no need to store the reference global. Luckily
+	 * devm_* releases the gpio upon a remove action. The gpio's are
+	 * optional so we need to check for ENOENT. Also we need to check for
+	 * the GPIOLIB support. Do nothing if the property or the gpiolib is
+	 * missing.
+	 */
+	gpi = devm_gpiod_get_from_of_node(cfg->dev, np, prop, 0, GPIOD_IN |
+					  GPIOD_FLAGS_BIT_NONEXCLUSIVE, label);
+	if (IS_ERR(gpi)) {
+		ret = PTR_ERR(gpi);
+		if (ret == -ENOENT || ret == -ENOSYS)
+			ret = 0;
+		goto free;
+	}
+
+	/*
+	 * Only local gpios are valid. The gpio-controller is within the
+	 * mfd-root node.
+	 */
+	gpio_np = of_parse_phandle(np, prop, 0);
+	if (gpio_np != hw->of_node) {
+		of_node_put(gpio_np);
+		dev_err(hw, "Failed to request %s.\n", prop);
+		ret = -EINVAL;
+		goto free;
+	}
+	of_node_put(gpio_np);
+
+	/* We need the local number */
+	nr = gpiod_to_offset(gpi);
+	if (nr < 1 || nr > 3) {
+		ret = -EINVAL;
+		goto free;
+	}
+
+	ret = regmap_field_write(regl->vsel_gpi, nr);
+
+free:
+	kfree(prop);
+	kfree(label);
+
+	return ret;
+}
+
+static int da9062_parse_dt(struct device_node *np,
+			   const struct regulator_desc *desc,
+			   struct regulator_config *cfg)
+{
+	return da9062_config_gpi(np, desc, cfg, "vsel");
+}
+
 /* DA9061 Regulator information */
 static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 	{
@@ -358,6 +446,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.name = "DA9061 BUCK1",
 		.desc.of_match = of_match_ptr("buck1"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (300) * 1000,
 		.desc.uV_step = (10) * 1000,
@@ -388,12 +477,17 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK1_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK1_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK1_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK1_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9061_ID_BUCK2,
 		.desc.name = "DA9061 BUCK2",
 		.desc.of_match = of_match_ptr("buck2"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (800) * 1000,
 		.desc.uV_step = (20) * 1000,
@@ -424,12 +518,17 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK3_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK3_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK3_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK3_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9061_ID_BUCK3,
 		.desc.name = "DA9061 BUCK3",
 		.desc.of_match = of_match_ptr("buck3"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (530) * 1000,
 		.desc.uV_step = (10) * 1000,
@@ -460,12 +559,17 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK4_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK4_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK4_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK4_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9061_ID_LDO1,
 		.desc.name = "DA9061 LDO1",
 		.desc.of_match = of_match_ptr("ldo1"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -489,6 +593,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO1_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO1_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO1_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO1_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO1_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -499,6 +607,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.name = "DA9061 LDO2",
 		.desc.of_match = of_match_ptr("ldo2"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -522,6 +631,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO2_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO2_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO2_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO2_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO2_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO2_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -532,6 +645,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.name = "DA9061 LDO3",
 		.desc.of_match = of_match_ptr("ldo3"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -555,6 +669,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO3_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO3_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO3_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO3_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO3_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -565,6 +683,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.name = "DA9061 LDO4",
 		.desc.of_match = of_match_ptr("ldo4"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -588,6 +707,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO4_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO4_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO4_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO4_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO4_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -602,6 +725,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.name = "DA9062 BUCK1",
 		.desc.of_match = of_match_ptr("buck1"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (300) * 1000,
 		.desc.uV_step = (10) * 1000,
@@ -632,12 +756,17 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK1_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK1_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK1_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK1_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_BUCK2,
 		.desc.name = "DA9062 BUCK2",
 		.desc.of_match = of_match_ptr("buck2"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (300) * 1000,
 		.desc.uV_step = (10) * 1000,
@@ -668,12 +797,17 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK2_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK2_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK2_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK2_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK2_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_BUCK3,
 		.desc.name = "DA9062 BUCK3",
 		.desc.of_match = of_match_ptr("buck3"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (800) * 1000,
 		.desc.uV_step = (20) * 1000,
@@ -704,12 +838,17 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK3_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK3_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK3_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK3_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_BUCK4,
 		.desc.name = "DA9062 BUCK4",
 		.desc.of_match = of_match_ptr("buck4"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_buck_ops,
 		.desc.min_uV = (530) * 1000,
 		.desc.uV_step = (10) * 1000,
@@ -740,12 +879,17 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_BUCK4_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_BUCK4_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_BUCK4_CONT,
+			__builtin_ffs((int)DA9062AA_VBUCK4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VBUCK4_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_LDO1,
 		.desc.name = "DA9062 LDO1",
 		.desc.of_match = of_match_ptr("ldo1"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -769,6 +913,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO1_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO1_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO1_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO1_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO1_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -779,6 +927,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.name = "DA9062 LDO2",
 		.desc.of_match = of_match_ptr("ldo2"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -802,6 +951,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO2_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO2_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO2_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO2_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO2_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO2_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -812,6 +965,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.name = "DA9062 LDO3",
 		.desc.of_match = of_match_ptr("ldo3"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -835,6 +989,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO3_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO3_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO3_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO3_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO3_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -845,6 +1003,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.name = "DA9062 LDO4",
 		.desc.of_match = of_match_ptr("ldo4"),
 		.desc.regulators_node = of_match_ptr("regulators"),
+		.desc.of_parse_cb = da9062_parse_dt,
 		.desc.ops = &da9062_ldo_ops,
 		.desc.min_uV = (900) * 1000,
 		.desc.uV_step = (50) * 1000,
@@ -868,6 +1027,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_LDO4_CONF_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_LDO4_CONF_MASK) - 1),
+		.vsel_gpi = REG_FIELD(DA9062AA_LDO4_CONT,
+			__builtin_ffs((int)DA9062AA_VLDO4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_VLDO4_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO4_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -988,6 +1151,15 @@ static int da9062_regulator_probe(struct platform_device *pdev)
 				return PTR_ERR(regl->suspend_sleep);
 		}
 
+		if (regl->info->vsel_gpi.reg) {
+			regl->vsel_gpi = devm_regmap_field_alloc(
+					&pdev->dev,
+					chip->regmap,
+					regl->info->vsel_gpi);
+			if (IS_ERR(regl->vsel_gpi))
+				return PTR_ERR(regl->vsel_gpi);
+		}
+
 		/* Register regulator */
 		memset(&config, 0, sizeof(config));
 		config.dev = chip->dev;
@@ -997,6 +1169,8 @@ static int da9062_regulator_probe(struct platform_device *pdev)
 		regl->rdev = devm_regulator_register(&pdev->dev, &regl->desc,
 						     &config);
 		if (IS_ERR(regl->rdev)) {
+			if (PTR_ERR(regl->rdev) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
 			dev_err(&pdev->dev,
 				"Failed to register %s regulator\n",
 				regl->desc.name);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
