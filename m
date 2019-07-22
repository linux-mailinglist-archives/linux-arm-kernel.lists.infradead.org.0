Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E184A6FF85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 14:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=vuJ0gWTXh7dwfqOnStGH2anL847VOQA142Y9npgMmQg=; b=WYT
	EyCfDbmICBqOFLx3AX3JWXjoPtmqUevBds9l6Q5cwWureUxjjf3rZIDd48sJNNHZ6ENhMNxAQToXE
	NPcuaM+DXe4RrFiJPRHSgss+JEnJjN6D3TOtIn0+8vIb+SPDaNezWNz3EgCDtv41FB4H1tKzCkcjc
	CJwRyYGdS6Bevkg2/KzFIrDQytfXbxAg326+4WJ25mwPE7X33BkvAulhLJCrttsHtLqd1JchHO37e
	y9WRLyCwcbt4FnF2fc91yBrFfAPKC5ZcYXZaLjUhAGJP+g3Sb7rKP/So7od1bPaA0ODu3Zz60IGDT
	MFSMSJ9m9wPvXnT+to4ZmvK57LcFuSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpXMp-0006bn-Hk; Mon, 22 Jul 2019 12:24:35 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpXKa-0005ky-8i; Mon, 22 Jul 2019 12:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=IALTeLniVATet6Lo8hMBMp8eFWvstEO5L1iPMadI4Tk=; b=uHeYMiMOAL7x
 Vx6NS/y1Z7uUpYvC2KBO8HfZsE+HyS5/QaIGoT36h/ES2qZ4Uu76r+iYF4OGI0AZvMztU9JEP2v7q
 cDylvYUgmYFAby3kpjY103b4j/F1q2g4cSBS47Jvy/MEHAnPZNtGbzdRzGAfH0ly1bRoV3QiySGUU
 Zga+I=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hpXKT-0007dC-72; Mon, 22 Jul 2019 12:22:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 845DB2740463; Mon, 22 Jul 2019 13:22:08 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Applied "sound: soc: codecs: mt6358: change return type of
 mt6358_codec_init_reg" to the asoc tree
In-Reply-To: <20190709182543.GA6611@hari-Inspiron-1545>
X-Patchwork-Hint: ignore
Message-Id: <20190722122208.845DB2740463@ypsilon.sirena.org.uk>
Date: Mon, 22 Jul 2019 13:22:08 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_052216_320975_043E0329 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Tzung-Bi Shih <tzungbi@google.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Shunli Wang <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   sound: soc: codecs: mt6358: change return type of mt6358_codec_init_reg

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

From 1d3dd532883be6167da5df6117efd6d4e8790456 Mon Sep 17 00:00:00 2001
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Date: Tue, 9 Jul 2019 23:55:43 +0530
Subject: [PATCH] sound: soc: codecs: mt6358: change return type of
 mt6358_codec_init_reg

As mt6358_codec_init_reg function always returns 0 , change return type
from int to void.

fixes below issue reported by coccicheck
sound/soc/codecs/mt6358.c:2260:5-8: Unneeded variable: "ret". Return "0"
on line 2289

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Acked-by: Tzung-Bi Shih <tzungbi@google.com>
Link: https://lore.kernel.org/r/20190709182543.GA6611@hari-Inspiron-1545
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/mt6358.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/sound/soc/codecs/mt6358.c b/sound/soc/codecs/mt6358.c
index 50b3fc5457ea..c17250aab2d0 100644
--- a/sound/soc/codecs/mt6358.c
+++ b/sound/soc/codecs/mt6358.c
@@ -2255,10 +2255,8 @@ static struct snd_soc_dai_driver mt6358_dai_driver[] = {
 	},
 };
 
-static int mt6358_codec_init_reg(struct mt6358_priv *priv)
+static void mt6358_codec_init_reg(struct mt6358_priv *priv)
 {
-	int ret = 0;
-
 	/* Disable HeadphoneL/HeadphoneR short circuit protection */
 	regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
 			   RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT,
@@ -2285,8 +2283,6 @@ static int mt6358_codec_init_reg(struct mt6358_priv *priv)
 	/* set gpio */
 	playback_gpio_reset(priv);
 	capture_gpio_reset(priv);
-
-	return ret;
 }
 
 static int mt6358_codec_probe(struct snd_soc_component *cmpnt)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
