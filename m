Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E85E7424
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=NparJXbyInPFuhKWTj5NODVG9QROI5abvkXNpG+Qylc=; b=QLB
	NHrZJdiCRBvnOGNph6IelBR16nb4ZMc/7LXCIgs1LNh1puF4XOgl958wvonkuzonQZa4mPmTQMGsr
	Jo+jnWeEU9hZ/baNU4CSn81H8/k1KnLWDV7BFNR3oI3yRZN0EP1rWAtdZPP1bVwVsk77C3jeaTXNO
	G2uNjRCcVa3qTF4YLIjDib/Annc5e+IS8vQlY0s7fAXDQpV3adlIOkgL0KSUUrMh/N8lcp/baSzay
	8tW5roBUnZygrZYvbDdzvmynsYCRqM04zjuwbuAs06RNNUfN4viKEoXHD11eDNb2zsBbxqVCRuFQm
	imAdo7ETnOypNrKTFNfrrn1FowTBjjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6SO-0001jv-LX; Mon, 28 Oct 2019 14:57:20 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6Rt-0001N0-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=pRAnZ2eosKV/53G9bqUjly+zJvMmzCGpbgurzDJUuFc=; b=ji8GRUakC0x3
 My3BXG8nqht1NWURYP4Hl6TLrXwU+YQJQtG1BZ97HpUaz0DgR5UWjv9SY44Yy/KwuFpDAejKo3hHh
 2130boS1xvfTbbKSPf/G1NXAijvKgw2nBNq0W+VUokakasfTmtqnI6lDnbLH6PMpRjyuNcgU3nNcv
 rz4rM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iP6Ri-0008Rf-UG; Mon, 28 Oct 2019 14:56:39 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5632E2740B7F; Mon, 28 Oct 2019 14:56:37 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: sunxi: sun4i-codec: remove unneeded semicolon" to the
 asoc tree
In-Reply-To: <20191025120801.16236-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20191028145637.5632E2740B7F@ypsilon.sirena.org.uk>
Date: Mon, 28 Oct 2019 14:56:37 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_075649_995369_4C225612 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: alsa-devel@alsa-project.org, kuninori.morimoto.gx@renesas.com,
 dannym@scratchpost.org, tiwai@suse.com, yuehaibing@huawei.com,
 lgirdwood@gmail.com, mripard@kernel.org, linux-kernel@vger.kernel.org,
 georgii.staroselskii@emlid.com, wens@csie.org, Mark Brown <broonie@kernel.org>,
 tglx@linutronix.de, perex@perex.cz, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sunxi: sun4i-codec: remove unneeded semicolon

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

From 24d05966b560b88d37d90e64f018af2fed888104 Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Fri, 25 Oct 2019 20:08:01 +0800
Subject: [PATCH] ASoC: sunxi: sun4i-codec: remove unneeded semicolon

remove unneeded semicolon.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20191025120801.16236-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-codec.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
index ee448d5e07a6..34f3e0be3058 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1442,7 +1442,7 @@ static struct snd_soc_card *sun8i_a23_codec_create_card(struct device *dev)
 	if (!aux_dev.dlc.of_node) {
 		dev_err(dev, "Can't find analog controls for codec.\n");
 		return ERR_PTR(-EINVAL);
-	};
+	}
 
 	card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 	if (!card->dai_link)
@@ -1480,7 +1480,7 @@ static struct snd_soc_card *sun8i_h3_codec_create_card(struct device *dev)
 	if (!aux_dev.dlc.of_node) {
 		dev_err(dev, "Can't find analog controls for codec.\n");
 		return ERR_PTR(-EINVAL);
-	};
+	}
 
 	card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 	if (!card->dai_link)
@@ -1518,7 +1518,7 @@ static struct snd_soc_card *sun8i_v3s_codec_create_card(struct device *dev)
 	if (!aux_dev.dlc.of_node) {
 		dev_err(dev, "Can't find analog controls for codec.\n");
 		return ERR_PTR(-EINVAL);
-	};
+	}
 
 	card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 	if (!card->dai_link)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
