Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F343FA871E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=hWrH06FD+tPmqDKp5rd5jgs0NfMlt10MvcFRvW1OsIw=; b=Pvb
	5H0uWFEflAH4wveHgJnDvudw9G36GPG+XnTcy7JODT65aZcz2yfI/386tRWY8v37RIczJe4krcWa8
	ngDqBV8/nyD0XcuPziYHI03iSHqYHvc881IVFTvOUo/jaP/8MlltDGsJw8zz3RNSnDiNUEKY574tu
	baLMBrQohJNPy79RIJfUPzHKi+xX03HN7489LVBMl/wBiUo9/+Nv3ce+ho5b0yQcOqlc901RmNSRh
	fmAd7WlbX90Mm8N0UzmScPb9MDo9LnswmDCkbBGeDKx5+014ZgmOcPNueWx3uMSbe+1uXEMXMAYkg
	e/V6GVz3i0YHgxPlggUS3oGK4MGOz6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZTb-00016l-GI; Wed, 04 Sep 2019 17:53:51 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZTP-000168-41
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=/sL2DCmUGJPlR66hzIWdV5il3VK8mgt+9vHWqn8XlBw=; b=UtPmvZ+CWci9
 F0vyuzTNzs5PLdD0wcRP6VRCNvcwjRuEfKWSUfmTTJu88ATlVciC27f7gYmkJVl9tEnVYX310ksYA
 alKmNzuIeUwDQ+rSDXMhCPIxb/GKMrcTn6HEmluwRO5+3VT+C3rHEM7iHZ6/I8uFcrLszo3FkyCf2
 cQSH4=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5ZTC-0006h7-7t; Wed, 04 Sep 2019 17:53:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B218C2742D07; Wed,  4 Sep 2019 18:53:25 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: sirf-audio: use devm_platform_ioremap_resource() to
 simplify code" to the asoc tree
In-Reply-To: <20190904083412.18700-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190904175325.B218C2742D07@ypsilon.sirena.org.uk>
Date: Wed,  4 Sep 2019 18:53:25 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105339_161064_89D7054F 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kstewart@linuxfoundation.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tiwai@suse.com,
 yuehaibing@huawei.com, baohua@kernel.org, lgirdwood@gmail.com,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, pakki001@umn.edu, tglx@linutronix.de,
 perex@perex.cz, allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sirf-audio: use devm_platform_ioremap_resource() to simplify code

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

From 2f302d476c960fdf8481399a46b8df92408d06e2 Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Wed, 4 Sep 2019 16:34:12 +0800
Subject: [PATCH] ASoC: sirf-audio: use devm_platform_ioremap_resource() to
 simplify code

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20190904083412.18700-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/sirf-audio-codec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/sirf-audio-codec.c b/sound/soc/codecs/sirf-audio-codec.c
index 9009a7407b7a..a061d78473ac 100644
--- a/sound/soc/codecs/sirf-audio-codec.c
+++ b/sound/soc/codecs/sirf-audio-codec.c
@@ -459,7 +459,6 @@ static int sirf_audio_codec_driver_probe(struct platform_device *pdev)
 	int ret;
 	struct sirf_audio_codec *sirf_audio_codec;
 	void __iomem *base;
-	struct resource *mem_res;
 
 	sirf_audio_codec = devm_kzalloc(&pdev->dev,
 		sizeof(struct sirf_audio_codec), GFP_KERNEL);
@@ -468,8 +467,7 @@ static int sirf_audio_codec_driver_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, sirf_audio_codec);
 
-	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, mem_res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
