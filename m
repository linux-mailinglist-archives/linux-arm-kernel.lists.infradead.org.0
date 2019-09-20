Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ABFB9045
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OAD38tkwvsMqFtlmmaTh1haYwOz1sqGQOMQiCpOPpq8=; b=fDQzIcZt7Yn/Czd8Yx56gHOdlx
	A+RRJUENTqt8B9ls3bfQa8qFl+Iud+XzI/eyFAwszWXOrpJwvk6ho1nSlRT0FDkCW1+oUsTDOu7g3
	XSHASsWcsth4Of4NPkN6whLCMS7WNzkeeAQ3MZRzjoEb59zd5GS9zuWfot2uA0fgk5n4pCdaqTpiq
	6q+PyOzapBgouMrA1agQH9P3IcSAKpnswNCh3xt435uMPNu0J7PwpHMriRzbwmhP56NenopslKmVj
	WGKEcyqS5FPWIZNu2a5NQuFB403hRLZXpuCQutGjZpym48NP53IBzxrb0meYQcdmxOj+0okx1vGeW
	9rnKs30Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIaU-0004o5-Er; Fri, 20 Sep 2019 13:04:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZJ-0003Km-0m
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:26 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130323euoutp027cb6d90cc966bed4022812faf4f4096d~GJy8p53yj2404924049euoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190920130323euoutp027cb6d90cc966bed4022812faf4f4096d~GJy8p53yj2404924049euoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984603;
 bh=fCiCWDJV6hWzdPW9ipEdQhbwyGKQwzSf6QI+SV7DvCc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FlSMdcyLFSd1TfBqNcLbUqVUuqeXy1fMNoeqISQJldqkSyNOBEWoUD00kCWh3n/hJ
 3Gq5ubpfyjPoEsAPsOyRi2OBScEaHljouDtf7dMx5c2031mwSPLmi1iXKbUCuL2zPg
 dgXaMzRH/lezNQar+x9jbeXxdIUOTwjkcNpZXweI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190920130322eucas1p14cece5f41f00418f148cb398c25763a1~GJy71JQiy2912829128eucas1p16;
 Fri, 20 Sep 2019 13:03:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 25.DB.04309.A1EC48D5; Fri, 20
 Sep 2019 14:03:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873~GJy69HB9R1573515735eucas1p2m;
 Fri, 20 Sep 2019 13:03:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190920130321eusmtrp2b1229a6e283cb8f4d92cde532508fb28~GJy6r4Wq51022710227eusmtrp2C;
 Fri, 20 Sep 2019 13:03:21 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-f1-5d84ce1af475
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 48.2B.04166.91EC48D5; Fri, 20
 Sep 2019 14:03:21 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130320eusmtip2b5d7b38fa30bc5b2b2282d90264af2c9~GJy6An3U51284812848eusmtip2e;
 Fri, 20 Sep 2019 13:03:20 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 07/10] ASoC: samsung: arndale: Add support for WM1811 CODEC
Date: Fri, 20 Sep 2019 15:02:16 +0200
Message-Id: <20190920130218.32690-8-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvTOdztBYMhYSrsVAbDSyRLZYmQSCEn1o9AU1+iBpcJAJEKCQ
 DouoCVjKYhFEEYuAQkAilCC1EGILLimtlaBUFJUlhB2FQHgocQWRMqBv/zn/d/5zc3IJVNSA
 iYlERTqjVNDJEr6A1/nqp/2guF8tD6qf200NDpgR6kllG0ZVTM7wqcF8A6BqLf0YZbfrcerb
 YBFCGaY/YVSl/TlCtVrGcMqx/AKj8p9ZcKpnsRCjBppWkKOuMr1DxZcZq8ZwmUF3nS9rf5gj
 09asA1lphw7IHAavKPy8IDyOSU7MZJSBERcECaPtirS54Es9P1p4uUDnqwEuBCQPQf2v74gG
 CAgR2QSgpnSczxUrANo/3AVOSkQ6ALxW7bc9MdG1uNV/BODkmvTfQHehGXUafDIYllhLNyF3
 8gAcr1RhTggl5xFYZn2MOA03MgrOvVnf1DxyP6xecvA0gCCEZBg0Vflwy7xhi/7lZqYLGQ7n
 h+o3nwrJThze6WvGnTwkj8OGkhiOd4MLtg6c03vgurF2i88D8EbXKM4VZQCO2+oAR4XBHtsA
 5gxCSV/YZgrkMiNhQa4/J13h0NIuJ4xuyNudWpRrC2FRgYjL2Ad/67QIp8WweGadxyEyWG6U
 c9e5uXHb0Rq8DHhX/V9VB4AOeDAZbEo8w4YomKwAlk5hMxTxARdTUwxg4+v0/bGtPAWm1Vgz
 IAkg2Smse62WizA6k81OMQNIoBJ3YY1UJRcJ4+jsy4wyNUaZkcywZuBJ8CQewis7JqJFZDyd
 ziQxTBqj3HYRwkWcC2pbY0+jesJ/78eTFX7qEmnlSPHVhIU8t0ZVpJaJstdXTx0zJVUtNvfm
 Zw4fjqCX8RwLqwt5T3vXWM81Ts0Kpm8JZ/pClz972e4vV8fhsCDry9uJ3mHtWemZE92rntEj
 QeSq2jco75TkyNe1wogKxDgreRdSLrYqQn0etN6LkfDYBDrYD1Wy9F/0bX3uNgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42I5/e/4PV3Jcy2xBje7FC2uXDzEZLFxxnpW
 i6kPn7BZXGndxGgx/8g5Vovz5zewW3y70sFksenxNVaLGef3MVmsPXKX3eLz+/2sFq17j7Bb
 HH7TzmpxccUXJgc+jw2fm9g8ds66y+6xaVUnm8fmJfUe0+f8Z/To27KK0ePzJrkA9ig9m6L8
 0pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jNub8wqeGVYc
 /rGapYFxlWYXIyeHhICJxIPdbxi7GLk4hASWMkr8nTaBuYuRAyghJTG/RQmiRljiz7UuNoia
 T4wSNxp2sYIk2AQMJXqP9jGC2CICmhId826zghQxC3xnkjjw+CTYIGEBP4kPe7VBalgEVCVm
 v/3MAhLmFbCW2DVLA2K+vMTqDQeYQWxOARuJlzcWMYHYQkAlp/ftZZ/AyLeAkWEVo0hqaXFu
 em6xoV5xYm5xaV66XnJ+7iZGYBxsO/Zz8w7GSxuDDzEKcDAq8fAuONESK8SaWFZcmXuIUYKD
 WUmEd45pU6wQb0piZVVqUX58UWlOavEhRlOgmyYyS4km5wNjNK8k3tDU0NzC0tDc2NzYzEJJ
 nLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6Nnkc/kw3WyW2fmepTP/F9yfv2vh97PJjPeSC9N
 ezjNIoY1mqXKZovrxpnCXkElfbffpcpOOXE9v/NFjEq+SufL+ZsXstqarGz8u0LEMsU7Z7vK
 m0kv1gpMnLBO0/eDmv/TgFViD3a+z8zsujSj6sXGlGPbG6eb3/twRjTgysTelXO/etsln2tS
 YinOSDTUYi4qTgQATMwmcpkCAAA=
X-CMS-MailID: 20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873
X-Msg-Generator: CA
X-RootMTR: 20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060325_217418_C7B648BF 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

The Arndale boards come with different types of the audio daughter
board.  In order to support the WM1811 one we add new definition of
an ASoC card which will be registered when the driver matches on
"samsung,arndale-wm1811" compatible.  There is no runtime detection of
the audio daughter board type at the moment, compatible string of the
audio card needs to be adjusted in DT, e.g. by the bootloader,
depending on actual audio board (CODEC) used.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1:
 - removed unneeded __maybe_used attribute
---
 sound/soc/samsung/Kconfig          |  2 +
 sound/soc/samsung/arndale_rt5631.c | 85 +++++++++++++++++++++++++-----
 2 files changed, 74 insertions(+), 13 deletions(-)

diff --git a/sound/soc/samsung/Kconfig b/sound/soc/samsung/Kconfig
index 638983123d8f..6803cbfa9e46 100644
--- a/sound/soc/samsung/Kconfig
+++ b/sound/soc/samsung/Kconfig
@@ -199,6 +199,8 @@ config SND_SOC_ARNDALE_RT5631_ALC5631
         depends on I2C
         select SND_SAMSUNG_I2S
         select SND_SOC_RT5631
+	select MFD_WM8994
+	select SND_SOC_WM8994
 
 config SND_SOC_SAMSUNG_TM2_WM5110
 	tristate "SoC I2S Audio support for WM5110 on TM2 board"
diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
index 004c84fafad9..1e8badb1b8f9 100644
--- a/sound/soc/samsung/arndale_rt5631.c
+++ b/sound/soc/samsung/arndale_rt5631.c
@@ -14,10 +14,11 @@
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 
+#include "../codecs/wm8994.h"
 #include "i2s.h"
 
-static int arndale_hw_params(struct snd_pcm_substream *substream,
-	struct snd_pcm_hw_params *params)
+static int arndale_rt5631_hw_params(struct snd_pcm_substream *substream,
+				    struct snd_pcm_hw_params *params)
 {
 	struct snd_soc_pcm_runtime *rtd = substream->private_data;
 	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
@@ -47,13 +48,45 @@ static int arndale_hw_params(struct snd_pcm_substream *substream,
 	return 0;
 }
 
-static struct snd_soc_ops arndale_ops = {
-	.hw_params = arndale_hw_params,
+static struct snd_soc_ops arndale_rt5631_ops = {
+	.hw_params = arndale_rt5631_hw_params,
+};
+
+static int arndale_wm1811_hw_params(struct snd_pcm_substream *substream,
+				    struct snd_pcm_hw_params *params)
+{
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct snd_soc_dai *codec_dai = rtd->codec_dai;
+	unsigned int rfs, rclk;
+
+	/* Ensure AIF1CLK is >= 3 MHz for optimal performance */
+	if (params_width(params) == 24)
+		rfs = 384;
+	else if (params_rate(params) == 8000 || params_rate(params) == 11025)
+		rfs = 512;
+	else
+		rfs = 256;
+
+	rclk = params_rate(params) * rfs;
+
+	/*
+	 * We add 1 to the frequency value to ensure proper EPLL setting
+	 * for each audio sampling rate (see epll_24mhz_tbl in drivers/clk/
+	 * samsung/clk-exynos5250.c for list of available EPLL rates).
+	 * The CODEC uses clk API and the value will be rounded hence the MCLK1
+	 * clock's frequency will still be exact multiple of the sample rate.
+	 */
+	return snd_soc_dai_set_sysclk(codec_dai, WM8994_SYSCLK_MCLK1,
+					rclk + 1, SND_SOC_CLOCK_IN);
+}
+
+static struct snd_soc_ops arndale_wm1811_ops = {
+	.hw_params = arndale_wm1811_hw_params,
 };
 
 SND_SOC_DAILINK_DEFS(rt5631_hifi,
 	DAILINK_COMP_ARRAY(COMP_EMPTY()),
-	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "rt5631-hifi")),
+	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "rt5631-aif1")),
 	DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
 static struct snd_soc_dai_link arndale_rt5631_dai[] = {
@@ -63,11 +96,28 @@ static struct snd_soc_dai_link arndale_rt5631_dai[] = {
 		.dai_fmt = SND_SOC_DAIFMT_I2S
 			| SND_SOC_DAIFMT_NB_NF
 			| SND_SOC_DAIFMT_CBS_CFS,
-		.ops = &arndale_ops,
+		.ops = &arndale_rt5631_ops,
 		SND_SOC_DAILINK_REG(rt5631_hifi),
 	},
 };
 
+SND_SOC_DAILINK_DEFS(wm1811_hifi,
+	DAILINK_COMP_ARRAY(COMP_EMPTY()),
+	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8994-aif1")),
+	DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+static struct snd_soc_dai_link arndale_wm1811_dai[] = {
+	{
+		.name = "WM1811 HiFi",
+		.stream_name = "Primary",
+		.dai_fmt = SND_SOC_DAIFMT_I2S
+			| SND_SOC_DAIFMT_NB_NF
+			| SND_SOC_DAIFMT_CBM_CFM,
+		.ops = &arndale_wm1811_ops,
+		SND_SOC_DAILINK_REG(wm1811_hifi),
+	},
+};
+
 static struct snd_soc_card arndale_rt5631 = {
 	.name = "Arndale RT5631",
 	.owner = THIS_MODULE,
@@ -75,6 +125,13 @@ static struct snd_soc_card arndale_rt5631 = {
 	.num_links = ARRAY_SIZE(arndale_rt5631_dai),
 };
 
+static struct snd_soc_card arndale_wm1811 = {
+	.name = "Arndale WM1811",
+	.owner = THIS_MODULE,
+	.dai_link = arndale_wm1811_dai,
+	.num_links = ARRAY_SIZE(arndale_wm1811_dai),
+};
+
 static void arndale_put_of_nodes(struct snd_soc_card *card)
 {
 	struct snd_soc_dai_link *dai_link;
@@ -89,10 +146,11 @@ static void arndale_put_of_nodes(struct snd_soc_card *card)
 static int arndale_audio_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct snd_soc_card *card = &arndale_rt5631;
+	struct snd_soc_card *card;
 	struct snd_soc_dai_link *dai_link;
 	int ret;
 
+	card = (struct snd_soc_card *)of_device_get_match_data(&pdev->dev);
 	card->dev = &pdev->dev;
 	dai_link = card->dai_link;
 
@@ -134,18 +192,19 @@ static int arndale_audio_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id samsung_arndale_rt5631_of_match[] __maybe_unused = {
-	{ .compatible = "samsung,arndale-rt5631", },
-	{ .compatible = "samsung,arndale-alc5631", },
+static const struct of_device_id arndale_audio_of_match[] = {
+	{ .compatible = "samsung,arndale-rt5631",  .data = &arndale_rt5631 },
+	{ .compatible = "samsung,arndale-alc5631", .data = &arndale_rt5631 },
+	{ .compatible = "samsung,arndale-wm1811",  .data = &arndale_wm1811 },
 	{},
 };
-MODULE_DEVICE_TABLE(of, samsung_arndale_rt5631_of_match);
+MODULE_DEVICE_TABLE(of, arndale_of_match);
 
 static struct platform_driver arndale_audio_driver = {
 	.driver = {
-		.name   = "arndale-audio",
+		.name = "arndale-audio",
 		.pm = &snd_soc_pm_ops,
-		.of_match_table = of_match_ptr(samsung_arndale_rt5631_of_match),
+		.of_match_table = arndale_audio_of_match,
 	},
 	.probe = arndale_audio_probe,
 	.remove = arndale_audio_remove,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
