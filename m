Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F85A180F71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NC0RyQP7hYoi5oyFUIhRS4/0jyYc+IGvgbzNDN8VXTQ=; b=HjfRbJliJvlQhc
	2YEUTaJ5tfgVqNrYe8wgVzDHdno7783gv85gmPs68iK10zgoQe/E+TdpeQY/UsDQcL9R+VvevBhMG
	PIOMnnr44fTcGNWTfwOjeqUKo3l6lvl80YjspPFodbkQ71f3+98mdMuDtoRrVt8/il3gLmXPOYcyR
	R1zl6+2ZoMiufiS+52TxBTaA8yRb7E3KfbjPoQ9EE26Bs7qOPf0LeNWsXVsD30OoS2HV983ooYhok
	zFvEh20aRQtSnVYMqLhuHLcMXddlBP6aMuH3ntQ2waWYDWK9xre+AQX2WJ3GOaLTtXA1PhjaH8tNJ
	r5aJh3PVRG+Z5vJreb3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtcN-0000l5-9i; Wed, 11 Mar 2020 05:09:19 +0000
Received: from smtprelay0222.hostedemail.com ([216.40.44.222]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBtaG-0007IH-9t
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:07:13 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id B96DA1802DA5B;
 Wed, 11 Mar 2020 05:07:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:967:973:982:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1541:1711:1730:1747:1777:1792:2194:2199:2393:2525:2560:2563:2682:2685:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3865:3866:3867:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6261:9025:10004:10848:11026:11473:11658:11914:12043:12297:12438:12555:12679:12895:12986:13069:13311:13357:13894:14096:14181:14384:14394:14721:21080:21433:21627:21811:21939:21987:30054:30090,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: force30_20c217ad3c02e
X-Filterd-Recvd-Size: 2686
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 11 Mar 2020 05:07:04 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Jun Nie <jun.nie@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH -next 012/491] ARM/ZTE ARCHITECTURE: Use fallthrough;
Date: Tue, 10 Mar 2020 21:51:26 -0700
Message-Id: <cb3feec0548088c3c2485965194c6fb09e7c0e3d.1583896348.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1583896344.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_220708_419783_AED8A2A1 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.222 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.222 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the various uses of fallthrough comments to fallthrough;

Done via script
Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Signed-off-by: Joe Perches <joe@perches.com>
---
 sound/soc/zte/zx-i2s.c   | 4 ++--
 sound/soc/zte/zx-spdif.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/zte/zx-i2s.c b/sound/soc/zte/zx-i2s.c
index 568cde6..1c1a44 100644
--- a/sound/soc/zte/zx-i2s.c
+++ b/sound/soc/zte/zx-i2s.c
@@ -294,7 +294,7 @@ static int zx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 			zx_i2s_rx_dma_en(zx_i2s->reg_base, true);
 		else
 			zx_i2s_tx_dma_en(zx_i2s->reg_base, true);
-	/* fall thru */
+		fallthrough;
 	case SNDRV_PCM_TRIGGER_RESUME:
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
 		if (capture)
@@ -308,7 +308,7 @@ static int zx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 			zx_i2s_rx_dma_en(zx_i2s->reg_base, false);
 		else
 			zx_i2s_tx_dma_en(zx_i2s->reg_base, false);
-	/* fall thru */
+		fallthrough;
 	case SNDRV_PCM_TRIGGER_SUSPEND:
 	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
 		if (capture)
diff --git a/sound/soc/zte/zx-spdif.c b/sound/soc/zte/zx-spdif.c
index a3a07c0..b4168bd 100644
--- a/sound/soc/zte/zx-spdif.c
+++ b/sound/soc/zte/zx-spdif.c
@@ -218,7 +218,7 @@ static int zx_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
 		val = readl_relaxed(zx_spdif->reg_base + ZX_FIFOCTRL);
 		val |= ZX_FIFOCTRL_TX_FIFO_RST;
 		writel_relaxed(val, zx_spdif->reg_base + ZX_FIFOCTRL);
-	/* fall thru */
+		fallthrough;
 	case SNDRV_PCM_TRIGGER_RESUME:
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
 		zx_spdif_cfg_tx(zx_spdif->reg_base, true);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
