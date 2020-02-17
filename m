Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB06160B24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgUHpbRWZ+Y3HWvZ1D5iWui2opJsVMTqrxMMyA47K94=; b=JK9kZq4mWNnG8H
	wvpqw6gYvIS/kb8rZQrL0Guy9vhQTbcQ90AKJhmkIF2etHEPDtJZri0zl9gJsTTQo+J4/3Jfs/ZDW
	gx6LF1ZO3kdix6INyFKlSLEsCyZ9OqIJovIioZG8JJE1sCMwhX5/ZPrvwN24F83NGawVpG9qqcE6A
	fSnWhehwTYbUQGnymQ/ScV1oUECl25z15BpVProK7IJIpjOaGUa++z0veqLhCjHhiER+iF9ZOWv9Z
	suabaQcOjYnd9rZKOKcaEYdJB3qMwgD76ozP9w/rDGcX0j4TP8ZJon8mx7hO2uxohh2mCkIc/ZSpF
	n4njntY75Ciu2NBIZhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aH7-0004ry-FW; Mon, 17 Feb 2020 06:53:01 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7Z-0003sz-Pm
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 79E9556DB;
 Mon, 17 Feb 2020 01:43:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=I3xw5qy1UxUBp
 B6XTvG7LlHa8i+mx9aC7f7VSVA0AfY=; b=InlAs3BgFzcKKX1N06vsPXFIw/Vye
 WdQxPcHR5PG8oZrDQM7cZ3q2PYozLJPunz9Hjx1QLQnP0qVl7GNVfJ2kuvGCmOjJ
 82+NIMLpd1+vMRSepMggyHfkZL4qo1OUXJowLWvBYgQ81u/EnmP2gEkRAbPG90PL
 cOhtV/EMRdrA9iMq/h4u/ryHg0NC0/WO+a1v7PPlNkqFNmngJvU4y3tAeHEZAeWj
 TN8gn3vs/DaEJ6Jtg0tNXSWQCOq/ESkU7dsNrLTfovY+QeGA0CvE8Zy4b95F77m5
 epMbdWsfhP7rCxuP4mQ0Jh2jAsD3qAfIyS9fPrMLRuqH35YTepIj6qLRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=I3xw5qy1UxUBpB6XTvG7LlHa8i+mx9aC7f7VSVA0AfY=; b=q49izLc4
 C5IYmqBQGCMt/iXi4zsD0EsTJ4B//OqI5bq/Q9DOICtFqL0Q32ve6lwW++0vDRrd
 nTw4QTOtZM8ixNghs3lMG4KPjmB9hWI74xnLvh6K61DiXrTXk/afwfA6220EWfB4
 Ah8KjMVLSFvNbR7L3hTKqrAgIvds+TzRocQXWMfsCTtE0+VKOcsmrd7zgVCgF+sq
 O/nkiXq+JVmSpGFt5lh7Um6JS0sHgVQ/ayQhWTCMgMJSAPdiFLLSenssFSzZv7eH
 hyQyLJoshKkil5ebT2tAujsOJ/YkUjTVtU579WGtbBcGSkk7uUqictMoHROn9wZG
 G+XNjNwsprayog==
X-ME-Sender: <xms:_DVKXoj9sAtGFP--G4Q_DcFYVACPHR8JljwnGCTpSoK2xlkp3KTPxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedvjeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:_DVKXvi35OWWRKvbwKHp06CSpV6mTTxMMWWt4mGjWP8IUNuAWV91Ow>
 <xmx:_DVKXmRdPKSp8domuYjy8M-uNeMp5ciAGnR9vcobjp6jvLmzfWUxmw>
 <xmx:_DVKXuBHEPd2Urvd_uhYhp5Q_JWiJUtmiZeOcCwCP8ElicjHPLD2_g>
 <xmx:_DVKXm0D7I4TRSBrYtf2P51TFthcpsISb8lR68KFrW9mP1GqsWzacw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC937328005A;
 Mon, 17 Feb 2020 01:43:07 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 28/34] ASoC: sun8i-codec: Add AIF loopback controls
Date: Mon, 17 Feb 2020 00:42:44 -0600
Message-Id: <20200217064250.15516-29-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224310_425878_53872E57 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows controlling the loopback flag for each AIF. This is useful
for developing/testing complicated audio routing scenarios (such as
recording a phone call while using a BT headset for mic/earpiece)
without needing to involve the devices on the other end of the DAI
links.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 48 +++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index fdb9bf346cc2..245145e36357 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -63,6 +63,7 @@
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA		14
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_SRC		10
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_SRC		8
+#define SUN8I_AIF1_DACDAT_CTRL_AIF1_LOOP_ENA		0
 #define SUN8I_AIF1_MXR_SRC				0x04c
 #define SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF1DA0L	15
 #define SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF2DACL	14
@@ -82,6 +83,7 @@
 #define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACR_ENA		14
 #define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACL_SRC		10
 #define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACR_SRC		8
+#define SUN8I_AIF2_DACDAT_CTRL_AIF2_LOOP_ENA		0
 #define SUN8I_AIF2_MXR_SRC				0x08c
 #define SUN8I_AIF2_MXR_SRC_ADCL_MXR_SRC_AIF1DA0L	15
 #define SUN8I_AIF2_MXR_SRC_ADCL_MXR_SRC_AIF1DA1L	14
@@ -519,6 +521,21 @@ static struct snd_soc_dai_driver sun8i_codec_dais[] = {
 	},
 };
 
+static const struct snd_kcontrol_new sun8i_aif1_loopback_switch =
+	SOC_DAPM_SINGLE("AIF1 Loopback Switch",
+			SUN8I_AIF1_DACDAT_CTRL,
+			SUN8I_AIF1_DACDAT_CTRL_AIF1_LOOP_ENA, 1, 0);
+
+static const struct snd_kcontrol_new sun8i_aif2_loopback_switch =
+	SOC_DAPM_SINGLE("AIF2 Loopback Switch",
+			SUN8I_AIF2_DACDAT_CTRL,
+			SUN8I_AIF2_DACDAT_CTRL_AIF2_LOOP_ENA, 1, 0);
+
+static const struct snd_kcontrol_new sun8i_aif3_loopback_switch =
+	SOC_DAPM_SINGLE("Switch",
+			SUN8I_AIF3_DACDAT_CTRL,
+			SUN8I_AIF3_DACDAT_CTRL_AIF3_LOOP_ENA, 1, 0);
+
 static const char *const sun8i_aif_stereo_mux_enum_names[] = {
 	"Stereo", "Reverse Stereo", "Sum Mono", "Mix Mono"
 };
@@ -643,6 +660,20 @@ static const struct snd_kcontrol_new sun8i_dac_mixer_controls[] = {
 };
 
 static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
+	/* AIF Loopback Switches */
+	SND_SOC_DAPM_SWITCH("AIF1 Slot 0 Left Loopback", SND_SOC_NOPM, 0, 0,
+			    &sun8i_aif1_loopback_switch),
+	SND_SOC_DAPM_SWITCH("AIF1 Slot 0 Right Loopback", SND_SOC_NOPM, 0, 0,
+			    &sun8i_aif1_loopback_switch),
+
+	SND_SOC_DAPM_SWITCH("AIF2 Left Loopback", SND_SOC_NOPM, 0, 0,
+			    &sun8i_aif2_loopback_switch),
+	SND_SOC_DAPM_SWITCH("AIF2 Right Loopback", SND_SOC_NOPM, 0, 0,
+			    &sun8i_aif2_loopback_switch),
+
+	SND_SOC_DAPM_SWITCH("AIF3 Loopback", SND_SOC_NOPM, 0, 0,
+			    &sun8i_aif3_loopback_switch),
+
 	/* AIF "ADC" Outputs */
 	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Left", "AIF1 Capture", 0,
 			     SUN8I_AIF1_ADCDAT_CTRL,
@@ -776,6 +807,15 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 };
 
 static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
+	/* AIF Loopback Routes */
+	{ "AIF1 Slot 0 Left Loopback", "AIF1 Loopback Switch", "AIF1 AD0 Left" },
+	{ "AIF1 Slot 0 Right Loopback", "AIF1 Loopback Switch", "AIF1 AD0 Right" },
+
+	{ "AIF2 Left Loopback", "AIF2 Loopback Switch", "AIF2 ADC Left" },
+	{ "AIF2 Right Loopback", "AIF2 Loopback Switch", "AIF2 ADC Right" },
+
+	{ "AIF3 Loopback", "Switch", "AIF3 ADC" },
+
 	/* AIF "ADC" Output Routes */
 	{ "AIF1 AD0 Left", NULL, "AIF1 AD0 Left Stereo Mux" },
 	{ "AIF1 AD0 Right", NULL, "AIF1 AD0 Right Stereo Mux" },
@@ -882,12 +922,20 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "AIF2 DAC Right Stereo Mux", "Mix Mono", "AIF2 DAC Right" },
 
 	/* AIF "DAC" Input Routes */
+	{ "AIF1 DA0 Left", NULL, "AIF1 Slot 0 Left Loopback" },
+	{ "AIF1 DA0 Right", NULL, "AIF1 Slot 0 Right Loopback" },
+
 	{ "AIF1 DA0 Left", NULL, "AIF1CLK" },
 	{ "AIF1 DA0 Right", NULL, "AIF1CLK" },
 
+	{ "AIF2 DAC Left", NULL, "AIF2 Left Loopback" },
+	{ "AIF2 DAC Right", NULL, "AIF2 Right Loopback" },
+
 	{ "AIF2 DAC Left", NULL, "AIF2CLK" },
 	{ "AIF2 DAC Right", NULL, "AIF2CLK" },
 
+	{ "AIF3 DAC", NULL, "AIF3 Loopback" },
+
 	/* Main DAC Output Routes */
 	{ "DAC Left", NULL, "DAC Left Mixer" },
 	{ "DAC Right", NULL, "DAC Right Mixer" },
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
