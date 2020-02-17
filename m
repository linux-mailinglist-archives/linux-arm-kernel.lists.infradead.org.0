Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F37160ACF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:44:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbjpmml5Nc9u6e7uwskFEmBpHkTMS3AvA/mWRwaRy5U=; b=u3DOkNaol6J0LX
	4zR53y7Awi/l6P5fZRc92dhjPNFHLT4MhS2jivwHVX9Ho9FEwW0YarJhalLF107/31xasMOqrQjJ9
	P9OBI4L05iJ/DW4a8Nqu+e/V/da36p/mHXhZ9IA9vamvTl2HZLoXoCY9lI0Gtcq5l8tp8PXa5cTOH
	/Yb+7RFgZT88oKSD7QGDPBvDrYMWpniEjXuuUeYuBSF8xxtWPyot0zbNu1aj2AJjc+aVSbHGXInO+
	K4EO2XtjKOX5gJ+QnRUgeaN7x8YIWDjZ901ALRxUxjhg1+6Rg4Wjh2a87KDRjvEX2GnS8ESyVXZmx
	hYZyE9jSFxOBgC01E4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a8b-0004Nz-QB; Mon, 17 Feb 2020 06:44:13 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7J-0003ey-ML
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 77391522A;
 Mon, 17 Feb 2020 01:42:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/Gz9CsMmbdcrp
 9kMVCWTTsaDhYUcCaxrF9/HDAwTHKU=; b=VjDVnylgG2LGyvcpl9mBpyl6stR8G
 4uFkbuK8eeuIrCdclOr3vVR9riQxRH/LkG9Fi17pSK5flP/1IGrTCZmGFIlXfMrm
 EA2VMOwM5bma7VA9qJ2BtyO7oWLYxzCX5UgMkzD+n2RWcPNUIqZajkEJZJlyA8Jc
 llyYBpj1n7TKAOVGjuFWmLChB784wazfndfdwfQBdxsTnChr1P9v850p4MaQZd+s
 I/j+2JsSX6yzkMCQSKKe+lda4OSYn6nDzInlNYOu1sgH0C7GoLcu1t/AbGkJmteD
 qBhhD7nnVnffarL8PPQc7jigc2RJF9HL/D9b/GPhMsWnFjHzW00jyhdEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/Gz9CsMmbdcrp9kMVCWTTsaDhYUcCaxrF9/HDAwTHKU=; b=O7JOvtlF
 REuRqYr0lwuabjfsdDy0gu4A7Yxpk3C5u6yZhZtVrqiKxKf1BuNEQjCc5rHaADF7
 8fJB13eCs25DGL9K9wulZWIA4UzoiZHMndCodSAkLoAYcCfFgw7rju+2M8HJvcKl
 s9ThTKwbVm4Y4s9NpXoWoWO0XgzJ60ua6lC19P4+oyJX/TX0xUUw6FqGw7v4pyPa
 a/25vT1v1h/6A7GuMyyGL5Axy/o7IxVToCeLAEKY9DAVxh9JDGk0um3oH9oGOcrZ
 xsoQMciqWus28A1Y8k7gcN+dMAGw6dxZ2Wwd1Gcp4CbTMJS/KouYrwGwNOZ8tyRF
 0ICr1Y8bQxcVtg==
X-ME-Sender: <xms:7DVKXo1DaDJG8d4Ga6Jv-vdyaxBnPqApLsAX8sI55uDHxBviOEScyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:7DVKXul36QX7Mv3aqrG4wyt3ojg7SbbuWMcTFTNyFWwf7yiq6yKPCw>
 <xmx:7DVKXm4boMbEjopJ5_PHRFsI675HN_YybnOLyIRfJS9h5t7A2Hq4RQ>
 <xmx:7DVKXvlWwE6B7azilCWmcy07aLGM1SdWYWWUBAuhjPUfkCymJO3h7Q>
 <xmx:7DVKXlO72EjgDkx-YNUXIm4bah2ERIQRp09BCfMKo5y5QSLwcWX90g>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id AFF183280065;
 Mon, 17 Feb 2020 01:42:51 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 02/34] ASoC: sun8i-codec: LRCK is not inverted on A64
Date: Mon, 17 Feb 2020 00:42:18 -0600
Message-Id: <20200217064250.15516-3-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224253_884519_526EF579 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the A64 (tested with the Pinephone), the current code causes the
left/right channels to be swapped during I2S playback from the CPU on
AIF1, and breaks DSP_A communication with the modem on AIF2.

Trusting that the comment in the code is correct, the existing behavior
is kept for the A33.

Cc: stable@kernel.org
Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 55798bc8eae2..14cf31f5c535 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -13,6 +13,7 @@
 #include <linux/delay.h>
 #include <linux/clk.h>
 #include <linux/io.h>
+#include <linux/of_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/log2.h>
@@ -89,6 +90,7 @@ struct sun8i_codec {
 	struct regmap	*regmap;
 	struct clk	*clk_module;
 	struct clk	*clk_bus;
+	bool		inverted_lrck;
 };
 
 static int sun8i_codec_runtime_resume(struct device *dev)
@@ -209,18 +211,19 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 			   value << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV);
 
 	/*
-	 * It appears that the DAI and the codec don't share the same
-	 * polarity for the LRCK signal when they mean 'normal' and
-	 * 'inverted' in the datasheet.
+	 * It appears that the DAI and the codec in the A33 SoC don't
+	 * share the same polarity for the LRCK signal when they mean
+	 * 'normal' and 'inverted' in the datasheet.
 	 *
 	 * Since the DAI here is our regular i2s driver that have been
 	 * tested with way more codecs than just this one, it means
 	 * that the codec probably gets it backward, and we have to
 	 * invert the value here.
 	 */
+	value ^= scodec->inverted_lrck;
 	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
 			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV),
-			   !value << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV);
+			   value << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV);
 
 	/* DAI format */
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
@@ -568,6 +571,8 @@ static int sun8i_codec_probe(struct platform_device *pdev)
 		return PTR_ERR(scodec->regmap);
 	}
 
+	scodec->inverted_lrck = (uintptr_t)of_device_get_match_data(&pdev->dev);
+
 	platform_set_drvdata(pdev, scodec);
 
 	pm_runtime_enable(&pdev->dev);
@@ -606,7 +611,14 @@ static int sun8i_codec_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id sun8i_codec_of_match[] = {
-	{ .compatible = "allwinner,sun8i-a33-codec" },
+	{
+		.compatible = "allwinner,sun8i-a33-codec",
+		.data = (void *)1,
+	},
+	{
+		.compatible = "allwinner,sun50i-a64-codec",
+		.data = (void *)0,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, sun8i_codec_of_match);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
