Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5850CB7B46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rVwcQFWFR4OsBNfSg9RWz8NRGrdydzSbsDAqH3DGR0=; b=l3KIUiZ90zI2go
	eZ2A5gwjPKS1yN4yOn9c4esaes0EQV6EIOELp/N6lqKhNxXnRHOSaRUyNSvSn4UYDcnWP+YTyyyd9
	cOtM/im+4QkQvOj8sVPY1LV9Od19PBqskkHTMPxqGef7amXRoUNwZuDRd1xZmGx2jBUTMkvJpBKS4
	TECsCmP77AyiuEtpS6izziKi84GOknaFrJ9k3f6NmhwqE+ZPJKOH746ydEcM21ixv5UmOE/DS8ikw
	P8qTkGTfCSDd6+moDZXhBFIgPZQuZSeS2mCsncELV/nGk7fG1qZb5VJZ27uIVIUSIxaZYz0VZ9RXw
	NNdIbWo+r4qxTnkTqRQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwv6-0002Uk-Oe; Thu, 19 Sep 2019 13:56:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwuE-0001wF-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:55:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id u12so1652165pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 06:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZIDYLu7ca97k4A/5V7MzuGF5gFCfwb0cYG7NrgVReLI=;
 b=BXokyWSEnoB+eLndxVit4ZfhwMTJl878NpORNWM6vv513KsPPeqI8v+oC4Xbg1+/jg
 hv56oRBzAHbTEXNnJ3NNjcS4JzFR9+287D41TcTm/hYSISRRerlS2+Bso5eWW1zT0Efz
 g/8DazqSzzVgfdbnctQLiakvQJCyCK3XIWrhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZIDYLu7ca97k4A/5V7MzuGF5gFCfwb0cYG7NrgVReLI=;
 b=N/q4K/k5vpscCqTd/2VF0dgVVbKhWV8akv7/YvBERvlMW2DIfpHhVoEZ5X6kWPc/Qh
 8JRO+WyF6R+mcwxZW3Wmm3RQq3GB1lekK+mvJdEIoR5n02HHhE1Kx8APEa02rBIyv7PM
 9Bgc5e2I8CPzC29PVl3gNmmrcC2ZKnllRB0o6mRgTdhp3UG7O7Zll7jHGBVbg8Ks2zmp
 ea0bM6z5Jd7HbEE1YfqfpWMKUfa1hxbXEtBH/goQfT2JLiq3hV1/z5diZHoxZA0SAfHO
 R0rKDdHjjpPVfD4Ar7LMjzX+5NBREc3hkfCvQvp8XF+fYClbqG1SjrabPonnrdb8cvjf
 OnMA==
X-Gm-Message-State: APjAAAVFYg79ixRmRthz8Un0XbMORXl2XYQYv+eun2xA12w/xdzeLBTI
 rmSyhhMYRFrO99pE2TC97HH/WA==
X-Google-Smtp-Source: APXvYqzKxS83hU+NxkyGPf3KK78zAWXF1bg49KAnScv/gCyw9MSc0ZklNNw3qvhxcocI53QORY7yVg==
X-Received: by 2002:a17:902:7596:: with SMTP id
 j22mr10208368pll.280.1568901333378; 
 Thu, 19 Sep 2019 06:55:33 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id h9sm7468913pgh.51.2019.09.19.06.55.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 06:55:32 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/4] ASoC: rockchip_max98090: Add dai_link for HDMI
Date: Thu, 19 Sep 2019 21:54:49 +0800
Message-Id: <20190919135450.62309-4-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
In-Reply-To: <20190919135450.62309-1-cychiang@chromium.org>
References: <20190919135450.62309-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_065534_133681_E812233E 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use two dai_links. One for HDMI and one for max98090.
With this setup, audio can play to speaker and HDMI selectively.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   1 +
 sound/soc/rockchip/rockchip_max98090.c        | 129 ++++++++++++++----
 2 files changed, 103 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
index 445270aa136e..51208d161d65 100644
--- a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
@@ -17,6 +17,7 @@
 		rockchip,hp-det-gpios = <&gpio6 RK_PA5 GPIO_ACTIVE_HIGH>;
 		rockchip,mic-det-gpios = <&gpio6 RK_PB3 GPIO_ACTIVE_LOW>;
 		rockchip,headset-codec = <&headsetcodec>;
+		rockchip,hdmi-codec = <&hdmi>;
 	};
 };
 
diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index c5fc24675a33..6c217492bb30 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -11,6 +11,7 @@
 #include <linux/gpio.h>
 #include <linux/of_gpio.h>
 #include <sound/core.h>
+#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
@@ -41,6 +42,7 @@ static const struct snd_soc_dapm_widget rk_dapm_widgets[] = {
 	SND_SOC_DAPM_MIC("Headset Mic", NULL),
 	SND_SOC_DAPM_MIC("Int Mic", NULL),
 	SND_SOC_DAPM_SPK("Speaker", NULL),
+	SND_SOC_DAPM_LINE("HDMI", NULL),
 };
 
 static const struct snd_soc_dapm_route rk_audio_map[] = {
@@ -52,6 +54,7 @@ static const struct snd_soc_dapm_route rk_audio_map[] = {
 	{"Headphone", NULL, "HPR"},
 	{"Speaker", NULL, "SPKL"},
 	{"Speaker", NULL, "SPKR"},
+	{"HDMI", NULL, "TX"},
 };
 
 static const struct snd_kcontrol_new rk_mc_controls[] = {
@@ -59,6 +62,7 @@ static const struct snd_kcontrol_new rk_mc_controls[] = {
 	SOC_DAPM_PIN_SWITCH("Headset Mic"),
 	SOC_DAPM_PIN_SWITCH("Int Mic"),
 	SOC_DAPM_PIN_SWITCH("Speaker"),
+	SOC_DAPM_PIN_SWITCH("HDMI"),
 };
 
 static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
@@ -92,38 +96,63 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 
 	ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
 				     SND_SOC_CLOCK_OUT);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+	if (ret) {
+		dev_err(cpu_dai->dev, "Can't set cpu dai clock %d\n", ret);
 		return ret;
 	}
 
+	/* HDMI codec dai does not need to set sysclk. */
+	if (!strcmp(rtd->dai_link->name, "HDMI"))
+		return 0;
+
 	ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
 				     SND_SOC_CLOCK_IN);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+	if (ret) {
+		dev_err(codec_dai->dev, "Can't set codec dai clock %d\n", ret);
 		return ret;
 	}
 
-	return ret;
+	return 0;
 }
 
 static const struct snd_soc_ops rk_aif1_ops = {
 	.hw_params = rk_aif1_hw_params,
 };
 
-SND_SOC_DAILINK_DEFS(hifi,
-	DAILINK_COMP_ARRAY(COMP_EMPTY()),
-	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
-	DAILINK_COMP_ARRAY(COMP_EMPTY()));
-
-static struct snd_soc_dai_link rk_dailink = {
-	.name = "max98090",
-	.stream_name = "Audio",
-	.ops = &rk_aif1_ops,
-	/* set max98090 as slave */
-	.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
-		SND_SOC_DAIFMT_CBS_CFS,
-	SND_SOC_DAILINK_REG(hifi),
+SND_SOC_DAILINK_DEFS(analog,
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()),
+		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+SND_SOC_DAILINK_DEFS(hdmi,
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()),
+		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "i2s-hifi")),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+enum {
+	DAILINK_MAX98090,
+	DAILINK_HDMI,
+};
+
+/* max98090 and HDMI codec dai_link */
+static struct snd_soc_dai_link rk_dailinks[] = {
+	[DAILINK_MAX98090] = {
+		.name = "max98090",
+		.stream_name = "Analog",
+		.ops = &rk_aif1_ops,
+		/* set max98090 as slave */
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(analog),
+	},
+	[DAILINK_HDMI] = {
+		.name = "HDMI",
+		.stream_name = "HDMI",
+		.ops = &rk_aif1_ops,
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(hdmi),
+	}
 };
 
 static int rk_98090_headset_init(struct snd_soc_component *component);
@@ -136,8 +165,8 @@ static struct snd_soc_aux_dev rk_98090_headset_dev = {
 static struct snd_soc_card snd_soc_card_rk = {
 	.name = "ROCKCHIP-I2S",
 	.owner = THIS_MODULE,
-	.dai_link = &rk_dailink,
-	.num_links = 1,
+	.dai_link = rk_dailinks,
+	.num_links = ARRAY_SIZE(rk_dailinks),
 	.aux_dev = &rk_98090_headset_dev,
 	.num_aux_devs = 1,
 	.dapm_widgets = rk_dapm_widgets,
@@ -173,27 +202,73 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	int ret = 0;
 	struct snd_soc_card *card = &snd_soc_card_rk;
 	struct device_node *np = pdev->dev.of_node;
+	struct device_node *np_analog;
+	struct device_node *np_cpu;
+	struct device_node *np_hdmi_codec;
+	struct of_phandle_args args;
 
 	/* register the soc card */
 	card->dev = &pdev->dev;
 
-	rk_dailink.codecs->of_node = of_parse_phandle(np,
-			"rockchip,audio-codec", 0);
-	if (!rk_dailink.codecs->of_node) {
+	np_analog = of_parse_phandle(np, "rockchip,audio-codec", 0);
+	if (!np_analog) {
 		dev_err(&pdev->dev,
 			"Property 'rockchip,audio-codec' missing or invalid\n");
 		return -EINVAL;
 	}
+	rk_dailinks[DAILINK_MAX98090].codecs->of_node = np_analog;
+
+	ret = of_parse_phandle_with_fixed_args(np, "rockchip,audio-codec",
+					       0, 0, &args);
+	if (ret) {
+		dev_err(&pdev->dev,
+			"Unable to parse property 'rockchip,audio-codec'\n");
+		return ret;
+	}
+
+	ret = snd_soc_get_dai_name(
+			&args, &rk_dailinks[DAILINK_MAX98090].codecs->dai_name);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to get codec dai_name\n");
+		return ret;
+	}
+
+	np_cpu = of_parse_phandle(np, "rockchip,i2s-controller", 0);
 
-	rk_dailink.cpus->of_node = of_parse_phandle(np,
-			"rockchip,i2s-controller", 0);
-	if (!rk_dailink.cpus->of_node) {
+	if (!np_cpu) {
 		dev_err(&pdev->dev,
 			"Property 'rockchip,i2s-controller' missing or invalid\n");
 		return -EINVAL;
 	}
 
-	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
+	np_hdmi_codec = of_parse_phandle(np, "rockchip,hdmi-codec", 0);
+	if (!np_hdmi_codec) {
+		dev_err(&pdev->dev,
+			"Property 'rockchip,hdmi-codec' missing or invalid\n");
+		return -EINVAL;
+	}
+
+	rk_dailinks[DAILINK_HDMI].codecs->of_node = np_hdmi_codec;
+
+	ret = of_parse_phandle_with_fixed_args(np, "rockchip,hdmi-codec",
+					       0, 0, &args);
+	if (ret) {
+		dev_err(&pdev->dev,
+			"Unable to parse property 'rockchip,hdmi-codec'\n");
+		return ret;
+	}
+
+	ret = snd_soc_get_dai_name(
+			&args, &rk_dailinks[DAILINK_HDMI].codecs->dai_name);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to get hdmi codec dai_name\n");
+		return ret;
+	}
+
+	rk_dailinks[DAILINK_MAX98090].cpus->of_node = np_cpu;
+	rk_dailinks[DAILINK_MAX98090].platforms->of_node = np_cpu;
+	rk_dailinks[DAILINK_HDMI].cpus->of_node = np_cpu;
+	rk_dailinks[DAILINK_HDMI].platforms->of_node = np_cpu;
 
 	rk_98090_headset_dev.codec_of_node = of_parse_phandle(np,
 			"rockchip,headset-codec", 0);
-- 
2.23.0.237.gc6a4ce50a0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
