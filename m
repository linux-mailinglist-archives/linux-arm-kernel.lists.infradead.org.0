Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7698D967DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=m5XfafskaA5vLR1Te8KvJYytNpb3nW8sW9xg4Bnunec=; b=Ksl
	+xQqURyLYM9BPXVlNsgzHnmoOOzDkTYhrRPx14wCQBEWx0USuCDAYw/H+hR6N2rWKvYA/TEPQ0+Qc
	75PhkG0g1BwZ/y707uXyYoLAl0EMzSz4JezQwt91ja0V/SOM+IscWL5LwfkxoQl23wZW5UTntet5j
	Ftlst5gZLwClxPMicz65el0xsyvokKs/Nc8/Z+NrPOba9e+HPX/jdkU8sZysKh8PIqLvV1366EudQ
	qIG8685zXjtloIHwzIackYocokfxFEXthafd3eAJePs3GWYBwvoN8q9RHdf/d5wBnoHsRQeg2+efH
	Kq2TTKsJJ+/ucbNPC1GRXuqCL2K7f9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08A0-0003ix-CK; Tue, 20 Aug 2019 17:43:08 +0000
Received: from mail-wr1-f98.google.com ([209.85.221.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001wL-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:11 +0000
Received: by mail-wr1-f98.google.com with SMTP id t16so13258130wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=Ykr2ti2nWYJlvFYvrUQQ3egoqvPPKK3gISVOAT9VfWc=;
 b=Mmm7K4CG9UwJ7Xrau26f6sCxvRvrVOFfA0+VF03K04p4jnm3hssLtXeaRYhkYv8Z3e
 5XirzYOa8apvj1Of5K7hQGw4+XP2YHaYkXKFoSJXMhXGwcZekOILidfUX3cm1cE8+BaJ
 tmWy1GW7hgs0jmDVURXDFGSi7uAnEChSAMoQijDPB1+Je3BnM8ATbh0SS/3UV//LdoSZ
 oJBkrp9np8JLcaqc/IAbx2AbpYLa0EKKtbE+IqBLPnsyAvJE8Z8rqqJNq0XMxQE1XdyJ
 o6N9HfaQwWnrJOVX/vOlB9iE7IFUuzPJCiJW3PppfnsxOk/BcZL08l9bVFHReOh467j8
 k5kQ==
X-Gm-Message-State: APjAAAXBKYh5TF8fz2TsmNyzft+ZNjeLP4zf5fD//yywMXe+1jE84WmM
 2LdoLHDdM9vUgcqMYwa206VP2w/D2cNwxsS+hh8ZKLainvB4V19INnXo6nfYFf3oow==
X-Google-Smtp-Source: APXvYqzA28Vdw32QmqeGXTEfJeos8NeI7FDcQlTUqGBgqqFGRTO65EHp27djzALulPpHRw7nRETO0/dsnLsr
X-Received: by 2002:adf:fe12:: with SMTP id n18mr35700959wrr.105.1566322865868; 
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id h25sm2328wmb.21.2019.08.20.10.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0881-00032g-Ju; Tue, 20 Aug 2019 17:41:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id F371F2742B4A; Tue, 20 Aug 2019 18:41:04 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Fix the LRCK polarity" to the asoc tree
In-Reply-To: <e03fb6b2a916223070b9f18405b0ef117a452ff4.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174104.F371F2742B4A@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:04 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_941683_7F3DCFD8 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.98 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: Fix the LRCK polarity

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

From dd657eae8164f7e4bafe8b875031a7c6c50646a9 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:20 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Fix the LRCK polarity

The LRCK polarity "normal" polarity in the I2S/TDM specs and in the
Allwinner datasheet are not the same. In the case where the i2s controller
is being used as the LRCK master, it's pretty clear when looked at under a
scope.

Let's fix this, and add a comment to clear up as much the confusion as
possible.

Fixes: 7d2993811a1e ("ASoC: sun4i-i2s: Add support for H3")
Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/e03fb6b2a916223070b9f18405b0ef117a452ff4.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index e3eadfe38aaf..29b5eacd3abe 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -570,23 +570,29 @@ static int sun8i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
 	u32 mode, val;
 	u8 offset;
 
-	/* DAI clock polarity */
+	/*
+	 * DAI clock polarity
+	 *
+	 * The setup for LRCK contradicts the datasheet, but under a
+	 * scope it's clear that the LRCK polarity is reversed
+	 * compared to the expected polarity on the bus.
+	 */
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 	case SND_SOC_DAIFMT_IB_IF:
 		/* Invert both clocks */
-		val = SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED |
-		      SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED;
+		val = SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED;
 		break;
 	case SND_SOC_DAIFMT_IB_NF:
 		/* Invert bit clock */
-		val = SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED;
+		val = SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED |
+		      SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED;
 		break;
 	case SND_SOC_DAIFMT_NB_IF:
 		/* Invert frame clock */
-		val = SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED;
+		val = 0;
 		break;
 	case SND_SOC_DAIFMT_NB_NF:
-		val = 0;
+		val = SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED;
 		break;
 	default:
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
