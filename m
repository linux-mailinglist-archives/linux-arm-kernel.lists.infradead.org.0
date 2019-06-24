Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA3D528B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Y1w8mRNqRx6n6TIFQezzcPHWa00pJGoEC2uQnNASUdQ=; b=rme
	C4ga2/a2cay+rLcraTczL14+ltJtH9g7MY6UzxZCQDFKspl948Uxzn5Wsuj9beh5cIwknYm3dS0nW
	vsAPxtq2yqPczdHDsnrxzkNJ1JjSYK1arV/jvwys75pBNq87zAKlEwPXxoGC+w1gJROCFGMBC3Uyg
	dnR2GhhNRBgbd7aITS9c3F2Rzo0UCU3pBsxQdEtpJUGwASAq4o64mGdw356mQtiEk8ypjANGn4Mh2
	GRRuEreI5E/9RCexZiTjce/Eotto44JSUgMDnwfTHR5YSvfbnLjkMAbM9fvBvCX5l0IBx5vHm8m4W
	njX+Bt8ei+yAzvZ5IAfA56DIN29t4hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiBE-0007F9-Oi; Tue, 25 Jun 2019 09:56:00 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfi9K-00059g-6O
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=e01AUlSFaTJ9GcmDZIVEasSrQ0BpXEhV0xwoNCq8yP8=; b=XIZQDM/UzKWE
 9FWSKfZ4Z1mpZ3KZGe/Sixs9C0WmF9gSMoy4swDLp0Z7kTAk6Do3Kz99R3ewHmB5iMc58n6aQGhmR
 11z663kllUVAv1wj3RVp3yXASLdcxNcKMoYDptYxPm0Rvmnv/Ua6oF0liwM3aNMp1DNHuQtpIYkn0
 x04Nk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hfi9E-0004mQ-Tv; Tue, 25 Jun 2019 09:53:57 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 4A52A440064; Mon, 24 Jun 2019 17:32:21 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Applied "regulator: s2mps11: Add support for disabling S2MPS11
 regulators in suspend" to the regulator tree
In-Reply-To: <20190620183530.5386-3-krzk@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20190624163221.4A52A440064@finisterre.sirena.org.uk>
Date: Mon, 24 Jun 2019 17:32:21 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025402_825611_EC99F180 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sangbeom Kim <sbkim73@samsung.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 notify@kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: s2mps11: Add support for disabling S2MPS11 regulators in suspend

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.3

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

From 65d80db2ee92330269e90313c6af782036f4d23d Mon Sep 17 00:00:00 2001
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 20 Jun 2019 20:35:27 +0200
Subject: [PATCH] regulator: s2mps11: Add support for disabling S2MPS11
 regulators in suspend

The driver supported turning off regulators in suspend only for S2MPS14
device.  However this makes also sense for S2MPS11 and can reduce the
power consumption during suspend to RAM.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/s2mps11.c         | 210 +++++++++++++++-------------
 include/linux/mfd/samsung/s2mps11.h |   5 +
 2 files changed, 120 insertions(+), 95 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 93570712eb56..9c06ecd80a90 100644
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
@@ -888,24 +908,24 @@ static const struct regulator_ops s2mpu02_ldo_ops = {
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
