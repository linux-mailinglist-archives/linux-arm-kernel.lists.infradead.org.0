Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA18B6686
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Q7BONmxhFl+4WQcNWHQmkx5UhFBNZuQP+MqO+kkBhA=; b=ZFTRHsWMYdM+FM
	eCyHo8F8oQjqXXPtBi9pRyOt4qP1Gv4pKcDz3jRRGMdkNYn1YGj+W5XGKih+7HrTq0Hqnupx1uQU+
	gztzrFUcS1+z+xMT4Xv86bOEU/UkWd4INAZmaG6SvPDk0Sondm1wKdNEBJq6us39QbGfCgpJvFGD8
	XqCIDxBDI0JNbwf4SfcnEigFiduum+xTqXdwgQiRF4uCzmLMcpOPomlhfByKYTH7vIqHC6n7kRyTp
	s+ifTeRjLaHx1rRff0ChTTML/39e7eAASNcSGCwciiiJXphKgbtD8mjMdI3I/m/GQQECBvprfctZH
	tCT7wJdHpEbHaztIbOlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbOi-0006Qo-JY; Wed, 18 Sep 2019 14:57:36 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbOV-0006Q8-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:57:25 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B47DC200018;
 Wed, 18 Sep 2019 14:57:20 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] pwm: atmel: Remove platform_device_id and use only dt
 bindings
Date: Wed, 18 Sep 2019 16:57:16 +0200
Message-Id: <20190918145716.32022-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_075724_226392_5F02A8A8 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 26202873bb51 ("avr32: remove support for AVR32
architecture") there is no more user of platform_device_id and we
should only use dt bindings

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
Changelog:
 v1->v2
 
 - Remove whole function atmel_pwm_get_driver_data and call
 of_device_get_match_data from atmel_pwm_probe

 drivers/pwm/Kconfig     |  2 +-
 drivers/pwm/pwm-atmel.c | 35 +++--------------------------------
 2 files changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index a7e57516959e..b51fb1a33aa2 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -44,7 +44,7 @@ config PWM_AB8500
 
 config PWM_ATMEL
 	tristate "Atmel PWM support"
-	depends on ARCH_AT91
+	depends on ARCH_AT91 && OF
 	help
 	  Generic PWM framework driver for Atmel SoC.
 
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index e5e1eaf372fa..f7cf0a86a37c 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -318,19 +318,6 @@ static const struct atmel_pwm_data mchp_sam9x60_pwm_data = {
 	},
 };
 
-static const struct platform_device_id atmel_pwm_devtypes[] = {
-	{
-		.name = "at91sam9rl-pwm",
-		.driver_data = (kernel_ulong_t)&atmel_sam9rl_pwm_data,
-	}, {
-		.name = "sama5d3-pwm",
-		.driver_data = (kernel_ulong_t)&atmel_sama5_pwm_data,
-	}, {
-		/* sentinel */
-	},
-};
-MODULE_DEVICE_TABLE(platform, atmel_pwm_devtypes);
-
 static const struct of_device_id atmel_pwm_dt_ids[] = {
 	{
 		.compatible = "atmel,at91sam9rl-pwm",
@@ -350,19 +337,6 @@ static const struct of_device_id atmel_pwm_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
 
-static inline const struct atmel_pwm_data *
-atmel_pwm_get_driver_data(struct platform_device *pdev)
-{
-	const struct platform_device_id *id;
-
-	if (pdev->dev.of_node)
-		return of_device_get_match_data(&pdev->dev);
-
-	id = platform_get_device_id(pdev);
-
-	return (struct atmel_pwm_data *)id->driver_data;
-}
-
 static int atmel_pwm_probe(struct platform_device *pdev)
 {
 	const struct atmel_pwm_data *data;
@@ -370,7 +344,7 @@ static int atmel_pwm_probe(struct platform_device *pdev)
 	struct resource *res;
 	int ret;
 
-	data = atmel_pwm_get_driver_data(pdev);
+	data = of_device_get_match_data(&pdev->dev);
 	if (!data)
 		return -ENODEV;
 
@@ -396,10 +370,8 @@ static int atmel_pwm_probe(struct platform_device *pdev)
 	atmel_pwm->chip.dev = &pdev->dev;
 	atmel_pwm->chip.ops = &atmel_pwm_ops;
 
-	if (pdev->dev.of_node) {
-		atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
-		atmel_pwm->chip.of_pwm_n_cells = 3;
-	}
+	atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
+	atmel_pwm->chip.of_pwm_n_cells = 3;
 
 	atmel_pwm->chip.base = -1;
 	atmel_pwm->chip.npwm = 4;
@@ -437,7 +409,6 @@ static struct platform_driver atmel_pwm_driver = {
 		.name = "atmel-pwm",
 		.of_match_table = of_match_ptr(atmel_pwm_dt_ids),
 	},
-	.id_table = atmel_pwm_devtypes,
 	.probe = atmel_pwm_probe,
 	.remove = atmel_pwm_remove,
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
