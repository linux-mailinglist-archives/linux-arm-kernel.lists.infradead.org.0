Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0903BC46E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yL2gpj+a+zohtDPqsJFvCHAQBVMenhwVeMcKPchmZ1Q=; b=vD5
	LWNSVITofGYqaSKFEZ3BpTwJ8bKsIGJYiU6Vp1UvbnxKggAq0ZErwvEp/MshoBd/g6rgRaOJtRcHm
	jMyHsiCMRerV4eOft3pp8DD2mwViZpzMLzEqYix6zBpC+UUBCC9E7jPK1kRRPK8smvu5ueylZcBkx
	QWvTIJUhTCR1rhVY9XjNaRfneCOgNuLee9SR8u25Se9JeLbIZTn4V6wIWVQZuyoOV2uX/H26IPb4h
	NUSS/1i92SSiZOqmodxv/IPA1KDLTg9QYHdeicLkZ4Bu9DUYDvoERs19HSQ5MdZ7LiCdEI7vmnd0j
	SojZW90k5ZY1dRpT+BLGh9A2c4+ywOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgk5-0002iF-Nj; Tue, 24 Sep 2019 09:04:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgje-0002hu-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:03:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DB80420021C;
 Tue, 24 Sep 2019 11:03:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A25D020095F;
 Tue, 24 Sep 2019 11:03:43 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 48AEE4029F;
 Tue, 24 Sep 2019 17:03:37 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, swboyd@chromium.org,
 mojha@codeaurora.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] input: touchscreen: imx6ul_tsc: Use 'dev' instead of
 dereferencing it repeatedly
Date: Tue, 24 Sep 2019 17:02:11 +0800
Message-Id: <1569315731-2387-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_020350_542159_80C171A4 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
 drivers/input/touchscreen/imx6ul_tsc.c | 37 +++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/input/touchscreen/imx6ul_tsc.c b/drivers/input/touchscreen/imx6ul_tsc.c
index 9ed2588..4555aa9 100644
--- a/drivers/input/touchscreen/imx6ul_tsc.c
+++ b/drivers/input/touchscreen/imx6ul_tsc.c
@@ -361,7 +361,8 @@ static void imx6ul_tsc_close(struct input_dev *input_dev)
 
 static int imx6ul_tsc_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
 	struct imx6ul_tsc *tsc;
 	struct input_dev *input_dev;
 	int err;
@@ -369,11 +370,11 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 	int adc_irq;
 	u32 average_samples;
 
-	tsc = devm_kzalloc(&pdev->dev, sizeof(*tsc), GFP_KERNEL);
+	tsc = devm_kzalloc(dev, sizeof(*tsc), GFP_KERNEL);
 	if (!tsc)
 		return -ENOMEM;
 
-	input_dev = devm_input_allocate_device(&pdev->dev);
+	input_dev = devm_input_allocate_device(dev);
 	if (!input_dev)
 		return -ENOMEM;
 
@@ -389,14 +390,14 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 
 	input_set_drvdata(input_dev, tsc);
 
-	tsc->dev = &pdev->dev;
+	tsc->dev = dev;
 	tsc->input = input_dev;
 	init_completion(&tsc->completion);
 
-	tsc->xnur_gpio = devm_gpiod_get(&pdev->dev, "xnur", GPIOD_IN);
+	tsc->xnur_gpio = devm_gpiod_get(dev, "xnur", GPIOD_IN);
 	if (IS_ERR(tsc->xnur_gpio)) {
 		err = PTR_ERR(tsc->xnur_gpio);
-		dev_err(&pdev->dev,
+		dev_err(dev,
 			"failed to request GPIO tsc_X- (xnur): %d\n", err);
 		return err;
 	}
@@ -404,28 +405,28 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 	tsc->tsc_regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(tsc->tsc_regs)) {
 		err = PTR_ERR(tsc->tsc_regs);
-		dev_err(&pdev->dev, "failed to remap tsc memory: %d\n", err);
+		dev_err(dev, "failed to remap tsc memory: %d\n", err);
 		return err;
 	}
 
 	tsc->adc_regs = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(tsc->adc_regs)) {
 		err = PTR_ERR(tsc->adc_regs);
-		dev_err(&pdev->dev, "failed to remap adc memory: %d\n", err);
+		dev_err(dev, "failed to remap adc memory: %d\n", err);
 		return err;
 	}
 
-	tsc->tsc_clk = devm_clk_get(&pdev->dev, "tsc");
+	tsc->tsc_clk = devm_clk_get(dev, "tsc");
 	if (IS_ERR(tsc->tsc_clk)) {
 		err = PTR_ERR(tsc->tsc_clk);
-		dev_err(&pdev->dev, "failed getting tsc clock: %d\n", err);
+		dev_err(dev, "failed getting tsc clock: %d\n", err);
 		return err;
 	}
 
-	tsc->adc_clk = devm_clk_get(&pdev->dev, "adc");
+	tsc->adc_clk = devm_clk_get(dev, "adc");
 	if (IS_ERR(tsc->adc_clk)) {
 		err = PTR_ERR(tsc->adc_clk);
-		dev_err(&pdev->dev, "failed getting adc clock: %d\n", err);
+		dev_err(dev, "failed getting adc clock: %d\n", err);
 		return err;
 	}
 
@@ -439,18 +440,18 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 
 	err = devm_request_threaded_irq(tsc->dev, tsc_irq,
 					NULL, tsc_irq_fn, IRQF_ONESHOT,
-					dev_name(&pdev->dev), tsc);
+					dev_name(dev), tsc);
 	if (err) {
-		dev_err(&pdev->dev,
+		dev_err(dev,
 			"failed requesting tsc irq %d: %d\n",
 			tsc_irq, err);
 		return err;
 	}
 
 	err = devm_request_irq(tsc->dev, adc_irq, adc_irq_fn, 0,
-				dev_name(&pdev->dev), tsc);
+				dev_name(dev), tsc);
 	if (err) {
-		dev_err(&pdev->dev,
+		dev_err(dev,
 			"failed requesting adc irq %d: %d\n",
 			adc_irq, err);
 		return err;
@@ -484,7 +485,7 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 		tsc->average_select = ilog2(average_samples) - 2;
 		break;
 	default:
-		dev_err(&pdev->dev,
+		dev_err(dev,
 			"touchscreen-average-samples (%u) must be 1, 4, 8, 16 or 32\n",
 			average_samples);
 		return -EINVAL;
@@ -492,7 +493,7 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 
 	err = input_register_device(tsc->input);
 	if (err) {
-		dev_err(&pdev->dev,
+		dev_err(dev,
 			"failed to register input device: %d\n", err);
 		return err;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
