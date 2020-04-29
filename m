Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0DF1BD87A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nCtH3VJ26XG3faWg4INCfz2CdKJJbewNOnUJcY5ogIg=; b=CwR9U3CkQ+UPQx
	WenE5ut2N0SCWkMOEOU3pn4DcUXqBwKR0yfxzvVvaYnJohOdQJBm7uWkdGzCnMeZpMqhFgOOBq5hl
	1W20CsXODq0p6exz6hEoPJtgqUn+tdm+MYfHzP07u4JbZ9+mAMbHQCTPEw5iXAEZmbIAWwB1HlZ2a
	1pStKJeA8aJDxt7bgoPX3b422tK2pyzxZBzhwS/jDJz/oir7ZNlVS2mYUQs1q83s3spzIeR5yMjB1
	dz6tT+gDNnRdH1l8x7BHEu/XzEYCNNspKkX+gZmT+S8JFYm+Jv86Haf4DZj5q7xxgoT7CEUTSQj9t
	tPubiRuBtsP2izWgNi0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjCt-0002p5-MI; Wed, 29 Apr 2020 09:40:43 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjCh-0002o4-Iu
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:40:33 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.5]) by
 rmmx-syy-dmz-app12-12012 (RichMail) with SMTP id 2eec5ea94b749b9-add0f;
 Wed, 29 Apr 2020 17:40:05 +0800 (CST)
X-RM-TRANSID: 2eec5ea94b749b9-add0f
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.104.146.39])
 by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee35ea94b714a2-d9f76;
 Wed, 29 Apr 2020 17:40:04 +0800 (CST)
X-RM-TRANSID: 2ee35ea94b714a2-d9f76
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH] ASoC: mxs-saif: Add variable dev to simplify code
Date: Wed, 29 Apr 2020 17:40:23 +0800
Message-Id: <20200429094023.12856-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_024032_095317_32D56D3F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org,
 Zhang Shengju <zhangshengju@cmss.chinamobile.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add variable 'dev' to make the code cleaner in the function
mxs_saif_probe(). And now that the function mxs_saif_mclk_init()
have defined the variables 'ret' as the error returned value,
then it should be used instead in this place.

Signed-off-by: Zhang Shengju <zhangshengju@cmss.chinamobile.com>
Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 sound/soc/mxs/mxs-saif.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/sound/soc/mxs/mxs-saif.c b/sound/soc/mxs/mxs-saif.c
index dc197883e..f4e441183 100644
--- a/sound/soc/mxs/mxs-saif.c
+++ b/sound/soc/mxs/mxs-saif.c
@@ -719,7 +719,7 @@ static int mxs_saif_mclk_init(struct platform_device *pdev)
 		if (ret == -EEXIST)
 			return 0;
 		dev_err(&pdev->dev, "failed to register mclk: %d\n", ret);
-		return PTR_ERR(clk);
+		return ret;
 	}
 
 	ret = of_clk_add_provider(np, of_clk_src_simple_get, clk);
@@ -732,6 +732,7 @@ static int mxs_saif_mclk_init(struct platform_device *pdev)
 static int mxs_saif_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
 	struct mxs_saif *saif;
 	int irq, ret;
 	struct device_node *master;
@@ -739,7 +740,7 @@ static int mxs_saif_probe(struct platform_device *pdev)
 	if (!np)
 		return -EINVAL;
 
-	saif = devm_kzalloc(&pdev->dev, sizeof(*saif), GFP_KERNEL);
+	saif = devm_kzalloc(dev, sizeof(*saif), GFP_KERNEL);
 	if (!saif)
 		return -ENOMEM;
 
@@ -750,7 +751,7 @@ static int mxs_saif_probe(struct platform_device *pdev)
 		saif->id = ret;
 
 	if (saif->id >= ARRAY_SIZE(mxs_saif)) {
-		dev_err(&pdev->dev, "get wrong saif id\n");
+		dev_err(dev, "get wrong saif id\n");
 		return -EINVAL;
 	}
 
@@ -770,18 +771,17 @@ static int mxs_saif_probe(struct platform_device *pdev)
 			saif->master_id = ret;
 
 		if (saif->master_id >= ARRAY_SIZE(mxs_saif)) {
-			dev_err(&pdev->dev, "get wrong master id\n");
+			dev_err(dev, "get wrong master id\n");
 			return -EINVAL;
 		}
 	}
 
 	mxs_saif[saif->id] = saif;
 
-	saif->clk = devm_clk_get(&pdev->dev, NULL);
+	saif->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(saif->clk)) {
 		ret = PTR_ERR(saif->clk);
-		dev_err(&pdev->dev, "Cannot get the clock: %d\n",
-			ret);
+		dev_err(dev, "Cannot get the clock: %d\n", ret);
 		return ret;
 	}
 
@@ -793,11 +793,11 @@ static int mxs_saif_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	saif->dev = &pdev->dev;
-	ret = devm_request_irq(&pdev->dev, irq, mxs_saif_irq, 0,
-			       dev_name(&pdev->dev), saif);
+	saif->dev = dev;
+	ret = devm_request_irq(dev, irq, mxs_saif_irq, 0,
+			       dev_name(dev), saif);
 	if (ret) {
-		dev_err(&pdev->dev, "failed to request irq\n");
+		dev_err(dev, "failed to request irq\n");
 		return ret;
 	}
 
@@ -807,19 +807,19 @@ static int mxs_saif_probe(struct platform_device *pdev)
 	if (saif->id == 0) {
 		ret = mxs_saif_mclk_init(pdev);
 		if (ret)
-			dev_warn(&pdev->dev, "failed to init clocks\n");
+			dev_warn(dev, "failed to init clocks\n");
 	}
 
-	ret = devm_snd_soc_register_component(&pdev->dev, &mxs_saif_component,
+	ret = devm_snd_soc_register_component(dev, &mxs_saif_component,
 					      &mxs_saif_dai, 1);
 	if (ret) {
-		dev_err(&pdev->dev, "register DAI failed\n");
+		dev_err(dev, "register DAI failed\n");
 		return ret;
 	}
 
-	ret = mxs_pcm_platform_register(&pdev->dev);
+	ret = mxs_pcm_platform_register(dev);
 	if (ret) {
-		dev_err(&pdev->dev, "register PCM failed: %d\n", ret);
+		dev_err(dev, "register PCM failed: %d\n", ret);
 		return ret;
 	}
 
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
