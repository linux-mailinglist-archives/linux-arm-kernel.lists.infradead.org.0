Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDC697A50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiZq6E2d9GyrgegSEna/nvxTNAG2Ily6aVroPzVnHII=; b=Svu9uF4Gy8CuAJ
	Q1CcBODav4jfuq+R5BcFBzxp19FElioSAjUzWF0JysS1sqzUPXDHhYEejEW4F7l1L8kjXNHBUgHSP
	s/5VXnjKFizQ0W9H1JHCTOnLtPRmbu1laNuVq5IUTl3uI31MWmXCAQmhXmKF3QmgOPc0ro56V45AR
	HOyywqw4s39yQNPn60MyUOcGMxMN/oFMFouQFyB39Cf7XWR03oudFCwobMxIUD22x1jS0OTyX5hmp
	pcSIIzmB7017bMhaVJF6pZFnlorTV0ImM7lvElqUEM0CC6ALwOlGaiL17qBAO/BwWCQJPosaMlkln
	qGWlhACvgshpiy2l2h+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QKy-0000fV-5D; Wed, 21 Aug 2019 13:07:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QKM-0000R8-79
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:07:03 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71B30233A1;
 Wed, 21 Aug 2019 13:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566392821;
 bh=BBzaWBopHO0dXbT/Y5GDnPjB6CfdvBFxbOeeyx6S4ZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GGA0PFtgjnfGGkKB0QnGIWKutIGHg+UW6n7Vpy7rybyGge9TyUJLVB1C5MJtMvxNc
 1qx/u+NBFt6FzGOLWRVYI5CMxt0kXOlmc0Uf0iEeI7dhY08FJu82fEekiiwoJ8hhWV
 B+Nlxkgtsz4JHwE4tdXDl3Reob+rWtS/l3ibNxzw=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v2 1/4] ASoC: sun4i-i2s: Use the physical / slot width for the
 clocks
Date: Wed, 21 Aug 2019 15:06:53 +0200
Message-Id: <41a359d9885f397e066816961e5e3236afcbe0a1.1566392800.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.6022d5fe61fb8a11565a71bee24d5280b0259c63.1566392800.git-series.maxime.ripard@bootlin.com>
References: <cover.6022d5fe61fb8a11565a71bee24d5280b0259c63.1566392800.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_060702_311542_4EE0DA5B 
X-CRM114-Status: GOOD (  15.36  )
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

The clock dividers function has been using the word size to compute the
clock rate at which it's supposed to be running, but the proper formula
would be to use the physical width and / or slot width in TDM.

It doesn't make any difference at the moment since all the formats
supported have the same sample width and physical width, but it's not going
to last forever.

Fixes: 7d2993811a1e ("ASoC: sun4i-i2s: Add support for H3")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 8326b8cfa569..cdc3fa60ff33 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -290,7 +290,7 @@ static bool sun4i_i2s_oversample_is_valid(unsigned int oversample)
 static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 				  unsigned int rate,
 				  unsigned int slots,
-				  unsigned int word_size)
+				  unsigned int slot_width)
 {
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 	unsigned int oversample_rate, clk_rate, bclk_parent_rate;
@@ -337,7 +337,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 
 	bclk_parent_rate = i2s->variant->get_bclk_parent_rate(i2s);
 	bclk_div = sun4i_i2s_get_bclk_div(i2s, bclk_parent_rate,
-					  rate, slots, word_size);
+					  rate, slots, slot_width);
 	if (bclk_div < 0) {
 		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
 		return -EINVAL;
@@ -458,6 +458,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 {
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 	unsigned int word_size = params_width(params);
+	unsigned int slot_width = params_physical_width(params);
 	unsigned int channels = params_channels(params);
 	unsigned int slots = channels;
 	int ret, sr, wss;
@@ -467,7 +468,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 		slots = i2s->slots;
 
 	if (i2s->slot_width)
-		word_size = i2s->slot_width;
+		slot_width = i2s->slot_width;
 
 	ret = i2s->variant->set_chan_cfg(i2s, params);
 	if (ret < 0) {
@@ -490,14 +491,15 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	if (sr < 0)
 		return -EINVAL;
 
-	wss = i2s->variant->get_wss(i2s, word_size);
+	wss = i2s->variant->get_wss(i2s, slot_width);
 	if (wss < 0)
 		return -EINVAL;
 
 	regmap_field_write(i2s->field_fmt_wss, wss);
 	regmap_field_write(i2s->field_fmt_sr, sr);
 
-	return sun4i_i2s_set_clk_rate(dai, params_rate(params), slots, word_size);
+	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
+				      slots, slot_width);
 }
 
 static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
