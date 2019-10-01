Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97770C32CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=/P8rlvuujKDL8yE4jIQ7V0tuW0J31s8ZEsCQfiyHjfQ=; b=Czc
	yHEaWo+L8hOMxDHGmnPrmuBnvDs2Ccuxu0k3fqpZgpjPIQ3T5zzKRvEhmPTI7thdvXoXqDGt6YX/D
	00FpTmal1JOs3/KKEw0QTfk1Dmeh/gYZXRN7ox8doS3miJCv2VXQyM9qbrKNUJ1kcgY3OSwA5/zQP
	DaDeVKfaADisLclHsJ6TgfRqiewgxW41IMgO1xXgirvInPpXsl3STF1slXELIEUD7O6L6RrJd2fS6
	d55l/OeVAGzyww9ubGaO5inhX+3Oj9nv7ACIIPG4z5GC8ehN12NarCtunqOFmQz4ZjH4Gn/iL36S2
	0vDbxc7bYOjFiWDeD7JTFzR8CQFA1BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGXW-000819-Sf; Tue, 01 Oct 2019 11:41:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGWV-0007AG-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=wF9PhMGH+Lj8JE4h4I6EzLCX3sM3u3HxgVYZ38hhRes=; b=uba1xh6IxCh3
 mNCRfDNXG4p3kkva09171A1GXfohYxq+9sSRvGfn+542pH8dR2h9H0hjiJN07JU0+1aK/H5eihoAh
 aFQ7plk/mdhJk498J3sKpffCyYW0lx1XBGMIoyJHDoSSZWj7xhdl5tQuE+Chw1kHVHSnMhh6GO9Yj
 sXO4s=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGWR-0004Ur-Ew; Tue, 01 Oct 2019 11:40:51 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DE1BD2742A30; Tue,  1 Oct 2019 12:40:50 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Applied "ASoC: wm8994: Add support for setting MCLK clock rate" to
 the asoc tree
In-Reply-To: <20190920130218.32690-4-s.nawrocki@samsung.com>
X-Patchwork-Hint: ignore
Message-Id: <20191001114050.DE1BD2742A30@ypsilon.sirena.org.uk>
Date: Tue,  1 Oct 2019 12:40:50 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044055_314635_114E22E5 
X-CRM114-Status: GOOD (  17.64  )
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

   ASoC: wm8994: Add support for setting MCLK clock rate

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

From 419e2f50833661cec15200d5ee7385daee733667 Mon Sep 17 00:00:00 2001
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Date: Fri, 20 Sep 2019 15:02:12 +0200
Subject: [PATCH] ASoC: wm8994: Add support for setting MCLK clock rate

Extend the set_sysclk() handler so we also set frequency of the MCLK1,
MCLK2 clocks through clk API when those clocks are specified in DT.

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Link: https://lore.kernel.org/r/20190920130218.32690-4-s.nawrocki@samsung.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/wm8994.c | 48 +++++++++++++++++++++++++++++++++++----
 sound/soc/codecs/wm8994.h | 10 +++++++-
 2 files changed, 52 insertions(+), 6 deletions(-)

diff --git a/sound/soc/codecs/wm8994.c b/sound/soc/codecs/wm8994.c
index c3d06e8bc54f..35fbaa0138bf 100644
--- a/sound/soc/codecs/wm8994.c
+++ b/sound/soc/codecs/wm8994.c
@@ -167,12 +167,12 @@ static int configure_aif_clock(struct snd_soc_component *component, int aif)
 
 	switch (wm8994->sysclk[aif]) {
 	case WM8994_SYSCLK_MCLK1:
-		rate = wm8994->mclk[0];
+		rate = wm8994->mclk_rate[0];
 		break;
 
 	case WM8994_SYSCLK_MCLK2:
 		reg1 |= 0x8;
-		rate = wm8994->mclk[1];
+		rate = wm8994->mclk_rate[1];
 		break;
 
 	case WM8994_SYSCLK_FLL1:
@@ -2367,12 +2367,29 @@ static int wm8994_set_fll(struct snd_soc_dai *dai, int id, int src,
 	return _wm8994_set_fll(dai->component, id, src, freq_in, freq_out);
 }
 
+static int wm8994_set_mclk_rate(struct wm8994_priv *wm8994, unsigned int id,
+				unsigned int *freq)
+{
+	int ret;
+
+	if (!wm8994->mclk[id].clk || *freq == wm8994->mclk_rate[id])
+		return 0;
+
+	ret = clk_set_rate(wm8994->mclk[id].clk, *freq);
+	if (ret < 0)
+		return ret;
+
+	*freq = clk_get_rate(wm8994->mclk[id].clk);
+
+	return 0;
+}
+
 static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 		int clk_id, unsigned int freq, int dir)
 {
 	struct snd_soc_component *component = dai->component;
 	struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
-	int i;
+	int ret, i;
 
 	switch (dai->id) {
 	case 1:
@@ -2387,7 +2404,12 @@ static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 	switch (clk_id) {
 	case WM8994_SYSCLK_MCLK1:
 		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK1;
-		wm8994->mclk[0] = freq;
+
+		ret = wm8994_set_mclk_rate(wm8994, dai->id - 1, &freq);
+		if (ret < 0)
+			return ret;
+
+		wm8994->mclk_rate[0] = freq;
 		dev_dbg(dai->dev, "AIF%d using MCLK1 at %uHz\n",
 			dai->id, freq);
 		break;
@@ -2395,7 +2417,12 @@ static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 	case WM8994_SYSCLK_MCLK2:
 		/* TODO: Set GPIO AF */
 		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK2;
-		wm8994->mclk[1] = freq;
+
+		ret = wm8994_set_mclk_rate(wm8994, dai->id - 1, &freq);
+		if (ret < 0)
+			return ret;
+
+		wm8994->mclk_rate[1] = freq;
 		dev_dbg(dai->dev, "AIF%d using MCLK2 at %uHz\n",
 			dai->id, freq);
 		break;
@@ -4447,6 +4474,7 @@ static const struct snd_soc_component_driver soc_component_dev_wm8994 = {
 static int wm8994_probe(struct platform_device *pdev)
 {
 	struct wm8994_priv *wm8994;
+	int ret;
 
 	wm8994 = devm_kzalloc(&pdev->dev, sizeof(struct wm8994_priv),
 			      GFP_KERNEL);
@@ -4458,6 +4486,16 @@ static int wm8994_probe(struct platform_device *pdev)
 
 	wm8994->wm8994 = dev_get_drvdata(pdev->dev.parent);
 
+	wm8994->mclk[WM8994_MCLK1].id = "MCLK1";
+	wm8994->mclk[WM8994_MCLK2].id = "MCLK2";
+
+	ret = devm_clk_bulk_get_optional(pdev->dev.parent, ARRAY_SIZE(wm8994->mclk),
+					 wm8994->mclk);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to get clocks: %d\n", ret);
+		return ret;
+	}
+
 	pm_runtime_enable(&pdev->dev);
 	pm_runtime_idle(&pdev->dev);
 
diff --git a/sound/soc/codecs/wm8994.h b/sound/soc/codecs/wm8994.h
index 1d6f2abe1c11..41c4b126114d 100644
--- a/sound/soc/codecs/wm8994.h
+++ b/sound/soc/codecs/wm8994.h
@@ -6,6 +6,7 @@
 #ifndef _WM8994_H
 #define _WM8994_H
 
+#include <linux/clk.h>
 #include <sound/soc.h>
 #include <linux/firmware.h>
 #include <linux/completion.h>
@@ -14,6 +15,12 @@
 
 #include "wm_hubs.h"
 
+enum {
+	WM8994_MCLK1,
+	WM8994_MCLK2,
+	WM8994_NUM_MCLK
+};
+
 /* Sources for AIF1/2 SYSCLK - use with set_dai_sysclk() */
 #define WM8994_SYSCLK_MCLK1 1
 #define WM8994_SYSCLK_MCLK2 2
@@ -73,9 +80,10 @@ struct wm8994;
 struct wm8994_priv {
 	struct wm_hubs_data hubs;
 	struct wm8994 *wm8994;
+	struct clk_bulk_data mclk[WM8994_NUM_MCLK];
 	int sysclk[2];
 	int sysclk_rate[2];
-	int mclk[2];
+	int mclk_rate[2];
 	int aifclk[2];
 	int aifdiv[2];
 	int channels[2];
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
