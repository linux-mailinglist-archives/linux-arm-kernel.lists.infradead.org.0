Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2D012CC0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 04:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4TFVuccaZrj1leXd+zuMMEGMct1PYL38LZLynlEiO6Y=; b=s3e
	TfkJRUCjTDC5Kq9h+sw+aSebqA2uIussQbGgwYLipfbWHEaLRb8+d0IaqXAYigL5NZwvuxgWvvAZ8
	TrOSi0D3EZIs8lQ5+w3lEjWo2hN2ZCmtPC7l+FfmvfUeU1QZQm2kio2AXYE7uQ5sxfgqfGTZ26Q/N
	RSZfaTVg0iR3Tac9TZ44RwmrqZoHN2EzpmOdJgvkYd+7cPqCaPG/EMbFkNCFxoHo34CNkTvL8PP1j
	i+FK98z5yOG1NLCjos//IIu7ia2sIQsax1Ofs3K3mKnJNoUyqa/jdg8ccwDSbYZYOyTRZx0tPPqsJ
	9a1cZ1eYJS5wom/ALdi7k/avr1SklPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illNn-0000L9-DB; Mon, 30 Dec 2019 03:06:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illNh-0000Kn-25
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 03:06:10 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6BC782011C5;
 Mon, 30 Dec 2019 04:06:07 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7A9212011C9;
 Mon, 30 Dec 2019 04:06:02 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 34F094029B;
 Mon, 30 Dec 2019 11:05:56 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pwm: imx27: Eliminate error message for defer probe
Date: Mon, 30 Dec 2019 11:02:40 +0800
Message-Id: <1577674960-12011-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190609_233587_D90289F5 
X-CRM114-Status: UNSURE (   8.38  )
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

For defer probe error, no need to output error message which
will cause confusion.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/pwm/pwm-imx27.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
index 59d8b12..35a7ac42 100644
--- a/drivers/pwm/pwm-imx27.c
+++ b/drivers/pwm/pwm-imx27.c
@@ -319,9 +319,13 @@ static int pwm_imx27_probe(struct platform_device *pdev)
 
 	imx->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
 	if (IS_ERR(imx->clk_ipg)) {
-		dev_err(&pdev->dev, "getting ipg clock failed with %ld\n",
-				PTR_ERR(imx->clk_ipg));
-		return PTR_ERR(imx->clk_ipg);
+		int ret = PTR_ERR(imx->clk_ipg);
+
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"getting ipg clock failed with %d\n",
+				ret);
+		return ret;
 	}
 
 	imx->clk_per = devm_clk_get(&pdev->dev, "per");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
