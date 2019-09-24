Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D725BC467
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UzPLGu3TS1trRVKJCkjsszzbZEbZxwGpYlBCNu4C0Vs=; b=o7s
	Le2WQwLkZh7n3prOq+ZuuMEc9csliBRBaDJpiqhvKprSzTbAE//PURuFBpmdqe5O21egaby0QnXFU
	2dBD/Jo6XHq8ToLifj6IYP/K64kYgqXJ3+pQwBZ8ImRntvQnKuodxVJ9SK3/R/41BS7g2L3qbXz5B
	c4B3xQHVNrHFMGoW6OvETcSgFIyDsOb4+lfEcI3mIY9UNjnjlTZov+BEcerKGH/jDlCKGAcKfjHYe
	M7YaSX0w8POpKtkUBD6YFOW35G5VEY605Gu6pEcsJJgjCJ5dYEf/GicCg/uVgj4iUaZGZAFt5iaMS
	Zu2erYl5iaKfJqrHYKK7+puWV05FKnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgip-0002S6-MZ; Tue, 24 Sep 2019 09:02:59 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgib-0002Rf-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:02:46 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F3151A00D4;
 Tue, 24 Sep 2019 11:02:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3048E1A0169;
 Tue, 24 Sep 2019 11:02:39 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BB501402ED;
 Tue, 24 Sep 2019 17:02:33 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pwm: pwm-imx-tpm: Use 'dev' instead of dereferencing it
 repeatedly
Date: Tue, 24 Sep 2019 17:01:07 +0800
Message-Id: <1569315667-1525-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_020245_340864_85AE2AA6 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add helper variable dev = &pdev->dev to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/pwm/pwm-imx-tpm.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-imx-tpm.c b/drivers/pwm/pwm-imx-tpm.c
index e8385c1..4385801 100644
--- a/drivers/pwm/pwm-imx-tpm.c
+++ b/drivers/pwm/pwm-imx-tpm.c
@@ -337,11 +337,12 @@ static const struct pwm_ops imx_tpm_pwm_ops = {
 
 static int pwm_imx_tpm_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct imx_tpm_pwm_chip *tpm;
 	int ret;
 	u32 val;
 
-	tpm = devm_kzalloc(&pdev->dev, sizeof(*tpm), GFP_KERNEL);
+	tpm = devm_kzalloc(dev, sizeof(*tpm), GFP_KERNEL);
 	if (!tpm)
 		return -ENOMEM;
 
@@ -351,23 +352,23 @@ static int pwm_imx_tpm_probe(struct platform_device *pdev)
 	if (IS_ERR(tpm->base))
 		return PTR_ERR(tpm->base);
 
-	tpm->clk = devm_clk_get(&pdev->dev, NULL);
+	tpm->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(tpm->clk)) {
 		ret = PTR_ERR(tpm->clk);
 		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev,
+			dev_err(dev,
 				"failed to get PWM clock: %d\n", ret);
 		return ret;
 	}
 
 	ret = clk_prepare_enable(tpm->clk);
 	if (ret) {
-		dev_err(&pdev->dev,
+		dev_err(dev,
 			"failed to prepare or enable clock: %d\n", ret);
 		return ret;
 	}
 
-	tpm->chip.dev = &pdev->dev;
+	tpm->chip.dev = dev;
 	tpm->chip.ops = &imx_tpm_pwm_ops;
 	tpm->chip.base = -1;
 	tpm->chip.of_xlate = of_pwm_xlate_with_flags;
@@ -381,7 +382,7 @@ static int pwm_imx_tpm_probe(struct platform_device *pdev)
 
 	ret = pwmchip_add(&tpm->chip);
 	if (ret) {
-		dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
+		dev_err(dev, "failed to add PWM chip: %d\n", ret);
 		clk_disable_unprepare(tpm->clk);
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
