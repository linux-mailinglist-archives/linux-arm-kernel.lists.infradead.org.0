Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A822F528AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=fZcB1+idZmLnkay5aULEZJewSNMArG8w7C5tc26KGx0=; b=ddZ
	O9k6STGE63+fuvJ3GLcJmv6v6wgEKfb8Ug8L7HrJYNO85RDTuU2PtnO7iSXGvkiHRjdmfFS0XL/Fw
	coD27Xjp2RHd35/vkl5JW9QL273yEjuyb4zwhEvqqMqdsdGbEVbmvj1g9pme4VHKiEOvxPvcDmoA3
	4s+XFYvqkJUHUzz5U7trHObzqsRl3wkN4ESPHgGnyvRZqnjulNMN8J0+1tzmdSgzy0GOn/y7NlYyv
	v2dOQJ0tHoUbaQ+ResFZyjOrj1OTiMFqGP1nJww/kJCL3vpd1LF/ayHOzgHs9HQDP9LB2WTFmVbAU
	tufxhqLiD4nK1eDZW3MggcgH0NjOPFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfi9t-0005HI-BY; Tue, 25 Jun 2019 09:54:37 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfi9K-0005Ag-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:54:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Is1+qLfsClVYiQcPS895LnMxgYzGgmXn4MHHKf2bb7I=; b=cNk4HE2OKVSE
 St+k+AGRo3ZxuiSrky92SzPbqf4UFvfwEaI6n+IVKYrX9I8a/UrMrdqwLrHVHcLBYEwcUia2INzV6
 tYSzPa1lYqmLmz7LtxB7iiKinuPW52wKKTsZclliiDmWBvgkqOwMCSTdFIX/jZQuPsucp2HRopelY
 9mwNw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hfi9G-0004mc-GD; Tue, 25 Jun 2019 09:53:58 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 6A2A0440066; Mon, 24 Jun 2019 17:32:21 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Applied "regulator: s2mps11: Reduce number of rdev_get_id() calls" to
 the regulator tree
In-Reply-To: <20190620183530.5386-2-krzk@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20190624163221.6A2A0440066@finisterre.sirena.org.uk>
Date: Mon, 24 Jun 2019 17:32:21 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025403_092740_5E5A99EC 
X-CRM114-Status: GOOD (  17.28  )
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

   regulator: s2mps11: Reduce number of rdev_get_id() calls

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

From df33799c5c3262a69acd29b7a4eb9e7cbd1b007c Mon Sep 17 00:00:00 2001
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 20 Jun 2019 20:35:26 +0200
Subject: [PATCH] regulator: s2mps11: Reduce number of rdev_get_id() calls

Store the regulator ID instead of calling rdev_get_id() every time.
This makes code slightly easier to read as shorter 'rdev_id' variable is
used instead of full call.  This can also speed things up by reducing
number of calls, although effect was not measured.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/s2mps11.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 134c62db36c5..93570712eb56 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -70,10 +70,11 @@ static int s2mps11_regulator_set_voltage_time_sel(struct regulator_dev *rdev,
 				   unsigned int new_selector)
 {
 	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
+	int rdev_id = rdev_get_id(rdev);
 	unsigned int ramp_delay = 0;
 	int old_volt, new_volt;
 
-	switch (rdev_get_id(rdev)) {
+	switch (rdev_id) {
 	case S2MPS11_BUCK2:
 		ramp_delay = s2mps11->ramp_delay2;
 		break;
@@ -111,9 +112,10 @@ static int s2mps11_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
 	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
 	unsigned int ramp_val, ramp_shift, ramp_reg = S2MPS11_REG_RAMP_BUCK;
 	unsigned int ramp_enable = 1, enable_shift = 0;
+	int rdev_id = rdev_get_id(rdev);
 	int ret;
 
-	switch (rdev_get_id(rdev)) {
+	switch (rdev_id) {
 	case S2MPS11_BUCK1:
 		if (ramp_delay > s2mps11->ramp_delay16)
 			s2mps11->ramp_delay16 = ramp_delay;
@@ -203,9 +205,8 @@ static int s2mps11_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
 		goto ramp_disable;
 
 	/* Ramp delay can be enabled/disabled only for buck[2346] */
-	if ((rdev_get_id(rdev) >= S2MPS11_BUCK2 &&
-			rdev_get_id(rdev) <= S2MPS11_BUCK4) ||
-			rdev_get_id(rdev) == S2MPS11_BUCK6)  {
+	if ((rdev_id >= S2MPS11_BUCK2 && rdev_id <= S2MPS11_BUCK4) ||
+	    rdev_id == S2MPS11_BUCK6)  {
 		ret = regmap_update_bits(rdev->regmap, S2MPS11_REG_RAMP,
 					 1 << enable_shift, 1 << enable_shift);
 		if (ret) {
@@ -503,20 +504,21 @@ static const struct regulator_desc s2mps13_regulators[] = {
 static int s2mps14_regulator_enable(struct regulator_dev *rdev)
 {
 	struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
+	int rdev_id = rdev_get_id(rdev);
 	unsigned int val;
 
 	switch (s2mps11->dev_type) {
 	case S2MPS13X:
 	case S2MPS14X:
-		if (test_bit(rdev_get_id(rdev), s2mps11->suspend_state))
+		if (test_bit(rdev_id, s2mps11->suspend_state))
 			val = S2MPS14_ENABLE_SUSPEND;
-		else if (s2mps11->ext_control_gpiod[rdev_get_id(rdev)])
+		else if (s2mps11->ext_control_gpiod[rdev_id])
 			val = S2MPS14_ENABLE_EXT_CONTROL;
 		else
 			val = rdev->desc->enable_mask;
 		break;
 	case S2MPU02:
-		if (test_bit(rdev_get_id(rdev), s2mps11->suspend_state))
+		if (test_bit(rdev_id, s2mps11->suspend_state))
 			val = S2MPU02_ENABLE_SUSPEND;
 		else
 			val = rdev->desc->enable_mask;
@@ -570,7 +572,7 @@ static int s2mps14_regulator_set_suspend_disable(struct regulator_dev *rdev)
 	if (ret < 0)
 		return ret;
 
-	set_bit(rdev_get_id(rdev), s2mps11->suspend_state);
+	set_bit(rdev_id, s2mps11->suspend_state);
 	/*
 	 * Don't enable suspend mode if regulator is already disabled because
 	 * this would effectively for a short time turn on the regulator after
@@ -856,8 +858,9 @@ static int s2mps11_pmic_dt_parse(struct platform_device *pdev,
 static int s2mpu02_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
 {
 	unsigned int ramp_val, ramp_shift, ramp_reg;
+	int rdev_id = rdev_get_id(rdev);
 
-	switch (rdev_get_id(rdev)) {
+	switch (rdev_id) {
 	case S2MPU02_BUCK1:
 		ramp_shift = S2MPU02_BUCK1_RAMP_SHIFT;
 		break;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
