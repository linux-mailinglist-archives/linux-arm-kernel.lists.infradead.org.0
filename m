Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E7F5D6BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 21:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8GuK/zKG9vdwjkW6hKBOQf3lQ92mPJ4FzdHX5j5YFIE=; b=FgvHbvJAcxjZIu
	DgdLj/cmNiCAlqIHoCfXwwFDbK1fOLlaO+PeKFia8MEU8vtUhAuk2JDlHi6sv1hpuOgX0eAB2deJi
	tJEzgR+JBj40ocPESCP3ZPcygiRp94jZ+EuqX6q3DPMQrNhKN5hsVjYboN2xtzsmIu5r/17oTdd+3
	NWBeDSb7M7a6/8gA7U178Sy4Kcy+SoJBRHujQ/K7mjPvyrErHfw6IPDlGLvhcpAvD4ZdfjFLpWnm8
	Js30k7t6ovXHeDeTHpEADDyoQy+Ca+saIdeUvVknbJWM8SWBZa6zLIH08RMrMTiv7mstDCp4YdgoV
	nPYasIBCCDHgkzbPolVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiOHe-0001EW-2d; Tue, 02 Jul 2019 19:17:42 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiOHR-0001Co-UQ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 19:17:31 +0000
Received: from localhost.localdomain (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 8C205C17FF;
 Tue,  2 Jul 2019 19:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1562095044; bh=LdmS3OrP/bxdcMJGIVgeCmZ4Bf2uPWVpuLOJwOPC3Dw=;
 h=From:To:Cc:Subject:Date;
 b=BRAP3WusRqPGjDGJhJFN5WgvTVSnPJVrugFixO2C+d30SdpQDZh6FOVS3TJHJMQ8K
 jGaZ8Vr1Xg5KDyjp6zrvCEC9FxXUyX7rfM/khSqZNbZKBd4ReWLj/keej5XoamEbN8
 kH5L3VY/TeopDnPgHiRctetd4hagP0nR68glOi1g=
From: Luca Weiss <luca@z3ntu.xyz>
To: alsa-devel@alsa-project.org
Subject: [PATCH] ASoC: sunxi: sun50i-codec-analog: Add earpiece
Date: Tue,  2 Jul 2019 21:16:09 +0200
Message-Id: <20190702191613.11084-1-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_121730_264093_D7B1558B 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 ~martijnbraam/pmos-upstream@lists.sr.ht, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Luca Weiss <luca@z3ntu.xyz>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the necessary registers and audio routes to play audio using
the Earpiece, that's supported on the A64.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
So, first of all: This is my first audio patch and I hope I didn't make
too many mistakes :) , especially with the routes at the bottom of
the patch.

What I'm really unsure about, is how the enable & mute registers should
be handled. Should I put both registers into a SOC_DOUBLE("Earpiece
Playback Switch",...)?

 sound/soc/sunxi/sun50i-codec-analog.c | 51 +++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index d105c90c3706..6c19fea992c5 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -49,6 +49,15 @@
 #define SUN50I_ADDA_OR_MIX_CTRL_DACR		1
 #define SUN50I_ADDA_OR_MIX_CTRL_DACL		0
 
+#define SUN50I_ADDA_EARPIECE_CTRL0	0x03
+#define SUN50I_ADDA_EARPIECE_CTRL0_EAR_RAMP_TIME	4
+#define SUN50I_ADDA_EARPIECE_CTRL0_ESPSR		0
+
+#define SUN50I_ADDA_EARPIECE_CTRL1	0x04
+#define SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_EN	7
+#define SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE	6
+#define SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL	0
+
 #define SUN50I_ADDA_LINEOUT_CTRL0	0x05
 #define SUN50I_ADDA_LINEOUT_CTRL0_LEN		7
 #define SUN50I_ADDA_LINEOUT_CTRL0_REN		6
@@ -172,6 +181,10 @@ static const DECLARE_TLV_DB_RANGE(sun50i_codec_lineout_vol_scale,
 	2, 31, TLV_DB_SCALE_ITEM(-4350, 150, 0),
 );
 
+static const DECLARE_TLV_DB_RANGE(sun50i_codec_earpiece_vol_scale,
+	0, 1, TLV_DB_SCALE_ITEM(TLV_DB_GAIN_MUTE, 0, 1),
+	2, 31, TLV_DB_SCALE_ITEM(-4350, 150, 0),
+);
 
 /* volume / mute controls */
 static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
@@ -225,6 +238,19 @@ static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
 		   SUN50I_ADDA_LINEOUT_CTRL0_LEN,
 		   SUN50I_ADDA_LINEOUT_CTRL0_REN, 1, 0),
 
+	SOC_SINGLE_TLV("Earpiece Playback Volume",
+		       SUN50I_ADDA_EARPIECE_CTRL1,
+		       SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL, 0x1f, 0,
+		       sun50i_codec_earpiece_vol_scale),
+
+	SOC_SINGLE("Earpiece Playback Switch (enable)",
+		   SUN50I_ADDA_EARPIECE_CTRL1,
+		   SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_EN, 1, 0),
+
+	SOC_SINGLE("Earpiece Playback Switch",
+		   SUN50I_ADDA_EARPIECE_CTRL1,
+		   SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE, 1, 0),
+
 };
 
 static const char * const sun50i_codec_hp_src_enum_text[] = {
@@ -257,6 +283,20 @@ static const struct snd_kcontrol_new sun50i_codec_lineout_src[] = {
 		      sun50i_codec_lineout_src_enum),
 };
 
+static const char * const sun50i_codec_earpiece_src_enum_text[] = {
+	"DACR", "DACL", "Right Analog Mixer", "Left Analog Mixer",
+};
+
+static SOC_ENUM_SINGLE_DECL(sun50i_codec_earpiece_src_enum,
+			    SUN50I_ADDA_EARPIECE_CTRL0,
+			    SUN50I_ADDA_EARPIECE_CTRL0_ESPSR,
+			    sun50i_codec_earpiece_src_enum_text);
+
+static const struct snd_kcontrol_new sun50i_codec_earpiece_src[] = {
+	SOC_DAPM_ENUM("Earpiece Source Playback Route",
+		      sun50i_codec_earpiece_src_enum),
+};
+
 static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 	/* DAC */
 	SND_SOC_DAPM_DAC("Left DAC", NULL, SUN50I_ADDA_MIX_DAC_CTRL,
@@ -285,6 +325,10 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_lineout_src),
 	SND_SOC_DAPM_OUTPUT("LINEOUT"),
 
+	SND_SOC_DAPM_MUX("Earpiece Source Playback Route",
+			 SND_SOC_NOPM, 0, 0, sun50i_codec_earpiece_src),
+	SND_SOC_DAPM_OUTPUT("EARPIECE"),
+
 	/* Microphone inputs */
 	SND_SOC_DAPM_INPUT("MIC1"),
 
@@ -388,6 +432,13 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	{ "Line Out Source Playback Route", "Mono Differential",
 		"Right Mixer" },
 	{ "LINEOUT", NULL, "Line Out Source Playback Route" },
+
+	/* Earpiece Routes */
+	{ "Earpiece Source Playback Route", "DACL", "Left DAC" },
+	{ "Earpiece Source Playback Route", "DACR", "Right DAC" },
+	{ "Earpiece Source Playback Route", "Left Analog Mixer", "Left Mixer" },
+	{ "Earpiece Source Playback Route", "Right Analog Mixer", "Right Mixer" },
+	{ "EARPIECE", NULL, "Earpiece Source Playback Route" },
 };
 
 static const struct snd_soc_component_driver sun50i_codec_analog_cmpnt_drv = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
