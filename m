Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3980276570
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=8zgrFxlv6lEwlaLDc8TsIYPfc8nPh/lhrUeewdvY2jc=; b=Lis
	2Zx0YsO9xcjXdXUHnVChTak8OaVH82jq1iYGZeZaPi/ReIVJJ4z7yK6TVG8NrYQEgCI8oqiv1GfHN
	ThS3Xvdm7uQBhFw8Ib48eVJYK8mcgNDB8dp6yvmai1yROmC5plb22Wkwsk9evAMtBkgfMAT5VPldU
	+Xu07k4pb0P9jNPcbuSI1ug7hyuHID7Vcq/bx3Wik0XsuPJACsOcW5Am5vZ7j8nK9AGqjH1zaJkar
	QAfkd0mhGcS3dS/LSY0pJbZK9oQtY4HjD/YaJNIlJFS2U+IoOEFgQveOLEQ7j8j0NWtCqbmPoiBvN
	faHsrWCmCOz3a3Psv8mwx7ok78c4rJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz5m-0006i6-Si; Fri, 26 Jul 2019 12:12:59 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz5G-0006U0-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Skzanq6VQpDThygBClqVy35KX/v/j8u+eJd8QBN7EtI=; b=g2nKAPJz/rUe
 NbmXRiSttKEORjAqttEhrCUVXc34mefcepBxwvnjh6wWcsN7X8vS+1ecmVqG+Rv28qHTCYIHXhke/
 MsATFMP1URCY7Fgr0DPcrnEnpxXMw3gvDDFlus+lffwH66/Q9THj39j/tb/BJK1JggIgsy45Gq/KJ
 FJPCg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hqz58-0001Zm-4O; Fri, 26 Jul 2019 12:12:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9EDDC2742B63; Fri, 26 Jul 2019 13:12:17 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Applied "ASoC: sunxi: fix a sound binding broken reference" to the
 asoc tree
In-Reply-To: <9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20190726121217.9EDDC2742B63@ypsilon.sirena.org.uk>
Date: Fri, 26 Jul 2019 13:12:17 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_051226_066142_8E6C72B5 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "Cc:"@sirena.org.uk, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sunxi: fix a sound binding broken reference

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

From d8481155a3219ef427c6384022931758fbbe8ebe Mon Sep 17 00:00:00 2001
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Fri, 26 Jul 2019 08:47:27 -0300
Subject: [PATCH] ASoC: sunxi: fix a sound binding broken reference

Address this rename:
	Documentation/devicetree/bindings/sound/{sun4i-i2s.txt -> allwinner,sun4i-a10-i2s.yaml}

Fixes: 0a0ca8e94ca3 ("dt-bindings: sound: Convert Allwinner I2S binding to YAML")
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Link: https://lore.kernel.org/r/9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
index 2ca3d138528e..7ecf6bd60d27 100644
--- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
+++ b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
@@ -4,7 +4,7 @@ Allwinner SUN8I audio codec
 On Sun8i-A33 SoCs, the audio is separated in different parts:
 	  - A DAI driver. It uses the "sun4i-i2s" driver which is
 	  documented here:
-	  Documentation/devicetree/bindings/sound/sun4i-i2s.txt
+	  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
 	  - An analog part of the codec which is handled as PRCM registers.
 	  See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
 	  - An digital part of the codec which is documented in this current
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
