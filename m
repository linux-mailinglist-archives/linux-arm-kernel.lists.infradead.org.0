Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F647BF86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=gLxN63bW4TEDvzW231ivw5NRYhniY+y1E7WP7Rce5LU=; b=HEy
	P1qXeoqKoN3ISsQaGBjZ6Pzv1wWsehbAgs8xMFyssmkHFzXaDzpWkg/MXjvJMjZzveU+6mWSs7Bai
	Thnj+yNoJgoydh838Lc0bVcyyGE6aG6/3nz6e+17WXu3C5JCs4FHxKbjwR8hM6YMuF3LMNiUScVYf
	6Vlu/yZeyK6qzwT8twntc/VH2SMNFQWMIK/j9VouOBWVPbOUOKgpPEoFO471ASUgBEiO5/k2JOZJI
	2V2B2JZlkMTHtkJZQH9hjOqbD+Jd0Xfc6bo041Mzs2d8JcYtQD3Z1MMHs29TVE1OjqNd/U+hFW4DC
	hPNk5zloHiW4vCTPDD0yUkA042aRxjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmpI-0003oS-3S; Wed, 31 Jul 2019 11:31:24 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmnx-0000tg-Pl
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:30:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=qVwW0pPyCeBbMZcq8baEchug6az9I8W8IrbQzrWy+Hg=; b=dK9FSytLKVuG
 5f+I87sxZk5Iq1u05g7ycSp9tQvqkl24sxzYMs9JL3Z08C+xDsnAhWv3Lm9bSkP8E3nfmOYfaP20w
 ku7RD4nTVctpsusYx+a0WXInn0RBT6rfWs9Qp8DjUudvc++s5hvWQQmk55apFtGgmEhXJmTJtRg0s
 9xl3A=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsmnp-0001q4-53; Wed, 31 Jul 2019 11:29:53 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BC2C42742C99; Wed, 31 Jul 2019 12:29:51 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Marcus Cooper <codekipper@gmail.com>
Subject: Applied "ASoC: sun4i-i2s: Incorrect SR and WSS computation" to the
 asoc tree
In-Reply-To: <20190729152130.27955-1-codekipper@gmail.com>
X-Patchwork-Hint: ignore
Message-Id: <20190731112951.BC2C42742C99@ypsilon.sirena.org.uk>
Date: Wed, 31 Jul 2019 12:29:51 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043001_898535_0C9FA26D 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi@googlegroups.com, Mark Brown <broonie@kernel.org>,
 maxime.ripard@free-electrons.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-i2s: Incorrect SR and WSS computation

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From 52f87f3ca251f5e43b42e78ab9816b2b07718bfe Mon Sep 17 00:00:00 2001
From: Marcus Cooper <codekipper@gmail.com>
Date: Mon, 29 Jul 2019 17:21:30 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Incorrect SR and WSS computation

The A64 audio codec uses the original I2S block but the SR and
WSS computation currently assigned is for the newer block.

Fixes: 619c15f7fac9 (ASoC: sun4i-i2s: Change SR and WSS computation)
Signed-off-by: Marcus Cooper <codekipper@gmail.com>
Link: https://lore.kernel.org/r/20190729152130.27955-1-codekipper@gmail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 9b2232908b65..7fa5c61169db 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1002,8 +1002,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
-	.get_sr			= sun8i_i2s_get_sr_wss,
-	.get_wss		= sun8i_i2s_get_sr_wss,
+	.get_sr			= sun4i_i2s_get_sr,
+	.get_wss		= sun4i_i2s_get_wss,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
