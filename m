Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9A74D972
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=otENWo2gakFKT1JfDr87mC5mHZ6t1NmFqes7d/518rs=; b=Ftn18r1jU8aw8lQHqab353nPbV
	+6qHczy0nfE0xwwwOB5iVDs6dJ0BSYnSrKCebMJqfaJPSx2rpTMPKJPI9wkDuwBEdCCQRGyGey8V5
	OBgPEEd7gH5GlV3xMvFI2WodwdMzDZhDYqvHTi7gh7xMww4IV+Un/nvwXd9t7lP9x29eCUOnw0VZG
	t+53g6VVWFDZDF5368yvSxqq/eI2h6KDF5NmKKv03duyU2czXDPAx29P/QGfuIYxMT/DeLJHvrSZW
	jEG+L2ZN5b7IA9Rdk3L6V35dMHuIKj13uP6mYHRgZAlcbOFGG+8KlTycnHSOIZCb8dz/G1e011egU
	HSY6LExw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1vC-0001DO-4s; Thu, 20 Jun 2019 18:36:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1uX-0000z6-GC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:35:51 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6035A214AF;
 Thu, 20 Jun 2019 18:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561055749;
 bh=Nkx3uz7GL7NGDDpw4fYD/05ucbEMErcxN5IxFTyhmq0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qH53Kgrx4s5t6T4td+IfsFLyVfJxRX9XW9ucFLSVUo+GRdmfR+kcGLrcYADMNGZsH
 ZuUXNipkS1qwNTev0AC+n2pqLT7OFDex2JYpbgSJaw2w+fJdErRvM2wAcJCCQScUEZ
 w7PlKCFE2Wv6o2Td0arP0y4jcRXp2y62S2m91brk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] regulator: s2mps11: Reduce number of rdev_get_id() calls
Date: Thu, 20 Jun 2019 20:35:26 +0200
Message-Id: <20190620183530.5386-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620183530.5386-1-krzk@kernel.org>
References: <20190620183530.5386-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113549_743407_7E971FF4 
X-CRM114-Status: GOOD (  14.91  )
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

Store the regulator ID instead of calling rdev_get_id() every time.
This makes code slightly easier to read as shorter 'rdev_id' variable is
used instead of full call.  This can also speed things up by reducing
number of calls, although effect was not measured.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/regulator/s2mps11.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index e155c58061af..da3a746e65dc 100644
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
@@ -857,8 +859,9 @@ static int s2mps11_pmic_dt_parse(struct platform_device *pdev,
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
