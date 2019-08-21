Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF4D97A53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cHJ4dQEtGZfCIgex7iyFZbZlO6ke7ZErs1cHUu7Zpc=; b=HV1FB3/7K3yRte
	CQyiOLmCLJXyrMfadUOnE9Ylsckx2L3ioNRSpN9PLNJ0PcxiY8vwAxP9GuvI63zq5kfDsb/p+bhYO
	xZeKFmq5uGyqEQ7kGjjlWRYPEbxyLifcW+aiA+67ZU0Zw2TAGGTykn+uohO8tDt8NwMkCB9Bv9cni
	bTo3A2VKGXAgOOZy1fpBxhIJPbXtMs1Y/tIjzz/EYCnC2evVSgx804eUc7TDF3ymXwnay0C7OYtE2
	Bn9L/VOVgDNc71TJI/dV0B/Gyhwl9XpvtAjAHoXERYNHzYhpSCn2OlsXeBisE/qwpxCqqE7hF41MD
	cdg5L19YC5Tn3pn3xaSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QLf-0001BF-Fo; Wed, 21 Aug 2019 13:08:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QKR-0000UI-CP
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:07:08 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71E41233A2;
 Wed, 21 Aug 2019 13:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566392826;
 bh=0v32ZZ6O33elaDt+S/HSHNT2AKsZguqxcmZy9fXnA5s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gFNALjloL3/59PvwnxTEmnNmtZdMI+aNHJOg/zLFuAseYN1viWCohC8c4k1UcvlM8
 B4K897XB/EWC16jRBjilSBllM3MjSc3hqizzUCBsCbCO5LgMvlyUPC+xHMw6jMUEt+
 0Jw/qJsX9/BImCIGMXCdfgFLLNWLuN1GIE95uaIg=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v2 3/4] ASoC: sun4i-i2s: Replace call to params_width by local
 variable
Date: Wed, 21 Aug 2019 15:06:55 +0200
Message-Id: <f85a1c1e014080a4bbc3abd19bc8fdcb86f0981a.1566392800.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.6022d5fe61fb8a11565a71bee24d5280b0259c63.1566392800.git-series.maxime.ripard@bootlin.com>
References: <cover.6022d5fe61fb8a11565a71bee24d5280b0259c63.1566392800.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_060707_500360_930DD61D 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: codekipper@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The sun4i_i2s_hw_params function already has a variable holding the value
returned by params_width, so let's just use that variable instead of
calling params_width multiple times.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 9ef784b8867c..69162af9fd65 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -487,7 +487,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	}
 	i2s->playback_dma_data.addr_width = width;
 
-	sr = i2s->variant->get_sr(i2s, params_width(params));
+	sr = i2s->variant->get_sr(i2s, word_size);
 	if (sr < 0)
 		return -EINVAL;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
