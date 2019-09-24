Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F0EBC521
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9L8gfOZQrebycK8f6uu72ZoUEqmZpHKxSqJu7I22ddc=; b=HyQ8VGKuuBG3J3yl8yt6GiG21u
	t1FZ/KIJF4Rk28chp62OMfGGPCT5SEe9rbdqYnD2tSKaxGvTat6C1e5wg3kSl9hRCGwCnlqyJeH4/
	SxnUbI1VBtW97u3Ko6H08CZiA71zbEg4Q9GH3XyInqPz+tTM4r/hxt1hQo9BPO4kY3ISfKHEd6f/V
	5MgvOOsPPyl671zXcLrpcCNlDDEi1b+Sdy2ru+h6W4PBISBIG7mxoDj6owNXQyNpJkxmvbDj+Sc4t
	AP/QTgZdxOGbBVBfi3N6zC0UzuKcTlGMDarnqQ+7JfpPAdVNcYmIAi3GDw+8Yow8rIWBaKL8+TgFR
	+AJ9uHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChNU-0000NM-Nq; Tue, 24 Sep 2019 09:45:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChMx-0000BB-Ns
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:44:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 80D2A2002C6;
 Tue, 24 Sep 2019 11:44:26 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F15A2000DE;
 Tue, 24 Sep 2019 11:44:22 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D7BF3402ED;
 Tue, 24 Sep 2019 17:44:16 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] pwm: pwm-mxs: Use 'dev' instead of dereferencing it
 repeatedly
Date: Tue, 24 Sep 2019 17:42:49 +0800
Message-Id: <1569318169-12327-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569318169-12327-1-git-send-email-Anson.Huang@nxp.com>
References: <1569318169-12327-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_024427_908664_A7211270 
X-CRM114-Status: UNSURE (   8.92  )
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
 drivers/pwm/pwm-mxs.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index b14376b..6255ffc 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -124,11 +124,12 @@ static const struct pwm_ops mxs_pwm_ops = {
 
 static int mxs_pwm_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
 	struct mxs_pwm_chip *mxs;
 	int ret;
 
-	mxs = devm_kzalloc(&pdev->dev, sizeof(*mxs), GFP_KERNEL);
+	mxs = devm_kzalloc(dev, sizeof(*mxs), GFP_KERNEL);
 	if (!mxs)
 		return -ENOMEM;
 
@@ -136,23 +137,23 @@ static int mxs_pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(mxs->base))
 		return PTR_ERR(mxs->base);
 
-	mxs->clk = devm_clk_get(&pdev->dev, NULL);
+	mxs->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(mxs->clk))
 		return PTR_ERR(mxs->clk);
 
-	mxs->chip.dev = &pdev->dev;
+	mxs->chip.dev = dev;
 	mxs->chip.ops = &mxs_pwm_ops;
 	mxs->chip.base = -1;
 
 	ret = of_property_read_u32(np, "fsl,pwm-number", &mxs->chip.npwm);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to get pwm number: %d\n", ret);
+		dev_err(dev, "failed to get pwm number: %d\n", ret);
 		return ret;
 	}
 
 	ret = pwmchip_add(&mxs->chip);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to add pwm chip %d\n", ret);
+		dev_err(dev, "failed to add pwm chip %d\n", ret);
 		return ret;
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
