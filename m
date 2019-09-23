Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834FDBBDCF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=ywQg4PhwXKSoAZT3dbyBHMyxPcYtBlEI3rH4MzS/vs4=; b=rWj
	RVqYq0+F9f2UNuaYNao7jdJCSprv/0miFliN+BNeCCinap9vOIGW3E2Zl7hsw8VUL59Bfa+p+HBH3
	4w2ImMGNYAeZEVMVEF1eLG5AX3/0UdQZE/Gj3d9enhMflJYvBvQe5oesBIrJswSUHHj6CDxRgglzX
	b3BguUgzFlKMQ+ys7BrhhJv6cnl3UPUi0DdcfQEX9M/JwMV7go7yNFhCsQaBGPH2Vd9Ks1zwgeaUv
	WgN23Y1CcxenNRblCpfWmEtUsMnIFUWwU2DlFLzTZNblcT1+sVnl0GXQsN5oE3mauh3Ua71x4vu/V
	FZ1aLf6ZusREmZGGCLaGyPiZtKa0ZEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVnv-0000VD-Tc; Mon, 23 Sep 2019 21:23:32 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVnW-0000Gn-6j
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Z30npgjJlfsX3pcTiPkG0AL67G6fDNe+i+Vmfku2RTI=; b=SN5JixZECNnp
 KI8DVqCg95UnVrrspPqxew/gm2Ds+7MkbiFVeEkA990dDCSvzz/HQdHcvCjubGAziBfYZBbdot4Aq
 DQJPbZjeHIP1DI0Gy0/+B+okYNLR5xGb/L8GwJ3mqqRttUAUz/tSA40HF2h7omqp83kRK6I4TU2GZ
 j1LH0=;
Received: from [12.157.10.114] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iCVnR-0005WT-3u; Mon, 23 Sep 2019 21:23:01 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 7F00DD02FE4; Mon, 23 Sep 2019 22:22:59 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Applied "ASoC: samsung: arndale: Add missing OF node dereferencing"
 to the asoc tree
In-Reply-To: <20190920130218.32690-3-s.nawrocki@samsung.com>
X-Patchwork-Hint: ignore
Message-Id: <20190923212259.7F00DD02FE4@fitzroy.sirena.org.uk>
Date: Mon, 23 Sep 2019 22:22:59 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_142306_240681_B0438406 
X-CRM114-Status: GOOD (  15.75  )
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, Krzysztof Kozlowski <krzk@kernel.org>, robh+dt@kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: samsung: arndale: Add missing OF node dereferencing

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

From fb629fa2587d0c150792d87e3053664bfc8dc78c Mon Sep 17 00:00:00 2001
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Date: Fri, 20 Sep 2019 15:02:11 +0200
Subject: [PATCH] ASoC: samsung: arndale: Add missing OF node dereferencing

Ensure there is no OF node references kept when the driver
is removed/unbound.

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Link: https://lore.kernel.org/r/20190920130218.32690-3-s.nawrocki@samsung.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/samsung/arndale_rt5631.c | 34 ++++++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
index c213913eb984..fd8c6642fb0d 100644
--- a/sound/soc/samsung/arndale_rt5631.c
+++ b/sound/soc/samsung/arndale_rt5631.c
@@ -5,6 +5,7 @@
 //  Author: Claude <claude@insginal.co.kr>
 
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/clk.h>
 
@@ -74,6 +75,17 @@ static struct snd_soc_card arndale_rt5631 = {
 	.num_links = ARRAY_SIZE(arndale_rt5631_dai),
 };
 
+static void arndale_put_of_nodes(struct snd_soc_card *card)
+{
+	struct snd_soc_dai_link *dai_link;
+	int i;
+
+	for_each_card_prelinks(card, i, dai_link) {
+		of_node_put(dai_link->cpus->of_node);
+		of_node_put(dai_link->codecs->of_node);
+	}
+}
+
 static int arndale_audio_probe(struct platform_device *pdev)
 {
 	int n, ret;
@@ -103,18 +115,31 @@ static int arndale_audio_probe(struct platform_device *pdev)
 		if (!arndale_rt5631_dai[0].codecs->of_node) {
 			dev_err(&pdev->dev,
 			"Property 'samsung,audio-codec' missing or invalid\n");
-			return -EINVAL;
+			ret = -EINVAL;
+			goto err_put_of_nodes;
 		}
 	}
 
 	ret = devm_snd_soc_register_card(card->dev, card);
+	if (ret) {
+		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
+		goto err_put_of_nodes;
+	}
+	return 0;
 
-	if (ret)
-		dev_err(&pdev->dev, "snd_soc_register_card() failed:%d\n", ret);
-
+err_put_of_nodes:
+	arndale_put_of_nodes(card);
 	return ret;
 }
 
+static int arndale_audio_remove(struct platform_device *pdev)
+{
+	struct snd_soc_card *card = platform_get_drvdata(pdev);
+
+	arndale_put_of_nodes(card);
+	return 0;
+}
+
 static const struct of_device_id samsung_arndale_rt5631_of_match[] __maybe_unused = {
 	{ .compatible = "samsung,arndale-rt5631", },
 	{ .compatible = "samsung,arndale-alc5631", },
@@ -129,6 +154,7 @@ static struct platform_driver arndale_audio_driver = {
 		.of_match_table = of_match_ptr(samsung_arndale_rt5631_of_match),
 	},
 	.probe = arndale_audio_probe,
+	.remove = arndale_audio_remove,
 };
 
 module_platform_driver(arndale_audio_driver);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
