Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B57967B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=ZrqrCDVX/U+Et1da3L8gCs1guJ3cuIRJdxwsI171KzQ=; b=rPV
	ah8O61kTOoBfkUsWerpJpVfmFGGTzbumqsBc3Jq+SUmSvjI9jwCF0njTL8prejnjBSs0TZQrNFnHS
	KFBmlGctM19hP8vyxeUTmrgOIUckovmlYJLDf5c5xLAlxwXnOCVfjxVytxCwvdr0RzKHd4J9UqqXH
	1uamNdzalHV5B6nHfjquzueKsn+BPnDC/E0vrSIXjlYDM6Xh+scLyaT1tW2rZLvGF4dOttLkU7qXo
	VgXS35wRlhfBe11Le0e6Pln39uCNoHN1/Mvq9t0wsEHErtivDdV7SCATwukUI0LohjtX9oDBRG7Zk
	emrsukjyGRu2Dnh+m0mPEHN+63NjKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i088O-00027i-1l; Tue, 20 Aug 2019 17:41:28 +0000
Received: from mail-ed1-f100.google.com ([209.85.208.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001vn-Dc
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:09 +0000
Received: by mail-ed1-f100.google.com with SMTP id r12so7263288edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=6Cjn1aWqcdZkl7+dMm/bKsnvkfd0nWS0/oSgaIM7Z20=;
 b=GcJTJTFfJJ3Xi5QMtVQunlRjgLLVq5bC4J4HCqleQqx5+vQcnXlHU2Gp9v9ajlkkoU
 /+Ju3zWEUB5KVc6R9RTEGQfgYN0oePp68S8WAS61ucjEYtzv/GwXMCsRfrMYUCgPxEG9
 0xDnQ+lURU3LDS08XtViArFp8rozX7777UsPlFE60uVpszPWnGpe1hJL6Tvkh0gtr6/5
 BaCKU8Q5+FB8obToNYZ0hArIHv+oagRw3wfY8oFDA10Slv4Yx1PWHyZPgtXAVPFyVUx4
 EkikreQi6ziDZ9yk3uUtOv4WkKzXBZpFei8ys1GlDa9YtldfQeKh+5U5HP8KHmFanDN1
 oF4w==
X-Gm-Message-State: APjAAAVSXQcpNwvUCl4nSBg8kbxcQtJBi4h6IgSA3ZeZtyYLNXwdhHPT
 Tta+6taWBroa8WueAK/XxgTDYvLGuHOvhbln9p8OpTKgyEu5JHorzes8hdXN4GHlHg==
X-Google-Smtp-Source: APXvYqxGhF6vo/wtFSr8kkBUl+JAQEj4GArvjlAePwbbDhF95Bb3UIurjXaYDQui+Z1oyf2mQlSgT7de5fwy
X-Received: by 2002:a17:906:48da:: with SMTP id
 d26mr27550508ejt.106.1566322865145; 
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id r3sm294701eds.40.2019.08.20.10.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0880-00032N-QR; Tue, 20 Aug 2019 17:41:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3373B2742B4A; Tue, 20 Aug 2019 18:41:04 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Remove duplicated quirks structure" to the
 asoc tree
In-Reply-To: <5ade5de27d23918c5ef30387c23aead951d5ad64.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174104.3373B2742B4A@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:04 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_460555_544FA443 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.100 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 codekipper@gmail.com, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-i2s: Remove duplicated quirks structure

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 3e9acd7ac6933cdc20c441bbf9a38ed9e42e1490 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:24 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Remove duplicated quirks structure

The A83t and H3 have the same quirks, so it doesn't make sense to duplicate
the quirks structure.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/5ade5de27d23918c5ef30387c23aead951d5ad64.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 9468584f4eb0..4c636f1cf7dc 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1062,25 +1062,6 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.set_fmt		= sun8i_i2s_set_soc_fmt,
 };
 
-static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
-	.has_reset		= true,
-	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
-	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
-	.has_fmt_set_lrck_period = true,
-	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
-	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
-	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
-	.bclk_dividers		= sun8i_i2s_clk_div,
-	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
-	.mclk_dividers		= sun8i_i2s_clk_div,
-	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
-	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
-	.get_sr			= sun8i_i2s_get_sr_wss,
-	.get_wss		= sun8i_i2s_get_sr_wss,
-	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
-	.set_fmt		= sun8i_i2s_set_soc_fmt,
-};
-
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
@@ -1262,7 +1243,7 @@ static const struct of_device_id sun4i_i2s_match[] = {
 	},
 	{
 		.compatible = "allwinner,sun8i-h3-i2s",
-		.data = &sun8i_h3_i2s_quirks,
+		.data = &sun8i_a83t_i2s_quirks,
 	},
 	{
 		.compatible = "allwinner,sun50i-a64-codec-i2s",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
