Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F71486F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=ld0pb2D7db/x7A6ICbwsv8EDl4V6TFoibCNZWN6WqYo=; b=sIi
	VBeps/saGzjrQhh91tImOaOeLg5df424lAJ7mu4CuyJy/LflZj7xV7YGjfL8/eHPGhE9BHfI8I8wS
	dOuXN6mc5SdXNe4nflLOwzU+SFiqIubRSrE7+zkvBF+9LwcBGffJ9UdpgpSPeDFYLmTKlW0lDwFLq
	RLjVR6TM59aQN9MsEndL6/0r3Yx3UTmfyyR2OGeL00e4NPA9fgLLX5YgEWdQdWOGX7l/dfGeiick4
	7FdrB2F7hcA04rH8pTOrLP1sGXyVgXj5K75QDqoHmX/zDkSa0RPdevD+Yv1UajBr7U71/RdsHE1rU
	AXNFQs+p1f2vbBmIuOxgEYoE4i0zlyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctV3-0000Om-Ga; Mon, 17 Jun 2019 15:24:49 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctUq-0000Nf-64; Mon, 17 Jun 2019 15:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=mXT3yitbyZnxBe2413FqA72JCo4Ve+k70RyNGsE2ah0=; b=DsEaMmLgI/f/
 RcL7eLiDgWL7syjhVaMu5DTPGgIuM30Bqne7TAym74+VahqW3HA6XWlTsbn9G+t9ilirhHOPEMPQN
 i6Ss1rbh1ee3ND8NLwEi8djYzMZ+xT225S0XkiqMhdTTaMrHjDcb67iK1DPBCBz/x0HpGeqUwJpSp
 O7O5s=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hctUl-0001zG-4M; Mon, 17 Jun 2019 15:24:31 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 93BA7440046; Mon, 17 Jun 2019 16:24:30 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Applied "ASoC: rockchip: pdm: select CONFIG_RATIONAL" to the asoc tree
In-Reply-To: <20190617110415.2084205-1-arnd@arndb.de>
X-Patchwork-Hint: ignore
Message-Id: <20190617152430.93BA7440046@finisterre.sirena.org.uk>
Date: Mon, 17 Jun 2019 16:24:30 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_082436_374438_DD17459F 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: rockchip: pdm: select CONFIG_RATIONAL

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

From 41d92e0c835bff7dec343bf41e79d24b326d94c1 Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 17 Jun 2019 13:03:51 +0200
Subject: [PATCH] ASoC: rockchip: pdm: select CONFIG_RATIONAL

Without this, we get a link error:

sound/soc/rockchip/rockchip_pdm.o: In function `rockchip_pdm_hw_params':
rockchip_pdm.c:(.text+0x754): undefined reference to `rational_best_approximation'

Fixes: 624e8e00acaf ("ASoC: rockchip: pdm: fixup pdm fractional div")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
index 957046ac6c8c..d88555e0c389 100644
--- a/sound/soc/rockchip/Kconfig
+++ b/sound/soc/rockchip/Kconfig
@@ -19,6 +19,7 @@ config SND_SOC_ROCKCHIP_PDM
 	tristate "Rockchip PDM Controller Driver"
 	depends on CLKDEV_LOOKUP && SND_SOC_ROCKCHIP
 	select SND_SOC_GENERIC_DMAENGINE_PCM
+	select RATIONAL
 	help
 	  Say Y or M if you want to add support for PDM driver for
 	  Rockchip PDM Controller. The Controller supports up to maximum of
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
