Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D86B903E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4yapTESjDP7E6XbvVXlaeyikI/583DPLGkweinr75H8=; b=A4BdXk3pH3kncdL9fhXDZGppXH
	fvw7azTd2Lk3CRLvdHy/iHZBECal2SIMCCDPrex5IbRNDnXphaH5iQyP5fYaGLltqDuVH6yO2152K
	y7jTceEhs7pwIvXKnFwJCMF7th6I77/PX6xZ9piyZtrf7LNKdc/EKQn2RRHjLQFCqjL2KujAegH8N
	DpXqzgNxLY5teQPcy9ZC5NjJPhdQ6Ufgn4cJrwr7sPD1jCumrSyHFk9Axn0XC82nx2HkabKLHdQSj
	iqCycEDVz1NTx9pjpk8ZX2q/8n2NreZnqgjU78xJbtkrtcMMUwPwPdAWRB34cXZjLuj1a/cjl3Ew0
	Y+Wc3omQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIZW-0003Or-FL; Fri, 20 Sep 2019 13:03:38 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZD-0003F4-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:20 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130316euoutp01623d87fbd6ce26e66427d035d04251c2~GJy2Rcc5I3049230492euoutp01N
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190920130316euoutp01623d87fbd6ce26e66427d035d04251c2~GJy2Rcc5I3049230492euoutp01N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984596;
 bh=O7OOSSyg4ncp0f1qYwjipjHwKNj05omUU3Za47h6MfI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ff88J1tdbFQqED8KbNGMx3sah7uQXWSyEPSAs5c1AlfMYayVi5bvvsNOCSvnKgaIU
 yuWKSM1j0TCEEiCPJftxY26k5r7w9LajeZ6DM7J4ku1mdtagbv2iOH0GU6mlFvkQoU
 O9IwcIPBbvF2yf4WB58YvExdqNKwo3R33nsmC+kM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920130316eucas1p2af5a0f541665aaf6b6f6fa6dd426523a~GJy1nMX141582615826eucas1p2i;
 Fri, 20 Sep 2019 13:03:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1A.7A.04374.31EC48D5; Fri, 20
 Sep 2019 14:03:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130315eucas1p2a31543214fedcdfe86196f176f554a35~GJy0vMJU01583815838eucas1p2s;
 Fri, 20 Sep 2019 13:03:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190920130314eusmtrp2debf3d8bd97e77174d28cf3a23768c3a~GJy0d_KiG1022710227eusmtrp2v;
 Fri, 20 Sep 2019 13:03:14 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-29-5d84ce13b5b8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6E.1B.04166.21EC48D5; Fri, 20
 Sep 2019 14:03:14 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130314eusmtip2253356ff28a6e76712cd490adbc522d3~GJyzx2xhA1336913369eusmtip2w;
 Fri, 20 Sep 2019 13:03:14 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 02/10] ASoC: samsung: arndale: Add missing OF node
 dereferencing
Date: Fri, 20 Sep 2019 15:02:11 +0200
Message-Id: <20190920130218.32690-3-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHe8/Z2ZnDyes0fDFJW0kXUNMMTildwOD0zSAJCqmlBy95a8d7
 mLq8mzqi0kxQTJmt1LVEpjOX23Rd1YGEEKamXxRN5rQSL2vbsfr2e/7v//k/z/vyCnCxkvAV
 JKVlMrI0aYqEL+T1jmyMBXmNlsQefzwTRk1YDBj1qqGboB7NzvOpiVINoJpNowQ1NqYmqZ8T
 FRilmftCUA1jgxjVaZoiKduKnqBK35hIyrhUTlCWjjXsnAettsn5dF/jFElrVJV8+nVbIV3f
 ZAd0bY8K0DbN/mjyqjAynklJymZkIWduCBOHtopBRpl3rtzaQRSBOVgF3AQIhqNFUzXfyWLY
 AZB8vaAKCB28BpC1XU1whQ0gfeuAoxC4Otp1dzldCVCZ9Sn419Hf1oI5o/gwFNUM1wIne8PD
 aLpB7krC4QKGFMNdLpMXjEHrz8ddzIOB6NdSMelkEYxAze/UgNvPH71Qv8Wd7AYj0cJkK+YM
 QlBDoqLZHcCtFIXs5Qzn90KL5h6SYz9k72ve9d8D6L7uK8kVCoCmzS27EyKQ0Wxx3Q2HR1F3
 fwgnn0eLKj3O5XugyWVPp4w78EFv/a4sQhVlYs59CG2q6jGOfVH1vJ3HMY2+G1f43APVAfRE
 UYcrgH/j/2EtAKiAD5PFpiYw7Ik0JieYlaayWWkJwXHpqRrg+D4fd8zrWjC4ddMAoABI3EX0
 SEmsmJBms3mpBoAEuMRb1HRSHisWxUvz8hlZ+nVZVgrDGsA+AU/iI7qzZ+aaGCZIM5lbDJPB
 yP6eYgI33yLA01X2KtiKbt2PrCjPusUr44nPfEtXPzVaNzaXt0dDB4J6krvDP7t/u3zKL0Ab
 fNa+emHE64BxYNtALscdCSFv/47GpZ2BJNRVXtQeTM4vaH54ur+yR3kpBgZEavOjZ/UvLXHv
 8+jW3LAuxwjR3iFjpDVDmWNxm1bk1nwozJDw2ERp6DFcxkr/ADLVQG46AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnkeLIzCtJLcpLzFFi42I5/e/4PV2hcy2xBkvmmFhcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 OPymndXi4oovTA58Hhs+N7F57Jx1l91j06pONo/NS+o9ps/5z+jRt2UVo8fnTXIB7FF6NkX5
 pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GQf/NDIWtIlU
 NH1cwdrA+Figi5GDQ0LARGLp7rouRi4OIYGljBI7f19mhIhLScxvUepi5AQyhSX+XOtiA7GF
 BD4xSrx+WgtiswkYSvQe7WMEsUUENCU65t1mBZnDLPCdSeLA45PMIAlhgWCJXfd3s4DYLAKq
 Et/fNLKD2LwC1hLzT2xghFggL7F6wwGwek4BG4mXNxYxQSyzlji9by/7BEa+BYwMqxhFUkuL
 c9Nziw31ihNzi0vz0vWS83M3MQIjYduxn5t3MF7aGHyIUYCDUYmHd8GJllgh1sSy4srcQ4wS
 HMxKIrxzTJtihXhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfGKV5JfGGpobmFpaG5sbmxmYW
 SuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYCz5XbOp7xZebW+vtJfGi5s+FhCrd5Xy1Fw+p
 JLtJhZxtrTT+EGX4IlR9QRxvlkPHP+k6yyq2spvSVoFiP8wM7j3lqzy2RHmdnUjBd+EiMf8L
 SoLB/re0pO8wejmbVC+ZV5Nm32hlMXHbd1ER/7qJVy17dxc+ifDZtYRVULLuzieXJK0rU5VY
 ijMSDbWYi4oTAaCSHPeaAgAA
X-CMS-MailID: 20190920130315eucas1p2a31543214fedcdfe86196f176f554a35
X-Msg-Generator: CA
X-RootMTR: 20190920130315eucas1p2a31543214fedcdfe86196f176f554a35
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130315eucas1p2a31543214fedcdfe86196f176f554a35
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130315eucas1p2a31543214fedcdfe86196f176f554a35@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060319_221452_92DE93C1 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ensure there is no OF node references kept when the driver
is removed/unbound.

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1:
 - rebased to beginning of the series
---
 sound/soc/samsung/arndale_rt5631.c | 34 ++++++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
index c213913eb984..fd8c6642fb0d 100644
--- a/sound/soc/samsung/arndale_rt5631.c
+++ b/sound/soc/samsung/arndale_rt5631.c
@@ -5,6 +5,7 @@
 //  Author: Claude <claude@insginal.co.kr>
 
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/clk.h>
 
@@ -74,6 +75,17 @@ static struct snd_soc_card arndale_rt5631 = {
 	.num_links = ARRAY_SIZE(arndale_rt5631_dai),
 };
 
+static void arndale_put_of_nodes(struct snd_soc_card *card)
+{
+	struct snd_soc_dai_link *dai_link;
+	int i;
+
+	for_each_card_prelinks(card, i, dai_link) {
+		of_node_put(dai_link->cpus->of_node);
+		of_node_put(dai_link->codecs->of_node);
+	}
+}
+
 static int arndale_audio_probe(struct platform_device *pdev)
 {
 	int n, ret;
@@ -103,18 +115,31 @@ static int arndale_audio_probe(struct platform_device *pdev)
 		if (!arndale_rt5631_dai[0].codecs->of_node) {
 			dev_err(&pdev->dev,
 			"Property 'samsung,audio-codec' missing or invalid\n");
-			return -EINVAL;
+			ret = -EINVAL;
+			goto err_put_of_nodes;
 		}
 	}
 
 	ret = devm_snd_soc_register_card(card->dev, card);
+	if (ret) {
+		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
+		goto err_put_of_nodes;
+	}
+	return 0;
 
-	if (ret)
-		dev_err(&pdev->dev, "snd_soc_register_card() failed:%d\n", ret);
-
+err_put_of_nodes:
+	arndale_put_of_nodes(card);
 	return ret;
 }
 
+static int arndale_audio_remove(struct platform_device *pdev)
+{
+	struct snd_soc_card *card = platform_get_drvdata(pdev);
+
+	arndale_put_of_nodes(card);
+	return 0;
+}
+
 static const struct of_device_id samsung_arndale_rt5631_of_match[] __maybe_unused = {
 	{ .compatible = "samsung,arndale-rt5631", },
 	{ .compatible = "samsung,arndale-alc5631", },
@@ -129,6 +154,7 @@ static struct platform_driver arndale_audio_driver = {
 		.of_match_table = of_match_ptr(samsung_arndale_rt5631_of_match),
 	},
 	.probe = arndale_audio_probe,
+	.remove = arndale_audio_remove,
 };
 
 module_platform_driver(arndale_audio_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
