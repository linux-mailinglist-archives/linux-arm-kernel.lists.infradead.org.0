Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899F4967E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=3TUnevB1Ob03PZp62jQvyS/O7mqnTrlyWpkayG/vpXU=; b=ju0
	Dj/3nmmjMQIjH0pl5KqpizXreKdds1sNqVP7yB86OvOfa4cEpzUQRXVmzKWz9Mv1wrdXz8FsPCl+H
	NpcfuFEBngppZ2HlRb3LtLxEUXotQ7HC5Cj+gcicNKbPwAPYBdKglNSleU3ES0RbbzhaToIe/qBwT
	j4zUlwtwrPymXwaMcnM+ot5DZmUK93m2je0CGmpsp/wzVflTdxHhTbN6j6FzeAoPrsa+WydoW1bJq
	Yy+sFxOopie+38uljOpeopqZTgbJz8cD4vd6iGqxMrgiFUl1KH6W0FAQ1070wNz1Zkxy5t2yBeEHq
	qvhufGvpjFfNZKmKKRs87Td65/6dGXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08Bw-0006EN-VX; Tue, 20 Aug 2019 17:45:09 +0000
Received: from mail-wr1-f98.google.com ([209.85.221.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0885-0001zc-3N
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:16 +0000
Received: by mail-wr1-f98.google.com with SMTP id t16so13258233wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=/oUZyaSFvnTru9mrXf/nQ0HyOhv4Yfcc/8s9tsBFwA8=;
 b=Gi9ujmrcOxPQxDa21XFXAeKiMHdXGZamg6xigB70G2IXOSm3l4ZrILEARTa/C6J5W3
 4717M5ttdrDui3nBt0g3VX1mTqKDxeLzgwx3RzCtonPfcwKPtTy4o4b08FfS4wfshKBM
 d+HbLz0fFDhg1LNBBW3s1rttUByExnUEeZobifB8+KYJCTcZ00m66UcOImLirHV/h9MY
 Xf9/48Ph1Ta/Qu5PL6tDWlW8GtF0wQ25D47sTOpl9psy9TsEFYI6DilWTNi1RXVGn99H
 fhxLrVuXGY2kX8y+njS1h4Ef+E2nn82fiBrfQyLfqf5KmLeGLIDkkWVkp/0kHmle4bMA
 0g9A==
X-Gm-Message-State: APjAAAXlzk82A5vnrD8T2mrjJPEjNRdGF9A0EzpUqF6SejkJ1ljSMZUV
 d9dwATttCaSbwFav84Al8o5ZWn4hoP/efeIR9DOK6Dme9/C3ULMPOy/D+WJBakZXyw==
X-Google-Smtp-Source: APXvYqwbv2bKM1rrIA+jKyCyDKah2dpXSy5LRhlLaJMLEG6Vxf3igLhSeBTEMkKCmbkcbCpVmYaYhNTJ5hT5
X-Received: by 2002:a5d:528a:: with SMTP id c10mr34277580wrv.111.1566322868042; 
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id y17sm353193wrs.53.2019.08.20.10.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0883-00033O-PC; Tue, 20 Aug 2019 17:41:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 407F2274314F; Tue, 20 Aug 2019 18:41:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Switch to devm for PCM register" to the
 asoc tree
In-Reply-To: <606d271187091e858e8c15e20555af0b79798fe1.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174107.407F2274314F@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104109_147340_2E5EF38C 
X-CRM114-Status: GOOD (  16.37  )
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

   ASoC: sun4i-i2s: Switch to devm for PCM register

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

From a49d24e7d8d4fd4edf59e6373983e0bf4a2cca15 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:09 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Switch to devm for PCM register

Since the introduction of the driver, a new managed helper for the
dmaengine PCM registration has been created. Let's use it to simplify a bit
our probe and remove functions.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/606d271187091e858e8c15e20555af0b79798fe1.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index d97d694c48df..70608fa30bf2 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1154,7 +1154,7 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 		goto err_suspend;
 	}
 
-	ret = snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
+	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register PCM\n");
 		goto err_suspend;
@@ -1183,8 +1183,6 @@ static int sun4i_i2s_remove(struct platform_device *pdev)
 {
 	struct sun4i_i2s *i2s = dev_get_drvdata(&pdev->dev);
 
-	snd_dmaengine_pcm_unregister(&pdev->dev);
-
 	pm_runtime_disable(&pdev->dev);
 	if (!pm_runtime_status_suspended(&pdev->dev))
 		sun4i_i2s_runtime_suspend(&pdev->dev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
