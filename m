Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C593790127
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=zMdnzxycne10YzDYxJJxrrmimqB28HfwX/PKKSS0fw8=; b=F68
	VA3iheHTX2OW1Q4npA7hD0jJxEp+DAcoBF+0/TujTqT92G9+dr7gKXp0EzqBZlebblPEcvbcVxlPE
	nWC+Cqdm+cBuLP3RQGKGEafqVeGyuzz4AY2nBfzgYxyetoZmFE8OAoc35YJJmVz5n0BEx97awu9wY
	im01qnig4EwtyQCV9gFk0Ua3BZidH5Q+5F1Onw+1bpWbH1+APKdW6TPZhOJaApEzpUhwCkZDIzFHB
	OnTLigxBYR/mBP5WgswqOgGOZkGVosYtrep5gcHivLTXozfbHkFDcZfWU6mSSiLLB+6v5VuG/CvfT
	D87ZTbvM2sIyQ3nZfMW2F6tAWd4mO8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyb8Q-0000Nm-8E; Fri, 16 Aug 2019 12:15:10 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyb8B-0000N9-LU
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:14:57 +0000
Received: by mail-wm1-f99.google.com with SMTP id 207so3878175wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 05:14:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=pLS4DxT1dPkt+ilKsw/CiwD4KIIKskFjBYK+1KbWdsE=;
 b=BDSHIHdfvDCTGS/YYhTFAspyHw9o90Wy1jeANez1OBv8Tv1I70kAKe/BGDc7pFu/BA
 n6m4tic6TNNbFDLmleDvrUjTR6Agafvjbq6S0Q/UMSKgLgNVy6WZDxnJagGgZUZF1N0C
 XSVQcNJILPvtVLBE6TGngjHI/bEk98zeRwzNGwWTq3QIyf8hPmeA70CFYxdmKMO+HlMN
 luo/xiypsgSFMnbGWEm/HQnsKuAGJsnPbvZ1aVGxisnRsreztup2zGfXpsbuUQqS+J6v
 c1d3tX4boXD0IsvacJbyPEbYDu6H6Xx1LwLkK38/zcHL4xtA/0qo88mpvzHy9xgaIe+Y
 DTig==
X-Gm-Message-State: APjAAAXPykGA2Gu9h44jZhOWbeHSpTXNJHMrGEsCDCeHMEoM+Vh9xkTw
 I0Aj/5H0PuLSQpkNJ9U/QA6yI91SQcioGCdooCMXCN3GK1qv8c6WXrqVNe/qECgH+w==
X-Google-Smtp-Source: APXvYqySVq6C/xknyvsxzKlqH7UE+qi1NJxPkT+wedb/ovVs8FyUI5SRHDjge/ud7Koip4TsqGPgyJPtw6LB
X-Received: by 2002:a1c:cfc6:: with SMTP id f189mr6938434wmg.18.1565957694085; 
 Fri, 16 Aug 2019 05:14:54 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id d8sm90830wro.28.2019.08.16.05.14.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 05:14:54 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyb89-0003L6-Nv; Fri, 16 Aug 2019 12:14:53 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 184B12743134; Fri, 16 Aug 2019 13:14:53 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Applied "ASoC: imx-audmux: Add driver suspend and resume to support
 MEGA Fast" to the asoc tree
In-Reply-To: <1565931794-7218-1-git-send-email-shengjiu.wang@nxp.com>
X-Patchwork-Hint: ignore
Message-Id: <20190816121453.184B12743134@ypsilon.sirena.org.uk>
Date: Fri, 16 Aug 2019 13:14:53 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_051455_709533_9E192B0B 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, timur@kernel.org, Xiubo.Lee@gmail.com,
 linuxppc-dev@lists.ozlabs.org, s.hauer@pengutronix.de, tiwai@suse.com,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, nicoleotsuka@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, perex@perex.cz, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: imx-audmux: Add driver suspend and resume to support MEGA Fast

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

From 8661ab5b23d6d30d8687fc05bc1dba8f9a64b444 Mon Sep 17 00:00:00 2001
From: Shengjiu Wang <shengjiu.wang@nxp.com>
Date: Fri, 16 Aug 2019 01:03:14 -0400
Subject: [PATCH] ASoC: imx-audmux: Add driver suspend and resume to support
 MEGA Fast

For i.MX6 SoloX, there is a mode of the SoC to shutdown all power
source of modules during system suspend and resume procedure.
Thus, AUDMUX needs to save all the values of registers before the
system suspend and restore them after the system resume.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Link: https://lore.kernel.org/r/1565931794-7218-1-git-send-email-shengjiu.wang@nxp.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/fsl/imx-audmux.c | 54 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/sound/soc/fsl/imx-audmux.c b/sound/soc/fsl/imx-audmux.c
index b2351cd33b0f..16ede3b5cb32 100644
--- a/sound/soc/fsl/imx-audmux.c
+++ b/sound/soc/fsl/imx-audmux.c
@@ -23,6 +23,8 @@
 
 static struct clk *audmux_clk;
 static void __iomem *audmux_base;
+static u32 *regcache;
+static u32 reg_max;
 
 #define IMX_AUDMUX_V2_PTCR(x)		((x) * 8)
 #define IMX_AUDMUX_V2_PDCR(x)		((x) * 8 + 4)
@@ -317,8 +319,23 @@ static int imx_audmux_probe(struct platform_device *pdev)
 	if (of_id)
 		pdev->id_entry = of_id->data;
 	audmux_type = pdev->id_entry->driver_data;
-	if (audmux_type == IMX31_AUDMUX)
+
+	switch (audmux_type) {
+	case IMX31_AUDMUX:
 		audmux_debugfs_init();
+		reg_max = 14;
+		break;
+	case IMX21_AUDMUX:
+		reg_max = 6;
+		break;
+	default:
+		dev_err(&pdev->dev, "unsupported version!\n");
+		return -EINVAL;
+	}
+
+	regcache = devm_kzalloc(&pdev->dev, sizeof(u32) * reg_max, GFP_KERNEL);
+	if (!regcache)
+		return -ENOMEM;
 
 	if (of_id)
 		imx_audmux_parse_dt_defaults(pdev, pdev->dev.of_node);
@@ -334,12 +351,47 @@ static int imx_audmux_remove(struct platform_device *pdev)
 	return 0;
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int imx_audmux_suspend(struct device *dev)
+{
+	int i;
+
+	clk_prepare_enable(audmux_clk);
+
+	for (i = 0; i < reg_max; i++)
+		regcache[i] = readl(audmux_base + i * 4);
+
+	clk_disable_unprepare(audmux_clk);
+
+	return 0;
+}
+
+static int imx_audmux_resume(struct device *dev)
+{
+	int i;
+
+	clk_prepare_enable(audmux_clk);
+
+	for (i = 0; i < reg_max; i++)
+		writel(regcache[i], audmux_base + i * 4);
+
+	clk_disable_unprepare(audmux_clk);
+
+	return 0;
+}
+#endif /* CONFIG_PM_SLEEP */
+
+static const struct dev_pm_ops imx_audmux_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(imx_audmux_suspend, imx_audmux_resume)
+};
+
 static struct platform_driver imx_audmux_driver = {
 	.probe		= imx_audmux_probe,
 	.remove		= imx_audmux_remove,
 	.id_table	= imx_audmux_ids,
 	.driver	= {
 		.name	= DRIVER_NAME,
+		.pm = &imx_audmux_pm,
 		.of_match_table = imx_audmux_dt_ids,
 	}
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
