Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE0C32CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=9kVnTfvNDaUDYU+MnxEIjHCyA4Kd8HCWZC00fm6GnA0=; b=suZ
	eWkwI8ca8PPEj+QfszRmrjTa9jXgN8FghY4SUyK+SKwqFWo5KhrN0Lw/FKZseSlAlP+gUolu8Emct
	2Ypbs3dN0F6LS+IXKQa0Qo8D3F7PeDBsFS/OKH+Bv4BAZA8U0kVk5ngBe7bfwbgJzxxxFy0uVv3Io
	nl9hOgu8fRp9am0wCsBvlCWsUKOOq60rwgaQn/npf5K4k9sc8KHsmn5KLVZSIQXW2KU27/5pGa+nH
	9rAac1aevxO9fTflCtQA8SS8VFPzlx8DJ/qnCVvI5eDmQ/9ISWDkd2Zk87REXQAzD0n0+MtFqZDSL
	jA4JfYv726K0SEYh45swGbKSIz3B3Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGY0-00004r-K8; Tue, 01 Oct 2019 11:42:28 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGWa-0007GI-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=YNsJV+ItOG8ETV3+VvS7k1U3tPURXjwDj/TDkFunmQw=; b=KnH+yQn7YDw6
 bzcw9jmdMxQbfVD0USWM9LZrhR+t7dVf8IaraVA1i5qQER8c5n559CIFq0awmSozQ9pct0LsNwo8/
 osgitovUdZxaFQbc1SbJH4RdQNsmrI3lXgaKqs3KWhBfB9FmqbkiONOxztgeiRIwU1COyvXS1s3t7
 aYccY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGWS-0004VE-4z; Tue, 01 Oct 2019 11:40:52 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9B8C62742A30; Tue,  1 Oct 2019 12:40:51 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Markus Elfring <elfring@users.sourceforge.net>
Subject: Applied "ASoC: xlnx: Use devm_platform_ioremap_resource() in
 xlnx_formatter_pcm_probe()" to the asoc tree
In-Reply-To: <8f7cf483-6ab3-d00f-5606-863e9f5b31fc@web.de>
X-Patchwork-Hint: ignore
Message-Id: <20191001114051.9B8C62742A30@ypsilon.sirena.org.uk>
Date: Tue,  1 Oct 2019 12:40:51 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044100_241856_2F084D75 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, alsa-devel@alsa-project.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 kernel-janitors@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Maruthi Srinivas Bayyavarapu <maruthi.srinivas.bayyavarapu@xilinx.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: xlnx: Use devm_platform_ioremap_resource() in xlnx_formatter_pcm_probe()

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

From 6cfb1cd60394c2d88c6868d147cf6882a9ca3b6c Mon Sep 17 00:00:00 2001
From: Markus Elfring <elfring@users.sourceforge.net>
Date: Thu, 19 Sep 2019 17:27:57 +0200
Subject: [PATCH] ASoC: xlnx: Use devm_platform_ioremap_resource() in
 xlnx_formatter_pcm_probe()

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
Link: https://lore.kernel.org/r/8f7cf483-6ab3-d00f-5606-863e9f5b31fc@web.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/xilinx/xlnx_formatter_pcm.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/sound/soc/xilinx/xlnx_formatter_pcm.c b/sound/soc/xilinx/xlnx_formatter_pcm.c
index 48970efe7838..fb652e73abeb 100644
--- a/sound/soc/xilinx/xlnx_formatter_pcm.c
+++ b/sound/soc/xilinx/xlnx_formatter_pcm.c
@@ -564,7 +564,6 @@ static int xlnx_formatter_pcm_probe(struct platform_device *pdev)
 	int ret;
 	u32 val;
 	struct xlnx_pcm_drv_data *aud_drv_data;
-	struct resource *res;
 	struct device *dev = &pdev->dev;
 
 	aud_drv_data = devm_kzalloc(dev, sizeof(*aud_drv_data), GFP_KERNEL);
@@ -584,13 +583,7 @@ static int xlnx_formatter_pcm_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		dev_err(dev, "audio formatter node:addr to resource failed\n");
-		ret = -ENXIO;
-		goto clk_err;
-	}
-	aud_drv_data->mmio = devm_ioremap_resource(dev, res);
+	aud_drv_data->mmio = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(aud_drv_data->mmio)) {
 		dev_err(dev, "audio formatter ioremap failed\n");
 		ret = PTR_ERR(aud_drv_data->mmio);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
