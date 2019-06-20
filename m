Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C604D975
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UAwTYRnu19gD3nBi0bTS/z7O2+DdDsKEM43/IDYSOnE=; b=gKuy7xaeHXPiEsI1BPpyIpS3Pe
	/5RPiatC2z7FEPtiAN21quyICHeW51oOzmj+jRn8c7wsKJl8oTbNLw/YAyf+AmK8QgwJE9CyeLqsc
	P+Q/Tf60j2skf9XRFg06szNTiBVz+uvef99FsZmXK0D0zmdnpqTcxF7Z6otMlu3nuNA2FFTvRRX6X
	uuryusPM60gFg3/gV9Zt/Q7rIHCPdIP1bXL3tXMVmUHO0JrJtBQSo93qI+gHkcq9ClOiYcBNnosiD
	VSjBpreZkDJbW4MwzYgJJLXtKjXRKSRo30Eyc6K6My1LZncZwMgaFW07iwr7CT8OYn4+CGBqyux+3
	6/leceug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1vb-0001VJ-Le; Thu, 20 Jun 2019 18:36:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1ub-00012g-8d
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:35:55 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B02FC206BF;
 Thu, 20 Jun 2019 18:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561055752;
 bh=uEWMFYio0WY05yLNxWgzEXOwSUlRF13te6Ozn/Tepk4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GDNdM/KdMqP8pQh9GL/7yCz0dPylR8hmSdQDNCf9ywNG37WKngYp/UbZN9nA0rgPb
 rr/QR+KkQvLmvqwOvAM1gaqXWcllG4OWDluYqi5/T2BOi7y3iqKO8Os0qNZZv6p9ME
 E8vbBMb8Dc4jCUjAgjd8MZFfUv/J56gSLvPhcNsQ=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] regulator: s2mps11: Add support for disabling S2MPS11
 regulators in suspend
Date: Thu, 20 Jun 2019 20:35:27 +0200
Message-Id: <20190620183530.5386-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620183530.5386-1-krzk@kernel.org>
References: <20190620183530.5386-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113553_392042_020772B6 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>, notify@kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver supported turning off regulators in suspend only for S2MPS14
device.  However this makes also sense for S2MPS11 and can reduce the
power consumption during suspend to RAM.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/regulator/s2mps11.c         | 210 +++++++++++++++-------------
 include/linux/mfd/samsung/s2mps11.h |   5 +
 2 files changed, 120 insertions(+), 95 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index da3a746e65dc..6a83960822d4 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -34,7 +34,7 @@ struct s2mps11_info {
 	enum sec_device_type dev_type;
 
 	/*
-	 * One bit for each S2MPS13/S2MPS14/S2MPU02 regulator whether
+	 * One bit for each S2MPS11/S2MPS13/S2MPS14/S2MPU02 regulator whether
 	 * the suspend mode was enabled.
 	 */
 	DECLARE_BITMAP(suspend_state, S2MPS_REGULATOR_MAX);
@@ -225,27 +225,133 @@ static int s2mps11_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
 				  1 << enable_shift, 0);
 }
 
+static int s2mps11_regulator_enable(struct regulator_dev *rdev)
+{
+	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
+	int rdev_id = rdev_get_id(rdev);
+	unsigned int val;
+
+	switch (s2mps11->dev_type) {
+	case S2MPS11X:
+		if (test_bit(rdev_id, s2mps11->suspend_state))
+			val = S2MPS14_ENABLE_SUSPEND;
+		else
+			val = rdev->desc->enable_mask;
+		break;
+	case S2MPS13X:
+	case S2MPS14X:
+		if (test_bit(rdev_id, s2mps11->suspend_state))
+			val = S2MPS14_ENABLE_SUSPEND;
+		else if (s2mps11->ext_control_gpiod[rdev_id])
+			val = S2MPS14_ENABLE_EXT_CONTROL;
+		else
+			val = rdev->desc->enable_mask;
+		break;
+	case S2MPU02:
+		if (test_bit(rdev_id, s2mps11->suspend_state))
+			val = S2MPU02_ENABLE_SUSPEND;
+		else
+			val = rdev->desc->enable_mask;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
+			rdev->desc->enable_mask, val);
+}
+
+static int s2mps11_regulator_set_suspend_disable(struct regulator_dev *rdev)
+{
+	int ret;
+	unsigned int val, state;
+	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
+	int rdev_id = rdev_get_id(rdev);
+
+	/* Below LDO should be always on or does not support suspend mode. */
+	switch (s2mps11->dev_type) {
+	case S2MPS11X:
+		switch (rdev_id) {
+		case S2MPS11_LDO2:
+		case S2MPS11_LDO36:
+		case S2MPS11_LDO37:
+		case S2MPS11_LDO38:
+			return 0;
+		default:
+			state = S2MPS14_ENABLE_SUSPEND;
+			break;
+		}
+		break;
+	case S2MPS13X:
+	case S2MPS14X:
+		switch (rdev_id) {
+		case S2MPS14_LDO3:
+			return 0;
+		default:
+			state = S2MPS14_ENABLE_SUSPEND;
+			break;
+		}
+		break;
+	case S2MPU02:
+		switch (rdev_id) {
+		case S2MPU02_LDO13:
+		case S2MPU02_LDO14:
+		case S2MPU02_LDO15:
+		case S2MPU02_LDO17:
+		case S2MPU02_BUCK7:
+			state = S2MPU02_DISABLE_SUSPEND;
+			break;
+		default:
+			state = S2MPU02_ENABLE_SUSPEND;
+			break;
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = regmap_read(rdev->regmap, rdev->desc->enable_reg, &val);
+	if (ret < 0)
+		return ret;
+
+	set_bit(rdev_id, s2mps11->suspend_state);
+	/*
+	 * Don't enable suspend mode if regulator is already disabled because
+	 * this would effectively for a short time turn on the regulator after
+	 * resuming.
+	 * However we still want to toggle the suspend_state bit for regulator
+	 * in case if it got enabled before suspending the system.
+	 */
+	if (!(val & rdev->desc->enable_mask))
+		return 0;
+
+	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
+				  rdev->desc->enable_mask, state);
+}
+
 static const struct regulator_ops s2mps11_ldo_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
 	.is_enabled		= regulator_is_enabled_regmap,
-	.enable			= regulator_enable_regmap,
+	.enable			= s2mps11_regulator_enable,
 	.disable		= regulator_disable_regmap,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
 	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
 	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
+	.set_suspend_disable	= s2mps11_regulator_set_suspend_disable,
 };
 
 static const struct regulator_ops s2mps11_buck_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
 	.is_enabled		= regulator_is_enabled_regmap,
-	.enable			= regulator_enable_regmap,
+	.enable			= s2mps11_regulator_enable,
 	.disable		= regulator_disable_regmap,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
 	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
 	.set_voltage_time_sel	= s2mps11_regulator_set_voltage_time_sel,
 	.set_ramp_delay		= s2mps11_set_ramp_delay,
+	.set_suspend_disable	= s2mps11_regulator_set_suspend_disable,
 };
 
 #define regulator_desc_s2mps11_ldo(num, step) {		\
@@ -501,102 +607,16 @@ static const struct regulator_desc s2mps13_regulators[] = {
 	regulator_desc_s2mps13_buck8_10(10, MIN_500_MV,  STEP_6_25_MV, 0x10),
 };
 
-static int s2mps14_regulator_enable(struct regulator_dev *rdev)
-{
-	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
-	int rdev_id = rdev_get_id(rdev);
-	unsigned int val;
-
-	switch (s2mps11->dev_type) {
-	case S2MPS13X:
-	case S2MPS14X:
-		if (test_bit(rdev_id, s2mps11->suspend_state))
-			val = S2MPS14_ENABLE_SUSPEND;
-		else if (s2mps11->ext_control_gpiod[rdev_id])
-			val = S2MPS14_ENABLE_EXT_CONTROL;
-		else
-			val = rdev->desc->enable_mask;
-		break;
-	case S2MPU02:
-		if (test_bit(rdev_id, s2mps11->suspend_state))
-			val = S2MPU02_ENABLE_SUSPEND;
-		else
-			val = rdev->desc->enable_mask;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
-			rdev->desc->enable_mask, val);
-}
-
-static int s2mps14_regulator_set_suspend_disable(struct regulator_dev *rdev)
-{
-	int ret;
-	unsigned int val, state;
-	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
-	int rdev_id = rdev_get_id(rdev);
-
-	/* Below LDO should be always on or does not support suspend mode. */
-	switch (s2mps11->dev_type) {
-	case S2MPS13X:
-	case S2MPS14X:
-		switch (rdev_id) {
-		case S2MPS14_LDO3:
-			return 0;
-		default:
-			state = S2MPS14_ENABLE_SUSPEND;
-			break;
-		}
-		break;
-	case S2MPU02:
-		switch (rdev_id) {
-		case S2MPU02_LDO13:
-		case S2MPU02_LDO14:
-		case S2MPU02_LDO15:
-		case S2MPU02_LDO17:
-		case S2MPU02_BUCK7:
-			state = S2MPU02_DISABLE_SUSPEND;
-			break;
-		default:
-			state = S2MPU02_ENABLE_SUSPEND;
-			break;
-		}
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	ret = regmap_read(rdev->regmap, rdev->desc->enable_reg, &val);
-	if (ret < 0)
-		return ret;
-
-	set_bit(rdev_id, s2mps11->suspend_state);
-	/*
-	 * Don't enable suspend mode if regulator is already disabled because
-	 * this would effectively for a short time turn on the regulator after
-	 * resuming.
-	 * However we still want to toggle the suspend_state bit for regulator
-	 * in case if it got enabled before suspending the system.
-	 */
-	if (!(val & rdev->desc->enable_mask))
-		return 0;
-
-	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
-			rdev->desc->enable_mask, state);
-}
-
 static const struct regulator_ops s2mps14_reg_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
 	.is_enabled		= regulator_is_enabled_regmap,
-	.enable			= s2mps14_regulator_enable,
+	.enable			= s2mps11_regulator_enable,
 	.disable		= regulator_disable_regmap,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
 	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
 	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
-	.set_suspend_disable	= s2mps14_regulator_set_suspend_disable,
+	.set_suspend_disable	= s2mps11_regulator_set_suspend_disable,
 };
 
 #define regulator_desc_s2mps14_ldo(num, min, step) {	\
@@ -889,24 +909,24 @@ static const struct regulator_ops s2mpu02_ldo_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
 	.is_enabled		= regulator_is_enabled_regmap,
-	.enable			= s2mps14_regulator_enable,
+	.enable			= s2mps11_regulator_enable,
 	.disable		= regulator_disable_regmap,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
 	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
 	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
-	.set_suspend_disable	= s2mps14_regulator_set_suspend_disable,
+	.set_suspend_disable	= s2mps11_regulator_set_suspend_disable,
 };
 
 static const struct regulator_ops s2mpu02_buck_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
 	.is_enabled		= regulator_is_enabled_regmap,
-	.enable			= s2mps14_regulator_enable,
+	.enable			= s2mps11_regulator_enable,
 	.disable		= regulator_disable_regmap,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
 	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
 	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
-	.set_suspend_disable	= s2mps14_regulator_set_suspend_disable,
+	.set_suspend_disable	= s2mps11_regulator_set_suspend_disable,
 	.set_ramp_delay		= s2mpu02_set_ramp_delay,
 };
 
diff --git a/include/linux/mfd/samsung/s2mps11.h b/include/linux/mfd/samsung/s2mps11.h
index 6e7668a389a1..f6c035eb87be 100644
--- a/include/linux/mfd/samsung/s2mps11.h
+++ b/include/linux/mfd/samsung/s2mps11.h
@@ -188,4 +188,9 @@ enum s2mps11_regulators {
 #define S2MPS11_BUCK6_RAMP_EN_SHIFT	0
 #define S2MPS11_PMIC_EN_SHIFT	6
 
+/*
+ * Bits for "enable suspend" (On/Off controlled by PWREN)
+ * are the same as in S2MPS14: S2MPS14_ENABLE_SUSPEND
+ */
+
 #endif /*  __LINUX_MFD_S2MPS11_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
