Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA78011138
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=rwyTH8580CfJZICnHpH2z0HyssHajPkieg9vv2x+Kuo=; b=DKl
	PY9biwsPJ3y5u2YUu+jAoxgpjSQwthNxZ6jDzVUh2m79SCoAhSIMqDGTkfoy3EsJgghNX7+pfZJji
	V+kJ/8VHw2baX+Rf3he9vw8rPnAB8drO4UNUqHnGNBCPiUzPiqcscLdytJdSLsZHMBFg8+OlZ2BOd
	se0ikfjoiVTMj8qroKAW2AVI9chpJMW6O9unFwzzY7HD7nt/YmRq7MSWOJCiCc2KbDZT4d0QKH+VT
	LyUfhv3zkFDwaghqvBqmIkt/kdiisPaVJLrMXtYy/6iFv60vTU0ILdrJl4GoJVs8Q2knrk2tkDHaC
	V/4qBKCLz4zNgJomhFF/88gBznYoczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1Js-00050v-0g; Thu, 02 May 2019 02:19:32 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1JK-0004SS-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 02:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=oL192bTqvDNtO9/zE8dKxXdEjuXQ5GVJqZjrNkHIiv0=; b=ejSnNLhmGS24
 sls3P/G7RzMkZS565WSQhaU5mCwz0fX0bYJqSOL3FuzXHUGOvvXd3gB8S+6FJPfmPGljZXyQijMZi
 0fSH9svyRKZwmwOUqcDAgR3LJiLxwX4nXnvigGl2IRba5ZF8xBUTAbiNblCX5ZOlRwmSfbSn/XTdv
 tMC38=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1JE-0005u2-9f; Thu, 02 May 2019 02:18:52 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 6798B441D3E; Thu,  2 May 2019 03:18:49 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: Mediatek: MT8183: Fix build err while CONFIG_I2C set
 to module" to the asoc tree
In-Reply-To: <20190417152932.36436-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021849.6798B441D3E@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:18:49 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191900_059072_00FAC80D 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, tiwai@suse.com, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 Mark Brown <broonie@kernel.org>, shunli.wang@mediatek.com,
 matthias.bgg@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org,
 kaichieh.chuang@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: Mediatek: MT8183: Fix build err while CONFIG_I2C set to module

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

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

From f2a1fdb50d3187266a91bcf99b504e99695772a6 Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Wed, 17 Apr 2019 23:29:32 +0800
Subject: [PATCH] ASoC: Mediatek: MT8183: Fix build err while CONFIG_I2C set to
 module

During randconfig builds, I occasionally run into an invalid configuration

WARNING: unmet direct dependencies detected for SND_SOC_TS3A227E
  Depends on [m]: SOUND [=y] && !UML && SND [=y] && SND_SOC [=y] && I2C [=m]
  Selected by [y]:
  - SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A [=y] && SOUND [=y] && !UML && SND [=y] && SND_SOC [=y] && SND_SOC_MT8183 [=y]

sound/soc/codecs/ts3a227e.o: In function `ts3a227e_i2c_probe':
ts3a227e.c:(.text+0x684): undefined reference to `__devm_regmap_init_i2c'
sound/soc/codecs/ts3a227e.o: In function `ts3a227e_driver_init':
ts3a227e.c:(.init.text+0x18): undefined reference to `i2c_register_driver'
sound/soc/codecs/ts3a227e.o: In function `ts3a227e_driver_exit':
ts3a227e.c:(.exit.text+0x14): undefined reference to `i2c_del_driver'

This patch add I2C dependency to fix this.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: ebbddc75bbe8 ("ASoC: Mediatek: MT8183: Add machine driver with DA7219")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 874404bcccfd..f70b7109f2b6 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -118,6 +118,7 @@ config SND_SOC_MT8183
 
 config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
 	tristate "ASoC Audio driver for MT8183 with MT6358 TS3A227E MAX98357A codec"
+	depends on I2C
 	depends on SND_SOC_MT8183
 	select SND_SOC_MT6358
 	select SND_SOC_MAX98357A
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
