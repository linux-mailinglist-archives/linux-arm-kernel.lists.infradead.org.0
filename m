Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159E10D913
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 18:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ip9Gz5SuJiKVMjE07MHhzZwfjM6DrdJqPK1NYWbZeA=; b=GCcL/2n7PWRy2a
	cF2+LK1C4yBEprH+vN/I53KKpfkLrAe25IAALEZDauaDM+oCeJUSEB2vuwZCYrUcD7swi8wof9IM/
	LSBtetwnMwwJZTAduABJRnr8C+KK4EW0Jv+E7l1vSn7ngLXSE2E21nmR/JkG0PlrsuV8e7Yvnh/eV
	vSvZUWnPeYEcyGUYiCu7RSz3HJ4iUVFTlTeZKYm/mIEkfI+V65G5I70PmoQy3iyibO7K/xpJ4TJ+Q
	ffhI4P/MXavJSMsJbNvufM9Bq0nmZPT40PwSPVC+UbrMRoJQnuJakhfkJmTbt/qxc9T5jZ5jRINfy
	2P13UZVR97GZswSpWZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iak31-0005WA-Mr; Fri, 29 Nov 2019 17:27:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iak1e-0004Xn-T7
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 17:25:54 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1U-0003DC-N6; Fri, 29 Nov 2019 18:25:40 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1S-0003Ae-Nq; Fri, 29 Nov 2019 18:25:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: support.opensource@diasemi.com, lee.jones@linaro.org, robh+dt@kernel.org,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, joel@jms.id.au,
 andrew@aj.id.au, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v3 6/6] regulator: da9062: add gpio based regulator
 dis-/enable support
Date: Fri, 29 Nov 2019 18:25:37 +0100
Message-Id: <20191129172537.31410-7-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20191129_092551_094777_AD6BC022 
X-CRM114-Status: GOOD (  15.72  )
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

Each regulator can be enabeld/disabled by the internal pmic state
machine or by a gpio input signal. Typically the OTP configures the
regulators to be enabled/disabled on a specific sequence number which is
most the time fine. Sometimes we need to reconfigure that due to a PCB
bug. This patch adds the support to disable/enable the regulator based
on a gpio input signal.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- add comment on reg_field
- append ena_gpi to da9062_regulator_info instead of insert it in the
  middle
---
 drivers/regulator/da9062-regulator.c | 88 +++++++++++++++++++++++++++-
 1 file changed, 86 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-regulator.c
index 6117e631236b..79b08029282a 100644
--- a/drivers/regulator/da9062-regulator.c
+++ b/drivers/regulator/da9062-regulator.c
@@ -62,8 +62,13 @@ struct da9062_regulator_info {
 	 * vsel_gpi:
 	 * The input port which is used by a regulator to select between
 	 * voltage-a/b settings.
+	 *
+	 * ena_gpi:
+	 * The input port which is used by a regulator to en-/disable its
+	 * output.
 	 */
 	struct reg_field vsel_gpi;
+	struct reg_field ena_gpi;
 };
 
 /* Single regulator settings */
@@ -78,6 +83,7 @@ struct da9062_regulator {
 	struct regmap_field			*sleep;
 	struct regmap_field			*suspend_sleep;
 	struct regmap_field			*vsel_gpi;
+	struct regmap_field			*ena_gpi;
 };
 
 /* Encapsulates all information for the regulators driver */
@@ -423,7 +429,10 @@ static int da9062_config_gpi(struct device_node *np,
 		goto free;
 	}
 
-	ret = regmap_field_write(regl->vsel_gpi, nr);
+	if (!strncmp(gpi_id, "ena", 3))
+		ret = regmap_field_write(regl->ena_gpi, nr);
+	else
+		ret = regmap_field_write(regl->vsel_gpi, nr);
 
 free:
 	kfree(prop);
@@ -436,7 +445,13 @@ static int da9062_parse_dt(struct device_node *np,
 			   const struct regulator_desc *desc,
 			   struct regulator_config *cfg)
 {
-	return da9062_config_gpi(np, desc, cfg, "vsel");
+	int error;
+
+	error = da9062_config_gpi(np, desc, cfg, "vsel");
+	if (error)
+		return error;
+
+	return da9062_config_gpi(np, desc, cfg, "ena");
 }
 
 /* DA9061 Regulator information */
@@ -481,6 +496,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK1_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK1_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK1_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK1_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9061_ID_BUCK2,
@@ -522,6 +541,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK3_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK3_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK3_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK3_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9061_ID_BUCK3,
@@ -563,6 +586,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK4_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK4_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK4_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK4_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9061_ID_LDO1,
@@ -597,6 +624,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO1_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO1_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO1_CONT,
+			__builtin_ffs((int)DA9062AA_LDO1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO1_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO1_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -635,6 +666,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO2_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO2_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO2_CONT,
+			__builtin_ffs((int)DA9062AA_LDO2_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO2_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO2_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -673,6 +708,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO3_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO3_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO3_CONT,
+			__builtin_ffs((int)DA9062AA_LDO3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO3_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO3_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -711,6 +750,10 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO4_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO4_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO4_CONT,
+			__builtin_ffs((int)DA9062AA_LDO4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO4_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO4_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -760,6 +803,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK1_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK1_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK1_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK1_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_BUCK2,
@@ -801,6 +848,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK2_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK2_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK2_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK2_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK2_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_BUCK3,
@@ -842,6 +893,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK3_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK3_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK3_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK3_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_BUCK4,
@@ -883,6 +938,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VBUCK4_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VBUCK4_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_BUCK4_CONT,
+			__builtin_ffs((int)DA9062AA_BUCK4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_BUCK4_GPI_MASK) - 1),
 	},
 	{
 		.desc.id = DA9062_ID_LDO1,
@@ -917,6 +976,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO1_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO1_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO1_CONT,
+			__builtin_ffs((int)DA9062AA_LDO1_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO1_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO1_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -955,6 +1018,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO2_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO2_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO2_CONT,
+			__builtin_ffs((int)DA9062AA_LDO2_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO2_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO2_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -993,6 +1060,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO3_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO3_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO3_CONT,
+			__builtin_ffs((int)DA9062AA_LDO3_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO3_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO3_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -1031,6 +1102,10 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 			__builtin_ffs((int)DA9062AA_VLDO4_GPI_MASK) - 1,
 			sizeof(unsigned int) * 8 -
 			__builtin_clz(DA9062AA_VLDO4_GPI_MASK) - 1),
+		.ena_gpi = REG_FIELD(DA9062AA_LDO4_CONT,
+			__builtin_ffs((int)DA9062AA_LDO4_GPI_MASK) - 1,
+			sizeof(unsigned int) * 8 -
+			__builtin_clz(DA9062AA_LDO4_GPI_MASK) - 1),
 		.oc_event = REG_FIELD(DA9062AA_STATUS_D,
 			__builtin_ffs((int)DA9062AA_LDO4_ILIM_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -1160,6 +1235,15 @@ static int da9062_regulator_probe(struct platform_device *pdev)
 				return PTR_ERR(regl->vsel_gpi);
 		}
 
+		if (regl->info->ena_gpi.reg) {
+			regl->ena_gpi = devm_regmap_field_alloc(
+					&pdev->dev,
+					chip->regmap,
+					regl->info->ena_gpi);
+			if (IS_ERR(regl->ena_gpi))
+				return PTR_ERR(regl->ena_gpi);
+		}
+
 		/* Register regulator */
 		memset(&config, 0, sizeof(config));
 		config.dev = chip->dev;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
