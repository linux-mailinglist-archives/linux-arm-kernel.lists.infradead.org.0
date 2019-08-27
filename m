Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400149F3A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 21:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=8+gByjC6/9XgKtfRjJz2ZQcFWJYgkVK6fvRpXj1TN+Y=; b=ixU
	UzjnmvYXNyJIRjAk4uKWjZz+4XmHgAYIHPYED/6oCuNMTTKRKBLsuabYw6+rRhao2GyMyEVuzuEw1
	e59lju3XdDq0hFFFztzJSp/uJ8Wf766Qt7lgZu/lXXD8Yf0E0PyCrfIthPQsCRUd+c9gGtMdVrj/M
	IbWlEEmN3Z4jt6itK1fnEn8lCTLto9gpXQIAs0dyQHxp9beRUfOg4rFDYPGQbdj4krrT4sE0BqWfJ
	Fkp17JvbIdZH7Bbv/yQ5MidYp5CEQ51sLf/T1zMNqoslCFmLzicBquoNrjqXtMBb+GX3NOSXW8VLQ
	t/32tdjdRKG0mPIjyU65Y8kiBd9y+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2hcI-0007RZ-KW; Tue, 27 Aug 2019 19:58:58 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2hbg-0006xw-Kn
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 19:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=mLwhdc61f1fsTUMVyTfwingh4QR4ollQQm6O+N5/vGA=; b=vpg+xa0BPq5J
 iUlAqSGQ2EZIXLO0NI2f0EOA7ejYzzsbW5ZQ2xC9nrSEAElRAfrqJS5TleLvriYDYXZiRomc3lvvR
 B+1tBbnr4/qx99Y4T3B5sxbytLm3Aaka2wL10WZ9u055PN2rQz9RmEdtRGh5JLUYG4WHNC+mSfhgx
 39zGA=;
Received: from 188.28.18.107.threembb.co.uk ([188.28.18.107]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i2hbb-0001Cr-QO; Tue, 27 Aug 2019 19:58:15 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 8D170D02CE8; Tue, 27 Aug 2019 20:58:14 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Applied "ASoC: imx-audmix: register the card on a proper dev" to the
 asoc tree
In-Reply-To: <1566921315-23402-1-git-send-email-shengjiu.wang@nxp.com>
X-Patchwork-Hint: ignore
Message-Id: <20190827195814.8D170D02CE8@fitzroy.sirena.org.uk>
Date: Tue, 27 Aug 2019 20:58:14 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_125820_684244_111DEDC0 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Viorel Suman <viorel.suman@nxp.com>,
 timur@kernel.org, Xiubo.Lee@gmail.com, linuxppc-dev@lists.ozlabs.org,
 s.hauer@pengutronix.de, tiwai@suse.com, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, nicoleotsuka@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, perex@perex.cz, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: imx-audmix: register the card on a proper dev

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

From 9573820eb1951e0cb0f329886abcb4153f2ea798 Mon Sep 17 00:00:00 2001
From: Shengjiu Wang <shengjiu.wang@nxp.com>
Date: Tue, 27 Aug 2019 11:55:15 -0400
Subject: [PATCH] ASoC: imx-audmix: register the card on a proper dev

This platform device is registered from "fsl_audmix", which is
its parent device. If use pdev->dev.parent for the priv->card.dev,
the value set by dev_set_drvdata in parent device will be covered
by the value in child device.

Fixes: b86ef5367761 ("ASoC: fsl: Add Audio Mixer machine driver")
Signed-off-by: Viorel Suman <viorel.suman@nxp.com>
Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Link: https://lore.kernel.org/r/1566921315-23402-1-git-send-email-shengjiu.wang@nxp.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/fsl/imx-audmix.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/fsl/imx-audmix.c b/sound/soc/fsl/imx-audmix.c
index 9e1cb18859ce..71590ca6394b 100644
--- a/sound/soc/fsl/imx-audmix.c
+++ b/sound/soc/fsl/imx-audmix.c
@@ -325,14 +325,14 @@ static int imx_audmix_probe(struct platform_device *pdev)
 	priv->card.num_configs = priv->num_dai_conf;
 	priv->card.dapm_routes = priv->dapm_routes;
 	priv->card.num_dapm_routes = priv->num_dapm_routes;
-	priv->card.dev = pdev->dev.parent;
+	priv->card.dev = &pdev->dev;
 	priv->card.owner = THIS_MODULE;
 	priv->card.name = "imx-audmix";
 
 	platform_set_drvdata(pdev, &priv->card);
 	snd_soc_card_set_drvdata(&priv->card, priv);
 
-	ret = devm_snd_soc_register_card(pdev->dev.parent, &priv->card);
+	ret = devm_snd_soc_register_card(&pdev->dev, &priv->card);
 	if (ret) {
 		dev_err(&pdev->dev, "snd_soc_register_card failed\n");
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
