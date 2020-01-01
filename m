Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120112E097
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 22:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=2ZlykUiEFHixh7LdOyrokN8yoXOqMco5b/84CCvjQ8E=; b=kro
	545QNtP8cJWNhGIoyuYCWECU76j0tmpOYuzK+FCBORu19mxbRiDtSDlpqv52rP5tVoaUXyR0B+2zG
	U/eOXYE4jyVfJZtqY4LM9LHOtW/5pa6fFT3heF4CDbc5NpiJHnqw6pWq2G2XV9N0o/bervwxeLoct
	9FxJBx/Shuo/xwCkLDmEunfWsKhhfWUM4M7/V+l3FKmH/D/JfSAqSyAtdeg1kXNMCG0AF7mp582b0
	8+5jcmY8Dfb1ttdy3PyEl/1JVqraC9TuFluTA09vTRtsmtwYXDuAfPTSpawL7d5tt0lQTezRzi3yG
	yiQqxO+YIFHNbAqm3PahqUc03xjY8zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imlkt-0006Od-Hy; Wed, 01 Jan 2020 21:42:15 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imlkn-0006O0-3s
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 21:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=79XWKkj31wGwumBYjA54s8OnuOHN68P66X/FOnDTTeE=; b=SbM53CQGUUHc
 UcUyqxGU/+zizlzxTKG5tvwBu8JOObPRQ445sBf7exavks/y+ZT8NVBRtPDWuCiaJAw7elEC3dxMz
 Czs41xLyR7ozgeZ7uLoBDKxXQqRZegGECxEzjnQT0QEV+lvS7tuTA/PZZqyzeoWWFcnR6aC5dZnDF
 hXbjE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1imlkc-0002aM-4S; Wed, 01 Jan 2020 21:41:58 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 8030DD057C6; Wed,  1 Jan 2020 21:41:57 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Subject: Applied "ASoC: SOF: imx8: use resource_size" to the asoc tree
In-Reply-To: <1577900990-8588-7-git-send-email-Julia.Lawall@inria.fr>
Message-Id: <applied-1577900990-8588-7-git-send-email-Julia.Lawall@inria.fr>
X-Patchwork-Hint: ignore
Date: Wed,  1 Jan 2020 21:41:57 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_134209_205381_BCCAF630 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Takashi Iwai <tiwai@suse.com>,
 kernel-janitors@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: SOF: imx8: use resource_size

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.6

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

From 49f261e273078a5dc0272296a833dc72571efd92 Mon Sep 17 00:00:00 2001
From: Julia Lawall <Julia.Lawall@inria.fr>
Date: Wed, 1 Jan 2020 18:49:46 +0100
Subject: [PATCH] ASoC: SOF: imx8: use resource_size

Use resource_size rather than a verbose computation on
the end and start fields.

The semantic patch that makes this change is as follows:
(http://coccinelle.lip6.fr/)

<smpl>
@@ struct resource ptr; @@
- (ptr.end - ptr.start + 1)
+ resource_size(&ptr)
</smpl>

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>
Link: https://lore.kernel.org/r/1577900990-8588-7-git-send-email-Julia.Lawall@inria.fr
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sof/imx/imx8.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index aef6ca167b9c..b2556f5e2871 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -294,8 +294,7 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 	}
 
 	sdev->bar[SOF_FW_BLK_TYPE_SRAM] = devm_ioremap_wc(sdev->dev, res.start,
-							  res.end - res.start +
-							  1);
+							  resource_size(&res));
 	if (!sdev->bar[SOF_FW_BLK_TYPE_SRAM]) {
 		dev_err(sdev->dev, "failed to ioremap mem 0x%x size 0x%x\n",
 			base, size);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
