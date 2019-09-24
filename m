Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A66BC462
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aCMFv/TyGL6s4DqhMPDnztMGLkkVy5khZFgcZy0Dfic=; b=C8q
	67ezt9Cr/mkireWE1IYtB5cE/jfwrMxZPKSK+Tspj//6fxXo3Jlvljmoghtj4ZJDFSxcxWei3HS2d
	t+eYFfkH8+ZnXxvX1jPkH/uDLnnUPETj4pVgtTDim57h56+/1sGdSWomkP+SbCfRXRykdiV7dSj3u
	3DLB52Q2FW/L5SKJ4IhGKiseYS1J8s7O5hJObRmLj6IjicFsf23m3zRsR7y1IjkmV82TwEJmItxSg
	FLpWjj/nzBGqE61zxRkG0u0WD1AbakvO9hTXszcIkCSlcLMI47ULjNOXhl0eNlS8quZOsE/w/ae4s
	qJHyB+046jVu5IqaA27tDMfpyl0+x2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgi4-0002Cz-NN; Tue, 24 Sep 2019 09:02:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCghr-0002CG-II
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:02:01 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C0AD1200857;
 Tue, 24 Sep 2019 11:01:56 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8EF1620077E;
 Tue, 24 Sep 2019 11:01:52 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 22B6A4029F;
 Tue, 24 Sep 2019 17:01:47 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Date: Tue, 24 Sep 2019 16:59:53 +0800
Message-Id: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_020159_746227_0FA2DA3C 
X-CRM114-Status: UNSURE (   8.63  )
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
 drivers/pwm/pwm-imx27.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
index 434a351..3afee29 100644
--- a/drivers/pwm/pwm-imx27.c
+++ b/drivers/pwm/pwm-imx27.c
@@ -290,27 +290,28 @@ MODULE_DEVICE_TABLE(of, pwm_imx27_dt_ids);
 
 static int pwm_imx27_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct pwm_imx27_chip *imx;
 
-	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
+	imx = devm_kzalloc(dev, sizeof(*imx), GFP_KERNEL);
 	if (imx == NULL)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, imx);
 
-	imx->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
+	imx->clk_ipg = devm_clk_get(dev, "ipg");
 	if (IS_ERR(imx->clk_ipg)) {
-		dev_err(&pdev->dev, "getting ipg clock failed with %ld\n",
+		dev_err(dev, "getting ipg clock failed with %ld\n",
 				PTR_ERR(imx->clk_ipg));
 		return PTR_ERR(imx->clk_ipg);
 	}
 
-	imx->clk_per = devm_clk_get(&pdev->dev, "per");
+	imx->clk_per = devm_clk_get(dev, "per");
 	if (IS_ERR(imx->clk_per)) {
 		int ret = PTR_ERR(imx->clk_per);
 
 		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev,
+			dev_err(dev,
 				"failed to get peripheral clock: %d\n",
 				ret);
 
@@ -318,7 +319,7 @@ static int pwm_imx27_probe(struct platform_device *pdev)
 	}
 
 	imx->chip.ops = &pwm_imx27_ops;
-	imx->chip.dev = &pdev->dev;
+	imx->chip.dev = dev;
 	imx->chip.base = -1;
 	imx->chip.npwm = 1;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
