Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B5ED88FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8+RXzH1PaOZgkhuLkmK43ywrRPzhBWltBA6fPlNGPQ=; b=rGqS5i0Bi4pFRj
	DWHLq4z4xSuV4ud880fXw5M7iOXplPcjMQsHranZDR1SCOMPyVdvzvmesP4ewPgYPK/U4ydkzUEKC
	yXC2wQGq/h4a21IQcBnWuc5G1sj+VbqOh1+KY/zh904UGwQslGA4eRXWcdU9Dxw0GIIdsdDxTOEMk
	WfwGhKrExDe1if7NAaGvSiwpJ1cToSbSbq+q8LD7dco1FNwIlI54TKwz4DfNNFtP8YtboKzXR0xRZ
	6DhD0EstJy65Vhp/rUyLsp9wY1baLXJsAWVwsAsTpCo/yAtkyoGiYipNeNaxbAQik6VJw1BD0Qaxa
	E0LIfiI5bbeXW3JYogXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdQP-0000Z0-I4; Wed, 16 Oct 2019 07:08:49 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPP-0008KT-Tl
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:49 +0000
Received: by mail-lj1-x243.google.com with SMTP id m13so22764901ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mHYtIhe59LgkE0iURxc0+3vHk4byPJGL3D4yPD8SiX4=;
 b=TuNdLmYaPeWTQwLP1dnD3cA7caOQ67xFZrQFsZOLSt6chsyvzGxpyctNGBFc3HHnPt
 FUlUM20/hHnzwyJw1bMzCmRrrK8Sjv5iQIIlyPwssziKMiasOEltnGhPOkpZlMgDhjFa
 XunsJX+zwo9+tJKqQE9mTQ+EqoJzlZkoXY+JX+5zGhdExn4lDX7WykCX1S2baxF2F75u
 gxXf1d1e1ZbeYH1kShWAxlUgGx2Dk+RlQQIbhogCr6KuA3rUMcpTfbmHLQAt4Q2xoXKG
 vNSL9X1pRU4/tWNL1mc0hgXSGvVlAPXk0zYYju5gQTVrDWc1Ks6ehfw+TRqI+hN4S0iW
 p4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mHYtIhe59LgkE0iURxc0+3vHk4byPJGL3D4yPD8SiX4=;
 b=DdzR6jktOEp5bAH9U6qbzHquK2JaeIXknDVKSafZN7CnTH/d4CqvfwjCp8iSJDPUAF
 ZMzE9pHppeL9TOBQn7V+w61pIcATTEYLyOb/SyRYBNOdik0zLeDlQ4qWksCbFeevThs1
 eVjmoI8t8IouK/+pslc4tpSLL0grLqflH8o5Yzf67w5LX6PGj9c6JDa7RRbSWujV7BSy
 16OfOoyOUeF7SiU6KDOYiZMChxjBC3cQp8agPYUFaSdujEeRzMtp2V7W7EExvp110mdS
 uPfw3ylP7V//LQL2J0OWj8fz9+pDClD02DcQzprAz33dsN1E9K06f0nyupwFYBdZn4cv
 cEtg==
X-Gm-Message-State: APjAAAWMq8Ea61bYKABWKgaYlJzVTwzPYcdOxTSSacNwCxGddt9wfuYs
 942Io6DeX0eGmWU7BxzxvQI=
X-Google-Smtp-Source: APXvYqwfZtptI3V5Zo3A4sicYjMnE/4Cg4n106UWQ8VH2oVQUkqbEnH1ctIdHJb69OGR6hPK07D5yA==
X-Received: by 2002:a2e:8417:: with SMTP id z23mr24777343ljg.46.1571209666572; 
 Wed, 16 Oct 2019 00:07:46 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:45 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 3/7] ASoC: sun4i-i2s: Add functions for RX and TX channel
 enables
Date: Wed, 16 Oct 2019 09:07:36 +0200
Message-Id: <20191016070740.121435-4-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000747_973222_8EE1F660 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Newer SoCs like the H6 have the channel enable bits in a different
position to what is on the H3. As we will eventually add multi-
channel support then create function calls as opposed to regmap
fields to add support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 32 +++++++++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 875567881f30..8d28a386872f 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -159,6 +159,8 @@ struct sun4i_i2s_quirks {
 	int	(*set_fmt)(struct sun4i_i2s *, unsigned int);
 	void	(*set_txchanoffset)(const struct sun4i_i2s *, int);
 	void	(*set_rxchanoffset)(const struct sun4i_i2s *);
+	void	(*set_txchanen)(const struct sun4i_i2s *, int, int);
+	void	(*set_rxchanen)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -462,9 +464,7 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 			   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
 			   SUN8I_I2S_FMT0_LRCK_PERIOD(lrck_period));
 
-	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-			   SUN8I_I2S_TX_CHAN_EN_MASK,
-			   SUN8I_I2S_TX_CHAN_EN(channels));
+	i2s->variant->set_txchanen(i2s, 0, channels);
 
 	return 0;
 }
@@ -486,6 +486,24 @@ static void sun8i_i2s_set_rxchanoffset(const struct sun4i_i2s *i2s)
 			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
 }
 
+static void sun8i_i2s_set_txchanen(const struct sun4i_i2s *i2s, int output,
+				   int channel)
+{
+	if (output >= 0 && output < 4)
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN8I_I2S_TX_CHAN_EN_MASK,
+				   SUN8I_I2S_TX_CHAN_EN(channel));
+}
+
+static void sun8i_i2s_set_rxchanen(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_update_bits(i2s->regmap,
+			   SUN8I_I2S_RX_CHAN_SEL_REG,
+			   SUN8I_I2S_TX_CHAN_EN_MASK,
+			   SUN8I_I2S_TX_CHAN_EN(channel));
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -510,6 +528,12 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 		return ret;
 	}
 
+	if (i2s->variant->set_txchanen)
+		i2s->variant->set_txchanen(i2s, 0, channels);
+
+	if (i2s->variant->set_rxchanen)
+		i2s->variant->set_rxchanen(i2s, channels);
+
 	switch (params_physical_width(params)) {
 	case 16:
 		width = DMA_SLAVE_BUSWIDTH_2_BYTES;
@@ -1155,6 +1179,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.set_fmt		= sun8i_i2s_set_soc_fmt,
 	.set_txchanoffset	= sun8i_i2s_set_txchanoffset,
 	.set_rxchanoffset	= sun8i_i2s_set_rxchanoffset,
+	.set_txchanen		= sun8i_i2s_set_txchanen,
+	.set_rxchanen		= sun8i_i2s_set_rxchanen,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
