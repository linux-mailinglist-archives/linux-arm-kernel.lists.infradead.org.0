Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A123CC219
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=8Q/V9c5eFq5OvSGQ+xmQgFLIs7A6L0MVm9PYQUJao0c=; b=Zj4
	3C3jYNLCSx9uYxwK3ioh/MWFQ1kNqA7MhTI1rI4I2/SSDGEWvudbI8tMBofbzvQAvIY48iIowXqdM
	ezFzQgwXrVxQCm+kW32ZycbvsTtjwanNZ2kEpbm29scrXl6be25i9GzM8cVCMH/USL3kv0DHIaGn/
	blbdhDNvdShGGBWc2Lg48q2757UUqF0MCMes4WWlz/XRtlZOpNGuhx56nH6MLs+1Vll6MubpdpYtF
	R1JGVvaxdOllCQ+J0DKbV2pSdHGm3NXYcA5JpHTHT3Iq7+tY5hmPY7T+pVZLtEzKBfpAttetV1xGY
	d9im0j4oN+CrccsJsmEfxcfjEPz87Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRlF-0005Bf-5T; Fri, 04 Oct 2019 17:53:01 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRkw-00057q-17; Fri, 04 Oct 2019 17:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=/tVPZenYEEvKXdV0H0rtDml9JDehxDB1KYdDNZdz9Gs=; b=A/efAStVmGes
 N7QaUZoz9lOew9PUrjMART1+Yl7PLXIHavgkzsw8c6ERp/n2niBgG+bcfdakdNvVoIWUdXdJWbSaY
 aKUrJLBglIzmH3mxhP0TTlXIScO3xzxpHgGR7yNWtNpGG9HqcA1h/Otf1gBVzVoDyBKQBGalVKsvK
 ZTkCY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iGRkq-0003vE-Fz; Fri, 04 Oct 2019 17:52:36 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 060992741EF0; Fri,  4 Oct 2019 18:52:35 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Applied "ASoc: rockchip: i2s: Fix RPM imbalance" to the asoc tree
In-Reply-To: <bcb12a849a05437fb18372bc7536c649b94bdf07.1570029862.git.robin.murphy@arm.com>
X-Patchwork-Hint: ignore
Message-Id: <20191004175236.060992741EF0@ypsilon.sirena.org.uk>
Date: Fri,  4 Oct 2019 18:52:35 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_105242_187163_126A527F 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, heiko@sntech.de, tiwai@suse.com,
 lgirdwood@gmail.com, perex@perex.cz, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoc: rockchip: i2s: Fix RPM imbalance

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

From b1e620e7d32f5aad5353cc3cfc13ed99fea65d3a Mon Sep 17 00:00:00 2001
From: Robin Murphy <robin.murphy@arm.com>
Date: Wed, 2 Oct 2019 16:30:37 +0100
Subject: [PATCH] ASoc: rockchip: i2s: Fix RPM imbalance

If rockchip_pcm_platform_register() fails, e.g. upon deferring to wait
for an absent DMA channel, we return without disabling RPM, which makes
subsequent re-probe attempts scream with errors about the unbalanced
enable. Don't do that.

Fixes: ebb75c0bdba2 ("ASoC: rockchip: i2s: Adjust devm usage")
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Link: https://lore.kernel.org/r/bcb12a849a05437fb18372bc7536c649b94bdf07.1570029862.git.robin.murphy@arm.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index af2d5a6124c8..61c984f10d8e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -677,7 +677,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	ret = rockchip_pcm_platform_register(&pdev->dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register PCM\n");
-		return ret;
+		goto err_suspend;
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
