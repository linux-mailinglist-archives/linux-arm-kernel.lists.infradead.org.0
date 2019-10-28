Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E78E6D16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pKU4Ea9YheTTTEk4zp++JkUczfDKShiPOWWXMRXbkc=; b=Yh7ztxymv9pVMc
	X5Z7V0bN8FPTrSF6JGC7NpmA3AdhuQ3iXFObg/7K1ORe4WcuN+NfItugid87oIfyShNcyV2e08luQ
	xlkBsK4ZmBDpZyj536OtCozjnodCb3dHDYBLChtkA/II98qsMeVvXSQRdkZ5xNOdT7ZaNluMnT+/1
	hFB0nS+Mp717gQ8MmrwFwFU1rH2xXgB2i1SVnHWr6/42Oh4NJooke+xSCMIU6Tb5+O9aCDz4kqTRs
	0ORN8cQDC06s1+POsfxZoxGCFJOCLfpi/qWQqrbexT0DX40js/eIthStVKP2IvhJhNF4LXdky8zAq
	ZZphHHYgJFOyot93XYIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzLX-0006lM-AE; Mon, 28 Oct 2019 07:21:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzKu-0006WR-2a
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:21:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id r4so618228pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 00:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZFLfu5/BorpL79QonU+egzKQwaHmeFyW4IGi+Y2i/Mc=;
 b=S4yQ0SPxWoRo9Husg4XxJtxjfRRnsiTNkKIGSB/kNPbm9sTFhr+DxgBD+apb7j9Bls
 pIdp2VscpQhfnNlZVLU4IXGaEwL9YQBYzSItDoXmKsRupByvrGuYM3nKmrLRdl65207Q
 1SyPF8pB9LLRGpFQb1hoaaF0lEo6Dur+hGnJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZFLfu5/BorpL79QonU+egzKQwaHmeFyW4IGi+Y2i/Mc=;
 b=UtPMCOSq8BVOvsFZ+Sm5MqBh1nJZt5iqpnj0BMMScjVOczqsIkemBSfOPQXSF9ia4e
 41IHNc9Up/NB5zwVZtEeDvTWjKqJMBMQR0Qvi8Seh/e0HE8elVLgyLvBK58ef0ihl30o
 3AVpc/O5YpSZJ6Y9c0UeaGzWBGddCd6SvDP76FlBjbPmmubzEScpCUscysD+Lfv6Q8b6
 ycNqYjaesRITIWdC02wEHWVOzQCvXK1MOu76Vpt/EtwhW55UuWo8jWinDrH2Y7VqUq4z
 czZW9Y7Vf1Be5zAZ7Te/sOsxzrfD0TXHZHsjwJP4fJ/qcfFTZAHDk79kUVm2jkgWOkkW
 dA1w==
X-Gm-Message-State: APjAAAW457qfqAbNrQjJGqYC1n9lbEtV9eGUgGF1NtoHV479JNK1td6L
 Q1SE6vFyYuipCjFyA8wIQHK7tw==
X-Google-Smtp-Source: APXvYqwVgUWEEqoreLIi8ExRSo5WtOTOKzyvdpmGQgKYspx22arkHNb5evRduoKuD9cMEjiNPpur2A==
X-Received: by 2002:a62:1c91:: with SMTP id c139mr506466pfc.175.1572247266893; 
 Mon, 28 Oct 2019 00:21:06 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id k24sm9730758pgl.6.2019.10.28.00.21.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 00:21:06 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 3/6] ASoC: rockchip_max98090: Optionally support HDMI use
 case
Date: Mon, 28 Oct 2019 15:19:27 +0800
Message-Id: <20191028071930.145899-4-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191028071930.145899-1-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_002108_234440_210C9CE3 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support three different use cases with rockchip_max98090 driver.

The three use cases:
- max98090 only: Current usage, where HDMI link is missing.
- HDMI only: Needed use case for veyron_mickey board.
- max98090 + HDMI: Ideal use case for veyron_jerry, veyron_minnie..etc.

The presence of max98090 is determined by the presence of
rockchip,audio-codec device property.

The presence of HDMI is determined by the presence of
rockchip,hdmi-codec device property.

Create different sound card based on the configuration.
Note that we keep max98090 only usage for backward compatibility.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 The checkpatch reported error
 "Macros with complex values should be enclosed in parentheses".
 It is ignored because it does not suit the usage in this patch.

 sound/soc/rockchip/rockchip_max98090.c | 291 +++++++++++++++++++------
 1 file changed, 226 insertions(+), 65 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 0097df1fae66..50ef9b8e7ce4 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/gpio.h>
@@ -36,28 +37,73 @@ static struct snd_soc_jack_pin headset_jack_pins[] = {
 
 };
 
-static const struct snd_soc_dapm_widget rk_dapm_widgets[] = {
-	SND_SOC_DAPM_HP("Headphone", NULL),
-	SND_SOC_DAPM_MIC("Headset Mic", NULL),
-	SND_SOC_DAPM_MIC("Int Mic", NULL),
-	SND_SOC_DAPM_SPK("Speaker", NULL),
+#define RK_MAX98090_WIDGETS \
+	SND_SOC_DAPM_HP("Headphone", NULL), \
+	SND_SOC_DAPM_MIC("Headset Mic", NULL), \
+	SND_SOC_DAPM_MIC("Int Mic", NULL), \
+	SND_SOC_DAPM_SPK("Speaker", NULL)
+
+#define RK_HDMI_WIDGETS \
+	SND_SOC_DAPM_LINE("HDMI", NULL)
+
+static const struct snd_soc_dapm_widget rk_max98090_dapm_widgets[] = {
+	RK_MAX98090_WIDGETS,
+};
+
+static const struct snd_soc_dapm_widget rk_hdmi_dapm_widgets[] = {
+	RK_HDMI_WIDGETS,
+};
+
+static const struct snd_soc_dapm_widget rk_max98090_hdmi_dapm_widgets[] = {
+	RK_MAX98090_WIDGETS,
+	RK_HDMI_WIDGETS,
+};
+
+#define RK_MAX98090_AUDIO_MAP \
+	{"IN34", NULL, "Headset Mic"}, \
+	{"Headset Mic", NULL, "MICBIAS"}, \
+	{"DMICL", NULL, "Int Mic"}, \
+	{"Headphone", NULL, "HPL"}, \
+	{"Headphone", NULL, "HPR"}, \
+	{"Speaker", NULL, "SPKL"}, \
+	{"Speaker", NULL, "SPKR"}
+
+#define RK_HDMI_AUDIO_MAP \
+	{"HDMI", NULL, "TX"}
+
+static const struct snd_soc_dapm_route rk_max98090_audio_map[] = {
+	RK_MAX98090_AUDIO_MAP,
+};
+
+static const struct snd_soc_dapm_route rk_hdmi_audio_map[] = {
+	RK_HDMI_AUDIO_MAP,
 };
 
-static const struct snd_soc_dapm_route rk_audio_map[] = {
-	{"IN34", NULL, "Headset Mic"},
-	{"Headset Mic", NULL, "MICBIAS"},
-	{"DMICL", NULL, "Int Mic"},
-	{"Headphone", NULL, "HPL"},
-	{"Headphone", NULL, "HPR"},
-	{"Speaker", NULL, "SPKL"},
-	{"Speaker", NULL, "SPKR"},
+static const struct snd_soc_dapm_route rk_max98090_hdmi_audio_map[] = {
+	RK_MAX98090_AUDIO_MAP,
+	RK_HDMI_AUDIO_MAP,
+};
+
+#define RK_MAX98090_CONTROLS \
+	SOC_DAPM_PIN_SWITCH("Headphone"), \
+	SOC_DAPM_PIN_SWITCH("Headset Mic"), \
+	SOC_DAPM_PIN_SWITCH("Int Mic"), \
+	SOC_DAPM_PIN_SWITCH("Speaker")
+
+#define RK_HDMI_CONTROLS \
+	SOC_DAPM_PIN_SWITCH("HDMI")
+
+static const struct snd_kcontrol_new rk_max98090_controls[] = {
+	RK_MAX98090_CONTROLS,
 };
 
-static const struct snd_kcontrol_new rk_mc_controls[] = {
-	SOC_DAPM_PIN_SWITCH("Headphone"),
-	SOC_DAPM_PIN_SWITCH("Headset Mic"),
-	SOC_DAPM_PIN_SWITCH("Int Mic"),
-	SOC_DAPM_PIN_SWITCH("Speaker"),
+static const struct snd_kcontrol_new rk_hdmi_controls[] = {
+	RK_HDMI_CONTROLS,
+};
+
+static const struct snd_kcontrol_new rk_max98090_hdmi_controls[] = {
+	RK_MAX98090_CONTROLS,
+	RK_HDMI_CONTROLS,
 };
 
 static int rk_jack_event(struct notifier_block *nb, unsigned long event,
@@ -122,15 +168,20 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 
 	ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
 				     SND_SOC_CLOCK_OUT);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+	if (ret) {
+		dev_err(cpu_dai->dev, "Can't set cpu dai clock %d\n", ret);
 		return ret;
 	}
 
 	ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
 				     SND_SOC_CLOCK_IN);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+
+	/* HDMI codec dai does not need to set sysclk. */
+	if (!strcmp(rtd->dai_link->name, "HDMI"))
+		return 0;
+
+	if (ret) {
+		dev_err(codec_dai->dev, "Can't set codec dai clock %d\n", ret);
 		return ret;
 	}
 
@@ -152,20 +203,67 @@ static const struct snd_soc_ops rk_aif1_ops = {
 	.startup = rk_aif1_startup,
 };
 
-SND_SOC_DAILINK_DEFS(hifi,
-	DAILINK_COMP_ARRAY(COMP_EMPTY()),
-	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
-	DAILINK_COMP_ARRAY(COMP_EMPTY()));
-
-static struct snd_soc_dai_link rk_dailink = {
-	.name = "max98090",
-	.stream_name = "Audio",
-	.init = rk_init,
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
+/* max98090 dai_link */
+static struct snd_soc_dai_link rk_max98090_dailinks[] = {
+	{
+		.name = "max98090",
+		.stream_name = "Analog",
+		.init = rk_init,
+		.ops = &rk_aif1_ops,
+		/* set max98090 as slave */
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(analog),
+	},
+};
+
+/* HDMI codec dai_link */
+static struct snd_soc_dai_link rk_hdmi_dailinks[] = {
+	{
+		.name = "HDMI",
+		.stream_name = "HDMI",
+		.ops = &rk_aif1_ops,
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(hdmi),
+	}
+};
+
+/* max98090 and HDMI codec dai_link */
+static struct snd_soc_dai_link rk_max98090_hdmi_dailinks[] = {
+	[DAILINK_MAX98090] = {
+		.name = "max98090",
+		.stream_name = "Analog",
+		.init = rk_init,
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
@@ -175,19 +273,47 @@ static struct snd_soc_aux_dev rk_98090_headset_dev = {
 	.init = rk_98090_headset_init,
 };
 
-static struct snd_soc_card snd_soc_card_rk = {
+static struct snd_soc_card rockchip_max98090_card = {
 	.name = "ROCKCHIP-I2S",
 	.owner = THIS_MODULE,
-	.dai_link = &rk_dailink,
-	.num_links = 1,
+	.dai_link = rk_max98090_dailinks,
+	.num_links = ARRAY_SIZE(rk_max98090_dailinks),
 	.aux_dev = &rk_98090_headset_dev,
 	.num_aux_devs = 1,
-	.dapm_widgets = rk_dapm_widgets,
-	.num_dapm_widgets = ARRAY_SIZE(rk_dapm_widgets),
-	.dapm_routes = rk_audio_map,
-	.num_dapm_routes = ARRAY_SIZE(rk_audio_map),
-	.controls = rk_mc_controls,
-	.num_controls = ARRAY_SIZE(rk_mc_controls),
+	.dapm_widgets = rk_max98090_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk_max98090_dapm_widgets),
+	.dapm_routes = rk_max98090_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(rk_max98090_audio_map),
+	.controls = rk_max98090_controls,
+	.num_controls = ARRAY_SIZE(rk_max98090_controls),
+};
+
+static struct snd_soc_card rockchip_hdmi_card = {
+	.name = "ROCKCHIP-HDMI",
+	.owner = THIS_MODULE,
+	.dai_link = rk_hdmi_dailinks,
+	.num_links = ARRAY_SIZE(rk_hdmi_dailinks),
+	.dapm_widgets = rk_hdmi_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk_hdmi_dapm_widgets),
+	.dapm_routes = rk_hdmi_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(rk_hdmi_audio_map),
+	.controls = rk_hdmi_controls,
+	.num_controls = ARRAY_SIZE(rk_hdmi_controls),
+};
+
+static struct snd_soc_card rockchip_max98090_hdmi_card = {
+	.name = "ROCKCHIP-MAX98090-HDMI",
+	.owner = THIS_MODULE,
+	.dai_link = rk_max98090_hdmi_dailinks,
+	.num_links = ARRAY_SIZE(rk_max98090_hdmi_dailinks),
+	.aux_dev = &rk_98090_headset_dev,
+	.num_aux_devs = 1,
+	.dapm_widgets = rk_max98090_hdmi_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk_max98090_hdmi_dapm_widgets),
+	.dapm_routes = rk_max98090_hdmi_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(rk_max98090_hdmi_audio_map),
+	.controls = rk_max98090_hdmi_controls,
+	.num_controls = ARRAY_SIZE(rk_max98090_hdmi_controls),
 };
 
 static int rk_98090_headset_init(struct snd_soc_component *component)
@@ -195,7 +321,7 @@ static int rk_98090_headset_init(struct snd_soc_component *component)
 	int ret;
 
 	/* Enable Headset and 4 Buttons Jack detection */
-	ret = snd_soc_card_jack_new(&snd_soc_card_rk, "Headset Jack",
+	ret = snd_soc_card_jack_new(component->card, "Headset Jack",
 				    SND_JACK_HEADSET |
 				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
 				    SND_JACK_BTN_2 | SND_JACK_BTN_3,
@@ -210,41 +336,75 @@ static int rk_98090_headset_init(struct snd_soc_component *component)
 	return ret;
 }
 
+static int rk_parse_headset_from_of(struct device *dev, struct device_node *np)
+{
+	rk_98090_headset_dev.dlc.of_node = of_parse_phandle(
+			np, "rockchip,headset-codec", 0);
+	if (!rk_98090_headset_dev.dlc.of_node) {
+		dev_err(dev,
+			"Property 'rockchip,headset-codec' missing/invalid\n");
+		return -EINVAL;
+	}
+	return 0;
+}
+
 static int snd_rk_mc_probe(struct platform_device *pdev)
 {
 	int ret = 0;
-	struct snd_soc_card *card = &snd_soc_card_rk;
+	struct snd_soc_card *card;
+	struct device *dev = &pdev->dev;
 	struct device_node *np = pdev->dev.of_node;
+	struct device_node *np_cpu;
+	struct device_node *np_audio, *np_hdmi;
 
-	/* register the soc card */
-	card->dev = &pdev->dev;
+	/* Parse DTS for I2S controller. */
+	np_cpu = of_parse_phandle(np, "rockchip,i2s-controller", 0);
 
-	rk_dailink.codecs->of_node = of_parse_phandle(np,
-			"rockchip,audio-codec", 0);
-	if (!rk_dailink.codecs->of_node) {
+	if (!np_cpu) {
 		dev_err(&pdev->dev,
-			"Property 'rockchip,audio-codec' missing or invalid\n");
+			"Property 'rockchip,i2s-controller missing or invalid\n");
 		return -EINVAL;
 	}
 
-	rk_dailink.cpus->of_node = of_parse_phandle(np,
-			"rockchip,i2s-controller", 0);
-	if (!rk_dailink.cpus->of_node) {
-		dev_err(&pdev->dev,
-			"Property 'rockchip,i2s-controller' missing or invalid\n");
+	/*
+	 * Find the card to use based on the presences of audio codec
+	 * and hdmi codec in device property. Set their of_node accordingly.
+	 */
+	np_audio = of_parse_phandle(np, "rockchip,audio-codec", 0);
+	np_hdmi = of_parse_phandle(np, "rockchip,hdmi-codec", 0);
+	if (np_audio && np_hdmi) {
+		card = &rockchip_max98090_hdmi_card;
+		card->dai_link[DAILINK_MAX98090].codecs->of_node = np_audio;
+		card->dai_link[DAILINK_HDMI].codecs->of_node = np_hdmi;
+		card->dai_link[DAILINK_MAX98090].cpus->of_node = np_cpu;
+		card->dai_link[DAILINK_MAX98090].platforms->of_node = np_cpu;
+		card->dai_link[DAILINK_HDMI].cpus->of_node = np_cpu;
+		card->dai_link[DAILINK_HDMI].platforms->of_node = np_cpu;
+	} else if (np_audio) {
+		card = &rockchip_max98090_card;
+		card->dai_link[0].codecs->of_node = np_audio;
+		card->dai_link[0].cpus->of_node = np_cpu;
+		card->dai_link[0].platforms->of_node = np_cpu;
+	} else if (np_hdmi) {
+		card = &rockchip_hdmi_card;
+		card->dai_link[0].codecs->of_node = np_hdmi;
+		card->dai_link[0].cpus->of_node = np_cpu;
+		card->dai_link[0].platforms->of_node = np_cpu;
+	} else {
+		dev_err(dev, "At least one of codecs should be specified\n");
 		return -EINVAL;
 	}
 
-	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
+	card->dev = dev;
 
-	rk_98090_headset_dev.dlc.of_node = of_parse_phandle(np,
-			"rockchip,headset-codec", 0);
-	if (!rk_98090_headset_dev.dlc.of_node) {
-		dev_err(&pdev->dev,
-			"Property 'rockchip,headset-codec' missing/invalid\n");
-		return -EINVAL;
+	/* Parse headset detection codec. */
+	if (np_audio) {
+		ret = rk_parse_headset_from_of(dev, np);
+		if (ret)
+			return ret;
 	}
 
+	/* Parse card name. */
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
 	if (ret) {
 		dev_err(&pdev->dev,
@@ -252,6 +412,7 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* register the soc card */
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
 	if (ret) {
 		dev_err(&pdev->dev,
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
