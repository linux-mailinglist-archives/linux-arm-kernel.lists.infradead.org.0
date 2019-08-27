Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19BB9DC2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 05:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2E/9BWVAqmhY6B+e2dfuMT48x7dy1tEk6mf/JEzJTsE=; b=Qfk
	+RwwrmDJ636HmaAYDFkjxhJk+gwy3sXbYlWnw1hQ+o9AOj+htPZM9mY+VytVquvxLuhLs0prUz/l/
	qGBD90iHtVgVzsm3Y1bg97CRksZmvHb6TABZV+k86n3lvFgaPP6/dlEz5caPkBN+w/Tx5rxDvDtT0
	hMOTgX6n+sZUAheAYfSWIYKRZwc6Tou9HutEZ9ZvQwIJerT/KG+byhha/PCS4TCqENv+CKOn1i1N9
	7bTv59zi/buaa9vRcRlbtntpmbPvflbsIeUo0OoSdNZCOd6A391UjV3zNxGMSQm5FxbSJeEeIfy8g
	aMtw1jf1/hYp+5eyGKfB0GoBDQStBpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Sb4-0007cf-7J; Tue, 27 Aug 2019 03:56:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Sau-0007Wz-0w
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 03:56:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A8CA41A05A0;
 Tue, 27 Aug 2019 05:56:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8DA431A009E;
 Tue, 27 Aug 2019 05:56:19 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 92751402A5;
 Tue, 27 Aug 2019 11:56:09 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: timur@kernel.org, nicoleotsuka@gmail.com, Xiubo.Lee@gmail.com,
 festevam@gmail.com, broonie@kernel.org, lgirdwood@gmail.com,
 perex@perex.cz, tiwai@suse.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, alsa-devel@alsa-project.org,
 viorel.suman@nxp.com
Subject: [PATCH] ASoC: imx-audmix: register the card on a proper dev
Date: Tue, 27 Aug 2019 11:55:15 -0400
Message-Id: <1566921315-23402-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_205632_214402_2E1F3B9B 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This platform device is registered from "fsl_audmix", which is
its parent device. If use pdev->dev.parent for the priv->card.dev,
the value set by dev_set_drvdata in parent device will be covered
by the value in child device.

Fixes: b86ef5367761 ("ASoC: fsl: Add Audio Mixer machine driver")
Signed-off-by: Viorel Suman <viorel.suman@nxp.com>
Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
