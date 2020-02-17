Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B901607F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2V5DA9qZusPphbuZmL5L2y4HuFcNCNfc1JY3BaOzuA=; b=Lb/eYiEIdoLyFl
	EcI6iuW2G3LgqXeASXaRTxcZsmS2lKQcxpkKTGXWQhNqH+cUCzgLIaR8Gq9LAwdm/FK3TeNTVos5V
	JPxLJSDCt8/PRYGtFVVnd1Hi+DBcj9kTJkGSrxBefr/l0MRix88YLKIRhfamap65rRv6a7ZT8bGug
	b+KOxnXLxmDFZKFDh3Wj1wloRIYs+SDGPKUAxUI9AZvIoqiF8hS5DrnCnGzxaoDOxeHf5czSBDon2
	D6A/wCy1PomjmZpAcRrSzB2zmJB+pIfOSQTglA8f/H5Zseln6haHdxCa6576ndJ+IYCET23r2JnzF
	r3cgTIzS0rdXoANz1xsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3VzY-00060t-Kb; Mon, 17 Feb 2020 02:18:36 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzN-0005yd-C1
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:27 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 91033666A;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=qsy1olLBe7as5
 13jXbvPlPLSJ8oPCY+55e5kCL9aFBc=; b=b6SQ2nVCdAGXiW9y+9JCfTj61yzof
 BsdKnBMclrlZ5LSBO4XaXN/X1IjCaGmQ9zuLWRorE0e0dwaUWdQ/RfBHXYw+ePry
 nVOWXzlRZD4qJ2sBfLd8L0VbzydYjZAdIk+M/xorMfU0o+zIpk3Qnc0DgPzTIdzv
 OfaQZUaYfqruMVPSQjLKKmF2CY/AjinLZSpIvnBPaiai4FDRJ5xG/GuK2uZfM0lC
 +I6ukiOUnGmrBRoB82qZ6En9LIkUKRXZcGDhRgpuFNBNazN1lzsUlyCuA8BJTg92
 l198Cr5p2fN3jZhsKP5WVUUF+jEY5Qh/ZfUYAwL9OyEAEgXlUe+i7XSHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=qsy1olLBe7as513jXbvPlPLSJ8oPCY+55e5kCL9aFBc=; b=akmZViRe
 8jfrq4bo6xVnqId4t5uIT65xVV0DUY2n714c4Ts1gpt8Eru5mAG2/xsqVHVekON3
 mW5RrZnwe7LtLSXEpla4zRuPEa+QmT/N9fzJbKSQ36hAqmX6ccuMUG7z4yds1plM
 +m/fdKDOhY7nWPddfC2HUbIJa4O/6BSXzPhfcA01TI1Hp1VaiFPQz9+YCs0zWi9z
 p4so3aI8avmrMr9Fw4xNA/LdGuKC4NqbRk4J939Oo/0UtI/xoA5rCFDsL78sSiaP
 A434Feysq4wF0RaO2ezTNqMaxlmZmZZ7smgdl9jKiz91ywKqXSfWrrelCihiIm3W
 mpL5YayWwnWwZA==
X-ME-Sender: <xms:5_dJXgpeghBmR5hz0Lamkv6wJoOeDT-Uo6jdiKmB0Xjy28Sias-gEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:5_dJXt4PFp13T5qT4SZP7sk8J3KGMXb6xlrCaw3CC6HiOKZbZYvpCA>
 <xmx:5_dJXp60Va8uiVJyYeQw0oF_GdMcdL6Ugr9pbBNJ4V0LkukmtcgyHA>
 <xmx:5_dJXkm7x9YpN_FvZ6UtWtsYTDR7tjlgu5e3OJvHtdUbxPjSym2_IQ>
 <xmx:6_dJXrTcF6Hpa9dByCpIsLqOSwsmdI11lKAz088JzSbuzt0SPTCc4A>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 315413060EF2;
 Sun, 16 Feb 2020 21:18:15 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 2/8] ASoC: sun50i-codec-analog: Gate the amplifier clock
 during suspend
Date: Sun, 16 Feb 2020 20:18:07 -0600
Message-Id: <20200217021813.53266-3-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181825_758115_A3325655 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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

The clock must be running for the zero-crossing mute functionality.
However, it must be gated for VDD-SYS to be turned off during system
suspend. Disable it in the suspend callback, after everything has
already been muted, to avoid pops when muting/unmuting outputs.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index cbdb31c3b7bd..4ad262c2e59b 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -438,6 +438,19 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	{ "EARPIECE", NULL, "Earpiece Amp" },
 };
 
+static int sun50i_a64_codec_suspend(struct snd_soc_component *component)
+{
+	return regmap_update_bits(component->regmap, SUN50I_ADDA_HP_CTRL,
+				  BIT(SUN50I_ADDA_HP_CTRL_PA_CLK_GATE),
+				  BIT(SUN50I_ADDA_HP_CTRL_PA_CLK_GATE));
+}
+
+static int sun50i_a64_codec_resume(struct snd_soc_component *component)
+{
+	return regmap_update_bits(component->regmap, SUN50I_ADDA_HP_CTRL,
+				  BIT(SUN50I_ADDA_HP_CTRL_PA_CLK_GATE), 0);
+}
+
 static const struct snd_soc_component_driver sun50i_codec_analog_cmpnt_drv = {
 	.controls		= sun50i_a64_codec_controls,
 	.num_controls		= ARRAY_SIZE(sun50i_a64_codec_controls),
@@ -445,6 +458,8 @@ static const struct snd_soc_component_driver sun50i_codec_analog_cmpnt_drv = {
 	.num_dapm_widgets	= ARRAY_SIZE(sun50i_a64_codec_widgets),
 	.dapm_routes		= sun50i_a64_codec_routes,
 	.num_dapm_routes	= ARRAY_SIZE(sun50i_a64_codec_routes),
+	.suspend		= sun50i_a64_codec_suspend,
+	.resume			= sun50i_a64_codec_resume,
 };
 
 static const struct of_device_id sun50i_codec_analog_of_match[] = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
