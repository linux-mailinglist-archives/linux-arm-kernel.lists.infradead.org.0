Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7EF77167
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8Jqb3trh867AZUr3xxeFxOeLI4DsOwIhYI7fTPISJE=; b=e9+0jq8RuuB0Yk
	XRdIasOhkaA+BKIot63p2XRH4Bc1MHEHa3TZIXacp/V3HRKcBVqbbufyeKXqszCaxzuo+P7vYku1k
	9mD9TFtG8LKqI2u6XtOv5br3qTZu4tQlB+jip4/MSQU5xxjA09rZxR5T5osf4tYH+6ooSrUaGn0pj
	Bd54YXLZ3b079EnVOfemfgnUPFNPP2P4PEqt6UpPV7IttS3S4Ex6uP7af14itHnbcd47y7oXYhxde
	igoUKnngbzL+Tsl8pZPcTta1pVheIk0lNyckOE+MizByjGvAJIX8bq6a6AwsQAMA2Ff3gsbv+thGO
	ZROTYnTYJW7DKrg8sZuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5AD-00047z-Cv; Fri, 26 Jul 2019 18:41:57 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr59L-0003Vj-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:41:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 52643523039;
 Fri, 26 Jul 2019 20:40:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id zy3us02qcUnp; Fri, 26 Jul 2019 20:40:59 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 04A4E523030;
 Fri, 26 Jul 2019 20:40:59 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id A9240523039;
 Fri, 26 Jul 2019 20:40:56 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: thierry.reding@gmail.com,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
Date: Fri, 26 Jul 2019 20:40:41 +0200
Message-Id: <20190726184045.14669-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726184045.14669-1-jernej.skrabec@siol.net>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_114103_205981_0F091C59 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H6 PWM core needs deasserted reset line in order to work.

Add a quirk for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/pwm/pwm-sun4i.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index de78c824bbfd..1b7be8fbde86 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -16,6 +16,7 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pwm.h>
+#include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/time.h>
@@ -72,12 +73,14 @@ static const u32 prescaler_table[] = {
 
 struct sun4i_pwm_data {
 	bool has_prescaler_bypass;
+	bool has_reset;
 	unsigned int npwm;
 };
 
 struct sun4i_pwm_chip {
 	struct pwm_chip chip;
 	struct clk *clk;
+	struct reset_control *rst;
 	void __iomem *base;
 	spinlock_t ctrl_lock;
 	const struct sun4i_pwm_data *data;
@@ -371,6 +374,14 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(pwm->clk))
 		return PTR_ERR(pwm->clk);
 
+	if (pwm->data->has_reset) {
+		pwm->rst = devm_reset_control_get(&pdev->dev, NULL);
+		if (IS_ERR(pwm->rst))
+			return PTR_ERR(pwm->rst);
+
+		reset_control_deassert(pwm->rst);
+	}
+
 	pwm->chip.dev = &pdev->dev;
 	pwm->chip.ops = &sun4i_pwm_ops;
 	pwm->chip.base = -1;
@@ -383,19 +394,31 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 	ret = pwmchip_add(&pwm->chip);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
-		return ret;
+		goto err_pwm_add;
 	}
 
 	platform_set_drvdata(pdev, pwm);
 
 	return 0;
+
+err_pwm_add:
+	reset_control_assert(pwm->rst);
+
+	return ret;
 }
 
 static int sun4i_pwm_remove(struct platform_device *pdev)
 {
 	struct sun4i_pwm_chip *pwm = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = pwmchip_remove(&pwm->chip);
+	if (ret)
+		return ret;
 
-	return pwmchip_remove(&pwm->chip);
+	reset_control_assert(pwm->rst);
+
+	return 0;
 }
 
 static struct platform_driver sun4i_pwm_driver = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
