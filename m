Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E9894E76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ohp/Um1wm31FUIL73EWRrQnANJI7wuVOlviDPUpMp/E=; b=QNhuT1wuiTcLYi
	yzMVMGwwDydWDrfs8UZP0qtr1upCAMvJm9R3fvM6cQ2fnP6/ShgH5VGlKgsQuepDvbXmOp/zPj/TS
	XKpi3BhYvqsxmQrpRwvlWRMMNctwy1RzcKal/54bRcVPj9xLD/1yNeXzcSTGiWOzsmZy+4iG2gZ9N
	QvcCI10fBjYnA7dT/Pwbn3rw09Oir0Yv19U4xysVfXEGKey0GKDfpV7Bf4C2fqv/9NXiNlAbgvySw
	Hrfo2Tg4d+0gGiPOK0L3T3GnNBu5Dy+K3etYH/YdQZBC8mGV55W1XVVSYJQZUV0NjiGxpGOFDVkuk
	z6pY+7PHFLFAqIK435aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznTs-0003Jl-IE; Mon, 19 Aug 2019 19:38:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznIQ-0000Zu-VN
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:26:29 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14FF4206C1;
 Mon, 19 Aug 2019 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242786;
 bh=lxoSThi24SXgg6Bi+ISpQJ6IhICcstHztsngc91tupU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jX5YpjCR6Cy5taU2uu95MCXzwXruGWw5Fg3YRi8pLtYNw8bHv3htNZ+8dlD3NSYZ/
 8mVF3pTOnIEeSdHhUy6ijh4GvuTjyCyzEWz8AcBevmuSWJ8LbjFW9HBO5FAjJs+9/b
 YTCaAM6cXrVVF1XIcSDWMwsKaXhav19FUncboFss=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH 18/21] ASoC: sun4i-i2s: Pass the channels number as an argument
Date: Mon, 19 Aug 2019 21:25:25 +0200
Message-Id: <48887cf7abfaab6597db233b24d7a088a913e48a.1566242458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122627_285380_3FEB131A 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The channels number have been hardcoded to 2 so far, while the controller
supports more than that.

Remove the instance where it has been hardcoded to compute the BCLK
divider, and pass it through as an argument to ease further support of more
channels.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 5dcbab0b4bcb..905e9bd16024 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -238,10 +238,11 @@ static unsigned long sun8i_i2s_get_bclk_parent_rate(const struct sun4i_i2s *i2s)
 static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
 				  unsigned long parent_rate,
 				  unsigned int sampling_rate,
+				  unsigned int channels,
 				  unsigned int word_size)
 {
 	const struct sun4i_i2s_clk_div *dividers = i2s->variant->bclk_dividers;
-	int div = parent_rate / sampling_rate / word_size / 2;
+	int div = parent_rate / sampling_rate / word_size / channels;
 	int i;
 
 	for (i = 0; i < i2s->variant->num_bclk_dividers; i++) {
@@ -286,6 +287,7 @@ static bool sun4i_i2s_oversample_is_valid(unsigned int oversample)
 
 static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 				  unsigned int rate,
+				  unsigned int channels,
 				  unsigned int word_size)
 {
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
@@ -333,7 +335,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 
 	bclk_parent_rate = i2s->variant->get_bclk_parent_rate(i2s);
 	bclk_div = sun4i_i2s_get_bclk_div(i2s, bclk_parent_rate,
-					  rate, word_size);
+					  rate, channels, word_size);
 	if (bclk_div < 0) {
 		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
 		return -EINVAL;
@@ -488,7 +490,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_fmt_sr, sr);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
-				      params_width(params));
+				      2, params_width(params));
 }
 
 static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
