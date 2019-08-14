Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA548CBA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbfCCDX76gTzkwxr4xw/mKWOex/kpsdTkXNqEjiK6Rs=; b=fA5E7/A6Clcb64
	mx+164REqDG+DgCuDo2wNbU6UApE8BqIunXstYxU8RRr2IA4WAD5bEiFYp2yALmAmqkdoep1CMRQs
	IkuXCf34t4tWWOr6w+n34SNP+jV4A7nr+5dswIY5V4L3de21W28oJfajjMCALeFVq93YGADh3g7SU
	Gmy2izazVw35gb2oqtnkld3LEq/piFeJpTZl0eOac4qsL6mdjorvsJ2IzY8vHOuq/PP0eV9r3UfGe
	lFOzNiu4tMxY3E+Jo2UID6INzPllo2/YIrN5LX0bT8R+z8jJru0aCV7Sudf2ftcR018eWZOamUP2L
	UcKb2CbW5Mq/RxPzfPyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmVS-0002l6-S9; Wed, 14 Aug 2019 06:11:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmT7-0008GH-Bt
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:11 +0000
Received: by mail-lj1-x244.google.com with SMTP id l14so1033316ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=05luO0el08+ksQzcW4RTEqUT7Ds3M01UtKJnSKZS1CI=;
 b=A+zuhJDGf+WT+Ot0CNMAkUD7+SOWysTa2Ly11PvI1hlDTVlD1HpP8d3h6wTV9G3bE8
 FLhZBNYQxeXa1j0KgS0UXPKTFBH53afq422IOj6cub+vwQBiz5FsfczsQXawQ0r4mOyn
 Da4X1NxE5bspTPUucZ5xMxUwcvvKQFi6BtGW5mDtLV91qNyZz/4yTbcdy4MpKHCXfLdZ
 Q3qldDXLiie62cym73HYA0wwyWg93sUxLaNcGumZgKqxkdj0KkIaG+uA5jgUnICzLcnV
 8GLxI+v1pSxXIGQz9ztRhoKsIOYw91FZYoXHR6F9GaiGvRAgh3U/N7VsRqti+cS904gq
 Htkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=05luO0el08+ksQzcW4RTEqUT7Ds3M01UtKJnSKZS1CI=;
 b=tD0TvEUbbWjZU48JIgbRkNHURW7wzEmJKI9yoTWJdh0zZL0+yHyMH7KUPp+88UsH/c
 hRVxozi0zwFQsLlIgrhK94Q44M1U+GDxx6cEhdT88y0tQjyByiWNa6oyj4+pYI+L2e6i
 oGjOweCU5frgH6pzJzCfvlfVTPbWYSXvseuTvy6DzGrR2IOj8j3nH6zSuJPBCjC4m+/b
 RnLJfFYK5lYLMBaptDenQ6+E9kEosBJzvl4Zks2wUCTqOunpvPnqljyWWJZ/KXrVlJQV
 czoZKhVZFot/xkgTWNejZF7+aayG9I2+0Yi2kd4EoxiX/zFRHGai+tISC7TcMsZG4VOz
 zPRg==
X-Gm-Message-State: APjAAAX1UzqwUvL1PP8qHY79akNOQRO8+Yx0zecfgsIITj0xYdnzW9fC
 9U9mM536a/tRc6liEQsqG0s=
X-Google-Smtp-Source: APXvYqwa2QE/MzggVT+SxSReZtwaVjTUt6MgdTVwN4bjTZtThH/Dm274tKDTRtDX5F1nP2l0VTh3jQ==
X-Received: by 2002:a2e:9a82:: with SMTP id p2mr24254402lji.64.1565762947367; 
 Tue, 13 Aug 2019 23:09:07 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:06 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 05/15] ASoC: sun4i-i2s: Add functions for RX and TX channel
 offsets
Date: Wed, 14 Aug 2019 08:08:44 +0200
Message-Id: <20190814060854.26345-6-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230909_879853_D0CC2CA3 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

Newer SoCs like the H6 have the channel offset bits in a different
position to what is on the H3. As we will eventually add multi-
channel support then create function calls as opposed to regmap
fields to add support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 3553c17318b0..4a748747ccd7 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -112,7 +112,7 @@
 #define SUN8I_I2S_TX_CHAN_MAP_REG	0x44
 #define SUN8I_I2S_TX_CHAN_SEL_REG	0x34
 #define SUN8I_I2S_TX_CHAN_OFFSET_MASK		GENMASK(13, 12)
-#define SUN8I_I2S_TX_CHAN_OFFSET(offset)	(offset << 12)
+#define SUN8I_I2S_TX_CHAN_OFFSET(offset)	((offset) << 12)
 #define SUN8I_I2S_TX_CHAN_EN_MASK		GENMASK(11, 4)
 #define SUN8I_I2S_TX_CHAN_EN(num_chan)		(((1 << num_chan) - 1) << 4)
 
@@ -170,6 +170,8 @@ struct sun4i_i2s_quirks {
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
 	int	(*set_format)(struct sun4i_i2s *, unsigned int);
+	void	(*set_txchanoffset)(const struct sun4i_i2s *, int);
+	void	(*set_rxchanoffset)(const struct sun4i_i2s *);
 };
 
 struct sun4i_i2s {
@@ -424,6 +426,24 @@ static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
 	return (width - 8) / 4 + 1;
 }
 
+static void sun8i_i2s_set_txchanoffset(const struct sun4i_i2s *i2s, int output)
+{
+	if (output >= 0 && output < 4) {
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
+				   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
+	}
+}
+
+static void sun8i_i2s_set_rxchanoffset(const struct sun4i_i2s *i2s)
+{
+	regmap_update_bits(i2s->regmap,
+			   SUN8I_I2S_RX_CHAN_SEL_REG,
+			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
+			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -1076,6 +1096,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_format		= sun8i_i2s_set_format,
+	.set_txchanoffset	= sun8i_i2s_set_txchanoffset,
+	.set_rxchanoffset	= sun8i_i2s_set_rxchanoffset,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
