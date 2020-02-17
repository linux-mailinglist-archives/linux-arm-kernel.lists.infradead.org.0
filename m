Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD1116080F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hc8x27n2T4fYJaHSdqk2lQvAvk4FZ8bzdfsKbzh2Vis=; b=XYEs55ekPGDITR
	tW/EY4ghkViQ3/rDsCoKsXyygeDYutuyzPOzEDlW7RXlwKIaB4UeApVxQPF3/mAESM++DJZhQYxT1
	K4muYRsZTj2xJP+PJjJd4D2QmmwWqn87/li4LAjC3sTZjimdzFJ+xfG2jAp7dAUxiDq8ZjxpNSSim
	J1t0GflnAWZx9WdeHcZ0b9tGh2rkgJ2/+uA8gfFPZG6AivoONx5jMey1bENk/RsbxrS2oeuR8lRf1
	eHIyl6pHc4hHVca4P+bCo0LpglpQ3VPRaNoHmBteiivI6VzkM+CNp2+W7g+mhD1IQVFTj4ylyUqMU
	sWXWNjlAnJEoHdCPiXig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W1U-0007tO-62; Mon, 17 Feb 2020 02:20:36 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzQ-0005ye-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:30 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 934CA6D42;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Hc4JR0Vl78E8a
 ni0afny2xMSor6ZCyoJcVsg+yk/Wis=; b=QeRTUMZ07ZEApmelrmz7vpOmTRFLA
 tI3932e8vmi7MJE7crDUdVfHHub6kT7f5fOBTL4oKGJGCaQX2XaNMA6lrmGRQwSl
 1fzXFFY9fVKZMgzTwOerZuWiECT0lGE8sS03MynXwQS01I45/6NHddpBQlHpPhRe
 9IbXhS+h54oYAdw3XtxgwLenXo0Az3njGiNuJG4/juZyf7MCxNRGMIybIicTjY66
 3OgKKr9HhQ6JX5L5JXfpCEMKNExMczwEtQ3t60uFo46dOI3lRZ8BcRuIozlD5zhv
 AJlDoe3cy7pbjOJ1pEoLi31sxEduSq+8FS9UyliRvGOuuKMwovwlczAcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Hc4JR0Vl78E8ani0afny2xMSor6ZCyoJcVsg+yk/Wis=; b=ZDFixzOL
 kPq4zqwnsiwyDrOzaVrvVo3u/qcvUbBkD7qNQHybrWxtIy9SC69p1a1Vy+5ToT06
 URMvxRDyOm+U4AbHrpTKu+MnlMm+YQ1cIykQ1mDRH6IOosAd8SD6mPj3du5MOwWp
 fLllac5cAKrxbv0E64M7IXOrt/xp4JyDU2vxTI5g7DqV+9ZKaQkWBtGYaETiloso
 HYNxoy1lzCZl+mdH0lYDrjsnkiFlD4ejMmTjEEavJVZvlDrSJ1qVNRMAFwIF39WH
 v1NXapdkjlTb5dLx3RGsIWTifu+RqofW8antvKfQxlQO2/zNenkhDY0rBBXP9Fzh
 GxkLN3azMql1/w==
X-ME-Sender: <xms:6vdJXjj0kCro0mL0AtACyL-ATto5XXVrE48MmDMtGfXPSu5C3Zse9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6vdJXhX9k6xXa7mD_nwzVpRdwNIhdBJucoEdanYDj9OZsFfdLQ4a9g>
 <xmx:6vdJXnuk7pAHBMS_3ZcFu9CoFfWe5ChOkzFHvGpSjBd3nscpRC_ZUA>
 <xmx:6vdJXi8yghNBOP7c5NbOsFwQlmHnaYHzOdvaIB1LJBrz5Ze6RDoASQ>
 <xmx:6_dJXj7eRppNl7P-yBTmko10P0b0Wa_CUB0r3WOsB3DibVXNvAHHOg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A5D3C3060FDD;
 Sun, 16 Feb 2020 21:18:17 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 7/8] ASoC: sun50i-codec-analog: Enable DAPM for line out switch
Date: Sun, 16 Feb 2020 20:18:12 -0600
Message-Id: <20200217021813.53266-8-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181828_602171_F7E94634 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By including the line out mute switch in the DAPM graph, the
Mixer/DAC inputs can be powered off when the line output is muted.

The line outputs have an unusual routing scheme. The left side mute
switch is between the source selection and the amplifier, as usual.
The right side source selection comes *after* its amplifier (and
after the left side amplifier), and its mute switch controls
whichever source is currently selected. This matches the diagram in
the SoC manual.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index df39f6ffe25a..84bb76cad74f 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -228,11 +228,6 @@ static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
 		       SUN50I_ADDA_LINEOUT_CTRL1_VOL, 0x1f, 0,
 		       sun50i_codec_lineout_vol_scale),
 
-	SOC_DOUBLE("Line Out Playback Switch",
-		   SUN50I_ADDA_LINEOUT_CTRL0,
-		   SUN50I_ADDA_LINEOUT_CTRL0_LEN,
-		   SUN50I_ADDA_LINEOUT_CTRL0_REN, 1, 0),
-
 	SOC_SINGLE_TLV("Earpiece Playback Volume",
 		       SUN50I_ADDA_EARPIECE_CTRL1,
 		       SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL, 0x1f, 0,
@@ -280,6 +275,12 @@ static const struct snd_kcontrol_new sun50i_codec_lineout_src[] = {
 		      sun50i_codec_lineout_src_enum),
 };
 
+static const struct snd_kcontrol_new sun50i_codec_lineout_switch =
+	SOC_DAPM_DOUBLE("Line Out Playback Switch",
+			SUN50I_ADDA_LINEOUT_CTRL0,
+			SUN50I_ADDA_LINEOUT_CTRL0_LEN,
+			SUN50I_ADDA_LINEOUT_CTRL0_REN, 1, 0);
+
 static const char * const sun50i_codec_earpiece_src_enum_text[] = {
 	"DACR", "DACL", "Right Mixer", "Left Mixer",
 };
@@ -332,6 +333,10 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_lineout_src),
 	SND_SOC_DAPM_MUX("Right Line Out Source",
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_lineout_src),
+	SND_SOC_DAPM_SWITCH("Left Line Out Switch",
+			    SND_SOC_NOPM, 0, 0, &sun50i_codec_lineout_switch),
+	SND_SOC_DAPM_SWITCH("Right Line Out Switch",
+			    SND_SOC_NOPM, 0, 0, &sun50i_codec_lineout_switch),
 	SND_SOC_DAPM_OUTPUT("LINEOUT"),
 
 	SND_SOC_DAPM_MUX("Earpiece Source Playback Route",
@@ -444,10 +449,12 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	{ "Left Line Out Source", "Stereo", "Left Mixer" },
 	{ "Left Line Out Source", "Mono Differential", "Left Mixer" },
 	{ "Left Line Out Source", "Mono Differential", "Right Mixer" },
-	{ "LINEOUT", NULL, "Left Line Out Source" },
+	{ "Left Line Out Switch", "Line Out Playback Switch", "Left Line Out Source" },
+	{ "LINEOUT", NULL, "Left Line Out Switch" },
 
-	{ "Right Line Out Source", "Stereo", "Right Mixer" },
-	{ "Right Line Out Source", "Mono Differential", "Left Line Out Source" },
+	{ "Right Line Out Switch", "Line Out Playback Switch", "Right Mixer" },
+	{ "Right Line Out Source", "Stereo", "Right Line Out Switch" },
+	{ "Right Line Out Source", "Mono Differential", "Left Line Out Switch" },
 	{ "LINEOUT", NULL, "Right Line Out Source" },
 
 	/* Earpiece Routes */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
