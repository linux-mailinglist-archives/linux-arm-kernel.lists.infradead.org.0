Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA94E22DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 20:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Cf53J/nqVCH69ftWMSLzCbZulDyyEjnKs+oukzFY1A0=; b=EpM
	mKzMMA+1feqZNJu1vO06IctKaYwrqIvyo8opCyXMO/MSelza2sWBlFBsN9r09ZEJaFplBJdBzjajK
	FRbAL8bfjHnaW78kXVVGpivpxEuyVeDLqOvoDiblGlwNkfSsH5qGhUufTwSoFDnQgL5sSicrLgZOE
	UlMrqPXy5RWUXWQ4OAwsOrZxMc5HPSi9+lfZCMWYHmBGwWE74+mESPLwM9QPLf0EgyL/atVEkGME+
	8yNShXyqiu3WlfctMQjzn+nLfnXN/M+9Wsf4jTVM+aQAkzD8+Trq99E7IzjTr7GDbSHQVDvieeoO0
	HN4xHjMBrMB30RIMN+iEssmhEYOpDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNLo1-0008Qs-IF; Wed, 23 Oct 2019 18:56:25 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNLns-0008Po-Ht; Wed, 23 Oct 2019 18:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=k/lGzSE95qaQc9LVPN5qXwbt/UcIqtdwXTpshhYt58w=; b=rmUuRnN1eEog
 /IbKf5Uzgyosjs0QBqetAmV5uIX+mWYy6Y238FHhDe2cIEeBASvQXVB/9cXbEBvmVx484sVjOufpb
 wGOuttvp2WFb3qqQpQZGBM/yw8VH0WGJynKmdREz5nRIqjJmYN98KjQWdKJAwe/3R4TPAXcAKared
 9UijM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNLni-0001Ax-PV; Wed, 23 Oct 2019 18:56:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3A39E2743293; Wed, 23 Oct 2019 19:56:06 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Mao Wenan <maowenan@huawei.com>
Subject: Applied "ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency" to
 the asoc tree
In-Reply-To: <20191023063103.44941-1-maowenan@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20191023185606.3A39E2743293@ypsilon.sirena.org.uk>
Date: Wed, 23 Oct 2019 19:56:06 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_115616_594970_2F2F619F 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, yuehaibing@huawei.com,
 gregkh@linuxfoundation.org, tiwai@suse.com, kernel-janitors@vger.kernel.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, tzungbi@google.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 shunli.wang@mediatek.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org,
 kaichieh.chuang@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

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

From ef5dee551e3e6568fb203ea57fa24f55cb64d451 Mon Sep 17 00:00:00 2001
From: Mao Wenan <maowenan@huawei.com>
Date: Wed, 23 Oct 2019 14:31:03 +0800
Subject: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency

If SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A=y,
below errors can be seen:
sound/soc/codecs/cros_ec_codec.o: In function `send_ec_host_command':
cros_ec_codec.c:(.text+0x534): undefined reference to `cros_ec_cmd_xfer_status'
cros_ec_codec.c:(.text+0x101c): undefined reference to `cros_ec_get_host_event'

This is because it will select SND_SOC_CROS_EC_CODEC
after commit 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV"),
but SND_SOC_CROS_EC_CODEC depends on CROS_EC.

Fixes: 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV")
Signed-off-by: Mao Wenan <maowenan@huawei.com>
Link: https://lore.kernel.org/r/20191023063103.44941-1-maowenan@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 8b29f3979899..a656d2014127 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -125,7 +125,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
 	select SND_SOC_MAX98357A
 	select SND_SOC_BT_SCO
 	select SND_SOC_TS3A227E
-	select SND_SOC_CROS_EC_CODEC
+	select SND_SOC_CROS_EC_CODEC if CROS_EC
 	help
 	  This adds ASoC driver for Mediatek MT8183 boards
 	  with the MT6358 TS3A227E MAX98357A audio codec.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
