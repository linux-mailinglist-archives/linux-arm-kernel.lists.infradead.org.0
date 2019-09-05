Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60874AAA2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=LwFPfmAh5U9ucNaY9cw/lR3hNPRUAiL/O+qWwal3TE4=; b=idc
	f/eqIC3q3K4Jwzpqu859GRjVBuV84OB+1wZYn1ngEW7HVdH2PyRMGnCI40xJGq5gRBYV2of8OqNVg
	QX5etJP8DkTVn/6q1IBXprBOSyMPo031rkVM193p7rJO0gDxj5txOqOYvVW+0BmnCTSMTPEbiYES7
	cQ0CNMGG8LakFtU6qdVbTgBP0oOzPk3oW5uPpJPsPBQcFO37cZwSoHdXSDpUygGj5IvoP61D2m4Nh
	WzaK8eEiP/0TTeaXxRp3pUJ/nQuYT/SP2JkZfscxB2AmGoxoc7kpwwcYWteFklMZqHWlZfJhG0i/Y
	vpYzaCe+ho6Pps+IPDT5G52J0/wWXEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vj6-0000y4-AQ; Thu, 05 Sep 2019 17:39:20 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vim-0000eE-GL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 17:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=AP3QXYgc2oODBwjsiyyDTEmHz/ojfNEQngmM1GZg4jc=; b=ZSyEwwWkzeYr
 ciXUA8MJrAoSIFRCwbqGVE9a/25h+JPRZPLQ+ADVW9nMktvi70e2pFva1ZWtmK+aXjOrstXWTAICc
 n3r/D9FuOGayRr9FafsbqFzw1g1EqHgMcBuvONYDzUxd5jZIm+n4uKI1plXOpYQFoI0pAzZtmgOnE
 6KAMQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5vie-0005Ge-5O; Thu, 05 Sep 2019 17:38:52 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3861B2742D07; Thu,  5 Sep 2019 18:38:51 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: SOF: imx8: Fix COMPILE_TEST error" to the asoc tree
In-Reply-To: <20190905064400.24800-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190905173851.3861B2742D07@ypsilon.sirena.org.uk>
Date: Thu,  5 Sep 2019 18:38:51 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_103900_558672_7E691753 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: pierre-louis.bossart@linux.intel.com, alsa-devel@alsa-project.org,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, tiwai@suse.com,
 yuehaibing@huawei.com, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org, perex@perex.cz,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: SOF: imx8: Fix COMPILE_TEST error

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

From f4df4e4042b045c6ddbaff878a17ae169fe68ba6 Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Thu, 5 Sep 2019 14:44:00 +0800
Subject: [PATCH] ASoC: SOF: imx8: Fix COMPILE_TEST error

When do compile test, if SND_SOC_SOF_OF is not set, we get:

sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_request':
imx8.c:(.text+0xb0): undefined reference to `snd_sof_ipc_msgs_rx'
sound/soc/sof/imx/imx8.o: In function `imx8_ipc_msg_data':
imx8.c:(.text+0xf4): undefined reference to `sof_mailbox_read'
sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_reply':
imx8.c:(.text+0x160): undefined reference to `sof_mailbox_read'

Make SND_SOC_SOF_IMX_TOPLEVEL always depends on SND_SOC_SOF_OF

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Link: https://lore.kernel.org/r/20190905064400.24800-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sof/imx/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index fd73d8402dbf..5acae75f5750 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -2,7 +2,8 @@
 
 config SND_SOC_SOF_IMX_TOPLEVEL
 	bool "SOF support for NXP i.MX audio DSPs"
-	depends on ARM64 && SND_SOC_SOF_OF || COMPILE_TEST
+	depends on ARM64|| COMPILE_TEST
+	depends on SND_SOC_SOF_OF
 	help
           This adds support for Sound Open Firmware for NXP i.MX platforms.
           Say Y if you have such a device.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
