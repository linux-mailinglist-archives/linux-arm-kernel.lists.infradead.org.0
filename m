Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56D412A524
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 01:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=lOxPfuvCe1h+JCgY4BRULeDftubncyRGMJU9wTwdQfk=; b=tHs
	mDV0UIQ6JTYHl44iDTtDrroFX4p67jdmYsGAX0cESJHMqWk4ynf8H8EFzG7/tcXDE64ew8xv3RzXr
	QNp4Q7ohmVXvBG7DaQgx9ooo7hd2oHvhXxX6QFaaalq5KY2YOlOnY2q1D+Soj/6M0oAbGzVi4liUb
	JsVbST2jgCcNMIUn5NdPNiZIh5OLSYKTWEj5SvYEBo/U+daRqAxCu40EOLGdZD2AwqOSaeBr6mt3d
	9BrDFnekIg8M4441fHJeQdSkkg4KbBA5quJ9Elg6y3XV0LwqMdehCFiyiODJhQ2QL1v9Yq18MbPX5
	useSi6Y8UPxc3AWOzXoJ7kHvINykIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijuG0-0006Iu-Rx; Wed, 25 Dec 2019 00:10:32 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijuEn-0004kT-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 00:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=bEZvX6CrllH0JlHEqZn5tWeyLbTXuuTkTNuWN7wm62Q=; b=PZktTYDu3E3y
 x1C1fcnOVPvjuJcW0KWfuKhwpnfEqBi5T1FkLy5PUYaty5bTUxz4BLFDfOmy2hOZvj1H3OOQwXpAo
 iyexXvFcsE9U8PWC5aK2t91qTdWPoXoSzhzCzTSwOQklGEG5Mx1QdAY+j6U08rXwy5Q3Q0cH6AdhW
 JXgVg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ijuEj-0007Mf-Qr; Wed, 25 Dec 2019 00:09:13 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 58ABCD01957; Wed, 25 Dec 2019 00:09:13 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Colin Ian King <colin.king@canonical.com>
Subject: Applied "ASoC: SOF: imx8: fix memory allocation failure check on
 priv->pd_dev" to the asoc tree
In-Reply-To: <20191204124816.1415359-1-colin.king@canonical.com>
Message-Id: <applied-20191204124816.1415359-1-colin.king@canonical.com>
X-Patchwork-Hint: ignore
Date: Wed, 25 Dec 2019 00:09:13 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_160917_956883_1E70321A 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, kernel-janitors@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: SOF: imx8: fix memory allocation failure check on priv->pd_dev

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

From 98910e1d61384430a080b4bcf986c3b0cf3fdf46 Mon Sep 17 00:00:00 2001
From: Colin Ian King <colin.king@canonical.com>
Date: Wed, 4 Dec 2019 12:48:16 +0000
Subject: [PATCH] ASoC: SOF: imx8: fix memory allocation failure check on
 priv->pd_dev

The memory allocation failure check for priv->pd_dev is incorrectly
pointer checking priv instead of priv->pd_dev. Fix this.

Addresses-Coverity: ("Logically dead code")
Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Acked-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Link: https://lore.kernel.org/r/20191204124816.1415359-1-colin.king@canonical.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sof/imx/imx8.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index cfefcfd92798..9d926b1df0d7 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -209,7 +209,7 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 
 	priv->pd_dev = devm_kmalloc_array(&pdev->dev, priv->num_domains,
 					  sizeof(*priv->pd_dev), GFP_KERNEL);
-	if (!priv)
+	if (!priv->pd_dev)
 		return -ENOMEM;
 
 	priv->link = devm_kmalloc_array(&pdev->dev, priv->num_domains,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
