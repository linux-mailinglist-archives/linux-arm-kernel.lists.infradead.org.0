Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E136116080E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebOQk3xipngtU8UUv+K3O8/e/2CTg7rYQ+oa84qbUk0=; b=VkL7/UGQZ9++M0
	65f/IqEuFkgE4qXa3r70oEZOEwMlxtPBPI4oFYkSwHly6t2av6ugIAg2osuUUHnvfwCQi9QKraMuw
	QUlMwVqXWGPYhh6e0z7LINhzOARJQASp2L9N6BhwiePS5cM26yypjklbTF2rTPgUFBPD4tGRj/pm2
	yQqwoKOKjz0s4mVYcmlECxXtJb2MRELUdT0rnf5f+Ib+sYs04sMj8hbBTuu3V2AVgJW8XwTV8niOE
	CfhgYNT25EWAnPogWeIitcsGvt8wIHjxn93vnag3fpAFyzY8FZ791Oh+PITmoic3gv/q8bU8y9EhJ
	4345z9XmD0zHF1pSaQZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W1K-0007gj-PZ; Mon, 17 Feb 2020 02:20:26 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzQ-0005yh-0N
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9553E6D4D;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=TvxGeKL95DUEQ
 FtJT5t25lbcU/132qB0xo3CocqSt+0=; b=kXVdPznzFcExN/SIIPqeU92BqSWcu
 fYcOm++/hOCmqc6VKvjM33Hn5n8SZmnZt9V0KTuZz85eyA+lBGEBcZ05pgjyYba/
 waAAbfqp3BhAPx6Cj2hLONRkfpCu3TeGhnZ+wqmA5oSIQyc8iulyJ8fZO909d5a8
 6l4aLHwOKPqV0HJauTuBRP/gTaG+NX1ePj1VVg/1zLR9BjiDahE/U8c8zhzbztGA
 8PdMERYSPU9sxBaVMPTED2JqxxkhGpVIDkd3jIG+XWNoqALLWnD52InSvmm8hFla
 Pu7y+Jl8ACPeBFeYsgIuiRi4zbmNqso+m/xC66KERzfAfbC617jbtRlIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=TvxGeKL95DUEQFtJT5t25lbcU/132qB0xo3CocqSt+0=; b=4B7ifKsN
 cTwfcy6VdxhutWRlhezhN1oOucwG+gGhJnIWjh4r1by44ClPxsuJZawvnL/GRzLx
 0P6HrZkug2ve8/YfgBaY8QG2J+i9pOAYX4WRpTNfEW818RkYWaPI5+E5beCcO9R6
 AJkAfp8rhCDIQqYqALRn2dCPmk0feudn6V5ZVTDqalZvI+1jTKJQTjIUfAZbkLGl
 2imNbes9Wn4VNBC2YluxjzjMjoyiBRqkE2fKB6uugeNprBY9j+ZNCgvDpgbi/vCn
 0FoEqeNiCyjQjZop8EIToLgO8U5Ozf3e2EX9Y/XX67+ln4MfQpbNZxhhnUsIMqAM
 DQUvz5Hz0nUCHA==
X-ME-Sender: <xms:6fdJXjkenJjPYb3qXX8a0yR3oCLWn8rrTYi1W8l0x21IFXdHi8sfXg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6fdJXrEJUSmW8QlETiSnzzB3uuXI7TuvGLi6PUYlhTLIsLoQ9Z_Q0A>
 <xmx:6fdJXkoTDZWj53ml9iosylnncLSWGUQJZkvovKRMNsWqqwnn3RBb5w>
 <xmx:6fdJXv67HDkgq7Ox36kt3f2hBKw08N3zMkePhE8N0fAOiE-oJAVOjw>
 <xmx:6_dJXmX5XRlb6Zdz5tC8ZxP3gv-EVHrwLxYJ3IFSpRZ2iTPflDoK7g>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A58203060F9B;
 Sun, 16 Feb 2020 21:18:16 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 5/8] ASoC: sun50i-codec-analog: Enable DAPM for headphone
 switch
Date: Sun, 16 Feb 2020 20:18:10 -0600
Message-Id: <20200217021813.53266-6-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181828_210609_AA7DABAF 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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

By including the headphone mute switch to the DAPM graph, both the
headphone amplifier and the Mixer/DAC inputs can be powered off when
the headphones are muted.

The mute switch is between the source selection and the amplifier,
as per the diagram in the SoC manual.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index f98851067f97..176d6658d099 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -193,11 +193,6 @@ static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
 		       SUN50I_ADDA_HP_CTRL_HPVOL, 0x3f, 0,
 		       sun50i_codec_hp_vol_scale),
 
-	SOC_DOUBLE("Headphone Playback Switch",
-		   SUN50I_ADDA_MIX_DAC_CTRL,
-		   SUN50I_ADDA_MIX_DAC_CTRL_LHPPAMUTE,
-		   SUN50I_ADDA_MIX_DAC_CTRL_RHPPAMUTE, 1, 0),
-
 	/* Mixer pre-gain */
 	SOC_SINGLE_TLV("Mic1 Playback Volume", SUN50I_ADDA_MIC1_CTRL,
 		       SUN50I_ADDA_MIC1_CTRL_MIC1G,
@@ -264,6 +259,12 @@ static const struct snd_kcontrol_new sun50i_codec_hp_src[] = {
 		      sun50i_codec_hp_src_enum),
 };
 
+static const struct snd_kcontrol_new sun50i_codec_hp_switch =
+	SOC_DAPM_DOUBLE("Headphone Playback Switch",
+			SUN50I_ADDA_MIX_DAC_CTRL,
+			SUN50I_ADDA_MIX_DAC_CTRL_LHPPAMUTE,
+			SUN50I_ADDA_MIX_DAC_CTRL_RHPPAMUTE, 1, 0);
+
 static const char * const sun50i_codec_lineout_src_enum_text[] = {
 	"Stereo", "Mono Differential",
 };
@@ -315,6 +316,10 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
 	SND_SOC_DAPM_MUX("Right Headphone Source",
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
+	SND_SOC_DAPM_SWITCH("Left Headphone Switch",
+			    SND_SOC_NOPM, 0, 0, &sun50i_codec_hp_switch),
+	SND_SOC_DAPM_SWITCH("Right Headphone Switch",
+			    SND_SOC_NOPM, 0, 0, &sun50i_codec_hp_switch),
 	SND_SOC_DAPM_OUT_DRV("Left Headphone Amp",
 			     SND_SOC_NOPM, 0, 0, NULL, 0),
 	SND_SOC_DAPM_OUT_DRV("Right Headphone Amp",
@@ -413,13 +418,15 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	/* Headphone Routes */
 	{ "Left Headphone Source", "DAC", "Left DAC" },
 	{ "Left Headphone Source", "Mixer", "Left Mixer" },
-	{ "Left Headphone Amp", NULL, "Left Headphone Source" },
+	{ "Left Headphone Switch", "Headphone Playback Switch", "Left Headphone Source" },
+	{ "Left Headphone Amp", NULL, "Left Headphone Switch" },
 	{ "Left Headphone Amp", NULL, "Headphone Amp" },
 	{ "HP", NULL, "Left Headphone Amp" },
 
 	{ "Right Headphone Source", "DAC", "Right DAC" },
 	{ "Right Headphone Source", "Mixer", "Right Mixer" },
-	{ "Right Headphone Amp", NULL, "Right Headphone Source" },
+	{ "Right Headphone Switch", "Headphone Playback Switch", "Right Headphone Source" },
+	{ "Right Headphone Amp", NULL, "Right Headphone Switch" },
 	{ "Right Headphone Amp", NULL, "Headphone Amp" },
 	{ "HP", NULL, "Right Headphone Amp" },
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
