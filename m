Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30630160AFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfTS4x0lyIYveiqcKnyTp9tb9CnSCJEx0vLRR+ZxIhg=; b=XDWajoM61douAe
	f6yu22kBuQ2L0IkjDOC4MGBWSVkHDHOaH8dhuMS99ZoA0NGhij4SYT8UK57ON2r8rHqOdBiQjSpYv
	A1Sc2iT/l/SbPTae4EAHXDOiVgqq/LX+ryZvt0VPC3godnI0ilPHdRW0tvsEkAdI1mXuE+etLLpnu
	9VyxN8Np2Kh6DNC3SdTWBUf1grsjCMFaEl/NM3vLDPkEtgiJxQ6XZ+fblcKDJpNGO2qiZP+P79k3K
	VRjy4SZsxRZRNKSbHxRAIeDia7RMRy/bnN4S3Za/A1/+hIBCDSdvr5L2gx9p7BXE0i3XPTBkc+QTU
	DZ+2BMs5nedLtqq/lLAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aAk-0007Mz-IP; Mon, 17 Feb 2020 06:46:26 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7O-0003im-9a
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 88656522A;
 Mon, 17 Feb 2020 01:42:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=eKD/+XfScmpnS
 qlhCFWsXWiucNFzH6aj/knZgkkVSvg=; b=pjGLBhX2W4qKJ0ycJ8/5clEZvnbtD
 zYrp6sc7tE96elJ+GDWEEW9S6HjPLn8s0Wwy8yjsCD0G5Z4u12T3Ts/zlpYpW8TR
 DTJ4c1+t3CxrGEo+mSKJXWa/UHpcqbpWuDM75hzYPXW+cymYlI+8/+bqEmIVknUj
 +vuZxtxzrqThyO5i9Lrnk0kWPYMjkO/yuiVMMqK4K1pgGI1cDRHNCQK4BSO6RezT
 /YUGOFpKI1S/A/SE3hxOilsD9p1EYLdpkGNmHtdYRrEvLSrPB7drWDm2ocSF9OyP
 pZBf3vjGF3DvB3s0M8H/e/KILWQW8cmqRddfvcuy14r7w9+LOyGm+Mdlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=eKD/+XfScmpnSqlhCFWsXWiucNFzH6aj/knZgkkVSvg=; b=t5mJfYrP
 C1ac6eWjB+ssvZHhw5Y31KCY/YMC8QB35p4Pb3C4Upn4Az7UMoHAqzqTv8x8pPar
 q2FVGZwG+zt1qJviFpwvAKQo5N9BuFgiW9oliChFOuLiYsUqCvKAcLbVoHFvFP9A
 KbUKSd6RZQjbesK2YN3d1/SDY+nQ1TBxax34dcoGVXu5UYvF4aytk4ll9Assledj
 dlZf5PjdeqVIjebFf/arlZKyiTgXMpdxpzlK0f3vnQ4aIgGOabyZZA5JEkGsL0l6
 GL4nQUdQsGyDrQ1IAmjimJnz5aOcg25Q1nGR5R6YpV5YJpdCD3Fg4kNhgrUVl7g1
 IEQ1le0hq9ctSA==
X-ME-Sender: <xms:8TVKXnZkH370LRVYVjpEQGFA3gHUs08guuRy8DFCbMj1S-pnTYETuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:8TVKXmULydfE0Y8aU_T76vjTNZpd-wo4htiuzHC6emp-t8jii-Gm5g>
 <xmx:8TVKXli286flikrxgFtDAwZkEhnWdrgGnjP83yGFvomsajdS2PU33w>
 <xmx:8TVKXikIgD6BoNClFg_itC-BJZfXiL_t0mPekxGEi63PZBFdNc1wlA>
 <xmx:8TVKXvmstRxWwOZdnT6J8wz7HbnjF5SWjq-vOPRpgafdBy27mktaeA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C3585328005D;
 Mon, 17 Feb 2020 01:42:56 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 10/34] ASoC: sun8i-codec: Advertise only
 hardware-supported rates
Date: Mon, 17 Feb 2020 00:42:26 -0600
Message-Id: <20200217064250.15516-11-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224258_506858_D745AEC7 
X-CRM114-Status: GOOD (  10.46  )
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

The hardware does not support 64kHz, 88.2kHz, or 176.4kHz sample rates,
so the driver should not advertise them. The hardware can handle two
additional non-standard sample rates: 12kHz and 24kHz, so declare
support for them via SNDRV_PCM_RATE_KNOT.

Cc: stable@kernel.org
Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index dca6f4b9d4b8..bf12f5199e96 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -86,6 +86,11 @@
 #define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK	GENMASK(8, 6)
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK	GENMASK(12, 9)
 
+#define SUN8I_AIF_PCM_RATES (SNDRV_PCM_RATE_8000_48000|\
+			     SNDRV_PCM_RATE_96000|\
+			     SNDRV_PCM_RATE_192000|\
+			     SNDRV_PCM_RATE_KNOT)
+
 struct sun8i_codec {
 	struct regmap	*regmap;
 	struct clk	*clk_module;
@@ -515,7 +520,7 @@ static struct snd_soc_dai_driver sun8i_codec_dai = {
 		.stream_name = "Playback",
 		.channels_min = 1,
 		.channels_max = 2,
-		.rates = SNDRV_PCM_RATE_8000_192000,
+		.rates = SUN8I_AIF_PCM_RATES,
 		.formats = SNDRV_PCM_FMTBIT_S16_LE,
 	},
 	/* capture capabilities */
@@ -523,7 +528,7 @@ static struct snd_soc_dai_driver sun8i_codec_dai = {
 		.stream_name = "Capture",
 		.channels_min = 1,
 		.channels_max = 2,
-		.rates = SNDRV_PCM_RATE_8000_192000,
+		.rates = SUN8I_AIF_PCM_RATES,
 		.formats = SNDRV_PCM_FMTBIT_S16_LE,
 		.sig_bits = 24,
 	},
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
