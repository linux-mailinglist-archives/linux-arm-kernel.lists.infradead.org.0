Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A168CBA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ce+HvO9dwKa0NSp+1raZUoQ0oB4TKevrjj3auFhC4RY=; b=Y324B54R6NKk/c
	Wv8IKWnCIiEsXZITW1y4lbrUL5oUNN52IXHq8Rq4wV1l77/T5TmQxvM3ZGl50HrCh1y9a2eA3hSjV
	WwZM3cuo7QJlQ29KNI/1yg5KHJrVig0IThOaAy4vcLnMZjIs9c+ZVgylXCJ0tQKzC2kJYsmQCP5GE
	+J6Jm3CilRUzFpaZHYYNHizTN4Fcm0xU0VFwwZwa48//rdkCHJFkZmYlAVXwjVWwa91y/T06XOX77
	w2wIqMH7OMJsZ828B45PX6jddDul/lx5TdFVuix3pSXpXBX7fcP9iCVAo1d/yWV2wTULlYr/iWUv/
	EK7E6rxkO+4MXvYRW8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmVk-0002z5-NE; Wed, 14 Aug 2019 06:11:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmT8-0008H3-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id e24so7006345ljg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fh22f/sTchPjHgsscoNm3Ov1bjJw2jPP3PY0mrbK/90=;
 b=K2du8sAU2z3W3uufkIcrgtTZxjcma1Gieyp9EV2QFl9U42Xqw0u2uS39AeJOuFIsfc
 3DHN6emglW3b8O0/qx3XjIqOBLWkyMuPguunOKVSXXdtGn3ntouqsHoNIcNpfYHkYsNL
 0S2NxdFod014L3/FTFuE6NdNxntM2J4md4waTLq9ttHELJDrXeahUseG1iEp7+5tgyHd
 LsOeFDBDrPyKJKS8fs8XIvMqBBzZ8t9X/H3h7FxGvGXRGIKx7f1WmF8HCacLVx4v2Ydi
 h7NhthOb94+GEy0y5xQC3v6oj0v4OM5PwPzWmUspU9sgwMneZrNXStf3zlp/4omyY5u/
 A8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fh22f/sTchPjHgsscoNm3Ov1bjJw2jPP3PY0mrbK/90=;
 b=TfMvNawfKOIJqb/vhfgSl1SgkkXZ5YI0L+SAP4aMBSGYwlahJiqXZREFia47HHQnWS
 hUiHxFwqQoTERsdusZAyks/KZLT8DYDj+lvRrdAFwTs1BLbJuPe7qkun5KsWnQUypH8q
 bPNnaTOGJLpnAaFkHcLzxjXDFzIDWPbTEnlDwmBYTK7AYvxuYy4Jax4ayX6WGJ7CaxYZ
 BuTQBCpjoWiNjEWg81/PZArhMo2MD0ESCL2ABmDPlnXLAG5eKmwVVGFnrpoYVYnTtpvn
 0iA6n4x1FUiCCyKkj4DRcpSeJHR/8QYnN8BxEzAGzXhPdE/iGjI6b1W0mrHqeD+mtX/b
 MBRw==
X-Gm-Message-State: APjAAAWmWvZtzmWQEem6r/cRU4rhy5obYpQBXNEeSsiS5K7s47bcJA9M
 hsC8ai8PMx7DD3EizhLkOf4=
X-Google-Smtp-Source: APXvYqyPsxE4hTdhuVvAeZeeXMwMOSa2Ky6foSm54t8aKY0myZ8PEB3c9JWJ4q5Pz8BQl/NoSc417Q==
X-Received: by 2002:a2e:9b83:: with SMTP id z3mr22840869lji.84.1565762948784; 
 Tue, 13 Aug 2019 23:09:08 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:08 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 06/15] ASoC: sun4i-i2s: Add functions for RX and TX channel
 enables
Date: Wed, 14 Aug 2019 08:08:45 +0200
Message-Id: <20190814060854.26345-7-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230911_003366_DD93CD75 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

Newer SoCs like the H6 have the channel enable bits in a different
position to what is on the H3. As we will eventually add multi-
channel support then create function calls as opposed to regmap
fields to add support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 32 ++++++++++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 4a748747ccd7..ad2ff83deeb7 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -172,6 +172,8 @@ struct sun4i_i2s_quirks {
 	int	(*set_format)(struct sun4i_i2s *, unsigned int);
 	void	(*set_txchanoffset)(const struct sun4i_i2s *, int);
 	void	(*set_rxchanoffset)(const struct sun4i_i2s *);
+	void	(*set_txchanen)(const struct sun4i_i2s *, int, int);
+	void	(*set_rxchanen)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -444,6 +446,25 @@ static void sun8i_i2s_set_rxchanoffset(const struct sun4i_i2s *i2s)
 			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
 }
 
+static void sun8i_i2s_set_txchanen(const struct sun4i_i2s *i2s, int output,
+				   int channel)
+{
+	if (output >= 0 && output < 4) {
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN8I_I2S_TX_CHAN_EN_MASK,
+				   SUN8I_I2S_TX_CHAN_EN(channel));
+	}
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
@@ -479,10 +500,11 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_rxchansel,
 			   SUN4I_I2S_CHAN_SEL(params_channels(params)));
 
-	if (i2s->variant->has_chsel_tx_chen)
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-				   SUN8I_I2S_TX_CHAN_EN_MASK,
-				   SUN8I_I2S_TX_CHAN_EN(channels));
+	if (i2s->variant->set_txchanen)
+		i2s->variant->set_txchanen(i2s, 0, channels);
+
+	if (i2s->variant->set_rxchanen)
+		i2s->variant->set_rxchanen(i2s, channels);
 
 	switch (params_physical_width(params)) {
 	case 16:
@@ -1098,6 +1120,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.set_format		= sun8i_i2s_set_format,
 	.set_txchanoffset	= sun8i_i2s_set_txchanoffset,
 	.set_rxchanoffset	= sun8i_i2s_set_rxchanoffset,
+	.set_txchanen		= sun8i_i2s_set_txchanen,
+	.set_rxchanen		= sun8i_i2s_set_rxchanen,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
