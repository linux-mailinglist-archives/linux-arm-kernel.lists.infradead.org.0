Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9E9967E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=YrmdyrgH5bNHuUKv9tR+WOUwswlD1m6HXH+ZVYDg7H8=; b=Vu1
	eHSALhrSBTn9oQAL0WZn7FS+KYV3Fjgb/YRbgXZImO2ozRVCrzreO6uYmx1Kw5Hj5PM47M4nAuCdH
	XQGmyFSnFIBPcN2CT/WCZcegnpOfljsHaBUiRmO8gln+AAYlMNcXzb4JufQ9kC0iN6hl2AB7nUipX
	7pGb7NOEo1U+oK6v3/TO+vWqWhy4UoeiUajgYWIGPGHoiwAsRitqXYSsv0QsuuVg3Y1uhmCgrUs6A
	7p9mfFudypezQ5pF+kTTO9fEbPaR4OCUrWoHtE5FTDY8KGWFnjSDPpiYTQUKjxRv16OP7CKGH3R5z
	x1I5WElrDLGs3Dpr2ZLc4/oDwT9yftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08Be-0005xP-MV; Tue, 20 Aug 2019 17:44:50 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0885-0001yW-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:16 +0000
Received: by mail-wm1-f99.google.com with SMTP id o4so3368557wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=cv4TUIOWFi+U3SKBDcKMgdYCwyfU6uWRpO1K0GUZKw4=;
 b=Y8iJjmCrjJZ7ZQ6Id5SUKXTNCai6lsKnwcnDSbIJd1TuAPFRRGcFJQdMtEuZMqg3uU
 FkDDR3RZVNsB4a5oJrdyW37+gBtD/ExXIq1fOIKo/AmljjABJd6g62yAeBdHsHHCsXqs
 P0tHXewjDJIOHw3hJX32UwkeFXa/Oj2kzID3fWle9G9JDa1VaOorvDUKrsedUa7dO8lZ
 HAkdJaCJLO9S4yoyqo/ejewmlC86IOw7JsC9YAJKdvkECAGW3JkuoLiHlzq8X5ZAMaeu
 CAP5pfqPQabCZwG4p5YN/GOnJvggFWaWyQJOaL7VcYq2Vo7NWOcs7UGisgF/EdLJv41d
 NCaw==
X-Gm-Message-State: APjAAAXWCEoH5pBXQkBmg0rcZqMVhfCQwPNovuXj7seM3JbxagKTLVPb
 weNETzf5LBiw8QUWWjTpzcqbQ0zz0x3HGOMDyIISoUeLhX3a2Fm+gMAe5NQVv7FGQw==
X-Google-Smtp-Source: APXvYqx+uYT4jx9ACy29QjlApKPxhCbQv2rES9wXuR4Nh6Dk5Vdpymoo9jTZUubbskZ+TyFuKXsASa8lpkci
X-Received: by 2002:a1c:4d0c:: with SMTP id o12mr1296350wmh.62.1566322867460; 
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id x17sm4152wmk.48.2019.08.20.10.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0883-00033C-7z; Tue, 20 Aug 2019 17:41:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A19B12742B4A; Tue, 20 Aug 2019 18:41:06 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Rework MCLK divider calculation" to the
 asoc tree
In-Reply-To: <dcc5deb2eb650758d268bddd20f60ba58856d024.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174106.A19B12742B4A@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:06 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104109_046947_92342A3E 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: Rework MCLK divider calculation

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

From 8bcf62b73e5421df94deca95d7d7c152997fe5b4 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:13 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Rework MCLK divider calculation

The MCLK divider calculation is currently computing the ideal divider using
the oversample rate, the sample rate and the parent rate.

However, since we have access to the frequency is supposed to be running at
already, and as it turns out we're using it to compute the oversample rate,
we can just use the ratio between the parent rate and the MCLK rate to
simplify a bit the formula.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/dcc5deb2eb650758d268bddd20f60ba58856d024.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 77b7b81daf74..0a5fb9d4b289 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -240,11 +240,10 @@ static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
 }
 
 static int sun4i_i2s_get_mclk_div(struct sun4i_i2s *i2s,
-				  unsigned int oversample_rate,
-				  unsigned int module_rate,
-				  unsigned int sampling_rate)
+				  unsigned long parent_rate,
+				  unsigned long mclk_rate)
 {
-	int div = module_rate / sampling_rate / oversample_rate;
+	int div = parent_rate / mclk_rate;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(sun4i_i2s_mclk_div); i++) {
@@ -323,8 +322,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	mclk_div = sun4i_i2s_get_mclk_div(i2s, oversample_rate,
-					  clk_rate, rate);
+	mclk_div = sun4i_i2s_get_mclk_div(i2s, clk_rate, i2s->mclk_freq);
 	if (mclk_div < 0) {
 		dev_err(dai->dev, "Unsupported MCLK divider: %d\n", mclk_div);
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
