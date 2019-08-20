Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B84A967EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=PoLcv73ELva7npSSLhH4Pm53UKqZBCBTGpyJvGMe8fg=; b=dF0
	jGd78dBpi8sK+kpPffcJwdbyicEvP2NoYhjgcPy2C1HwPac6lqEZUPrYsACSYF745Faqssecunx0C
	nT88NK8XODEZHtKebBGASi66Z8m4zd5U3o6RGiGfmbi+DUv1MZt5TWIMnR0UHq9MFhFD+tYanXIOx
	z/N0TIBzuYAZhFDoVlzzrOz5Gkbb5NVX87ZjmmCU+r0AdzSrJQ/QHjsu9ua5VsXWbOvSxFK7pTzKw
	ytCVnM/XHFGrwn5M4P3+pJFYMotRhquuHW0VsU9NkMM/hNrke3hcJo14/2xeABH+F9O5N9JqYqIHa
	mI/JUiVo8jS7g2uw6ag9TuJWWT+j+7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08CB-0007VK-Ax; Tue, 20 Aug 2019 17:45:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i088D-00026n-GJ
 for linux-arm-kernel@bombadil.infradead.org; Tue, 20 Aug 2019 17:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Date:Message-Id:In-Reply-To:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/mqpDzcS3+X/d+CLoW8OHJyCRQemfYM/MA2QWwnt6tY=; b=AkC/zC7V+9wsZGn5vSfcilZtMd
 GiZp4GV0iZXfe32FYgbMEkh2gmEXdnqMGrqjDbts5PXBXS8P3kWcuWPyoKJXPjUeV673eMv25yOCn
 41lt2bGoTURfkeP+fLZTcLVqF/pfOeo3cYe97as0t+tcK8/jk+E0tnEKkDkHcgOsqhcD1W/5oE+yd
 qRWvOVyJ2DpU1wnzXMgDfVeTyb8au+8afVd0eNShK8EyisNaeHPoiBM25xq8TW9ZpiMSvsfGPlD0f
 XvG7hqwRvmZOvsCQI/wVSL0MxbFH628jxyeUh5KgkAAQ9IQuHeVjTGzYiR5SrPOK00F9HeWYLOiZK
 jqPncS9g==;
Received: from mail-ed1-f97.google.com ([209.85.208.97])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i088A-0002z4-Kv
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:15 +0000
Received: by mail-ed1-f97.google.com with SMTP id p28so7259846edi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=/mqpDzcS3+X/d+CLoW8OHJyCRQemfYM/MA2QWwnt6tY=;
 b=le+3BUpViIuXvdDef9AWokvoSU312696PrnVfjkit+gJikFHNV8zc+xkiQ8H4LLtbz
 qCHusn88sMyPQAJIdlGA76RO+bln1u4QYygIqmKoO5DDlTqaAvVDc/nv3by+bQcRi+T0
 88ilDIoyQ0CREA3GdL1cf1L462U51ZshxJYEsj/Q9hT1Q4XZbw1C2KSQmpq8uv8/9zLB
 SYOMDqveQXLB/1cnzkFa6LHoRT5h6QXbVIxauHDNYorsYEViCf7MEla3o/VXwanisdRu
 fg9wKPLss8anU9ejfsHgaS+Fe+BoPQVTKBO7xLwL5nsjD1/7vG6dLPVRwdy6R8Tj1UG0
 dZzw==
X-Gm-Message-State: APjAAAXnMkGhoiC5y3+jNpHytv371Uu7Nn7dCG1tUAn8jgQXo8ts4dMI
 d/LfcIrTcX4mTYqIwE9pj6yjFmFHQbHQQpR0o5d5kAW3QOJoH1G9woxui4TzKCF60Q==
X-Google-Smtp-Source: APXvYqw6Fl7XGGqQfeDN+eZtJ3gDBv05g3yacXEOBc4ciwS8/AVJWQS0dnujn26bMIrIPIF44RLP5sIRzaOO
X-Received: by 2002:a17:906:28ce:: with SMTP id
 p14mr27161262ejd.306.1566322868428; 
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id y41sm238580ede.25.2019.08.20.10.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0884-00033W-3j; Tue, 20 Aug 2019 17:41:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 718392742B4A; Tue, 20 Aug 2019 18:41:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Register regmap and PCM before our
 component" to the asoc tree
In-Reply-To: <67e303f37f141ef73ce9ed47d7f831b63c694424.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174107.718392742B4A@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.97 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: Register regmap and PCM before our component

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

From bf283a05c09b58db83afbb1a8a3c6a684c56c1bb Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:08 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Register regmap and PCM before our component

So far the regmap and the dmaengine PCM are registered after our component
has been, which means that our driver isn't properly initialised by then.

Let's fix that.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/67e303f37f141ef73ce9ed47d7f831b63c694424.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 7fa5c61169db..85c3b2c8cd77 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1148,11 +1148,9 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 			goto err_pm_disable;
 	}
 
-	ret = devm_snd_soc_register_component(&pdev->dev,
-					      &sun4i_i2s_component,
-					      &sun4i_i2s_dai, 1);
+	ret = sun4i_i2s_init_regmap_fields(&pdev->dev, i2s);
 	if (ret) {
-		dev_err(&pdev->dev, "Could not register DAI\n");
+		dev_err(&pdev->dev, "Could not initialise regmap fields\n");
 		goto err_suspend;
 	}
 
@@ -1162,9 +1160,11 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 		goto err_suspend;
 	}
 
-	ret = sun4i_i2s_init_regmap_fields(&pdev->dev, i2s);
+	ret = devm_snd_soc_register_component(&pdev->dev,
+					      &sun4i_i2s_component,
+					      &sun4i_i2s_dai, 1);
 	if (ret) {
-		dev_err(&pdev->dev, "Could not initialise regmap fields\n");
+		dev_err(&pdev->dev, "Could not register DAI\n");
 		goto err_suspend;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
