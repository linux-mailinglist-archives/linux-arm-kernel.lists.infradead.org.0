Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120BBD88FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7OCyhPrryHAYgIJ7sWL5w/PUGm+Cvtrbfr3YwsC4Lc=; b=uC6n9oCwGCIMyP
	/HUJzkgxwcVrY3ttlKrDCwDtoJ+29HavNJ01Z7wYIQW87789SEnK3t7+bhPQioYbBxFe3+O/M8TOf
	CwyZ2EfeT0o4vSRu5hVb454LZKKyRe7VgHOSB2dNKWJnfFlYrAb5Nf/X2yHgy3UUupIh8SkhcVYgb
	7xvXcLtxnF9VYEg6K9mJadvNhzPo2e4GcwN9Oyfhv9OAwx5VelCA22kMd29pNw208jKbUPTlgq/Kj
	UZp8TjTMvf4RFv+fomWsroBeK59ZvMnfBi+Xm7dANNOFahvJInSN8LKkb+zPLuU8fNKqGUwoi09ax
	5X/klC/Ldk+evsdjNjwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdQf-0000o7-Qg; Wed, 16 Oct 2019 07:09:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPU-0008PY-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id c195so16504187lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FfnwO8vvijCwZxuUL06QD5Tx1fxFqAFTG2kXsJEWJMY=;
 b=P7jKcqJWpHrW1gaub0fSy2vbAtI/feqgoOpswUlXO9Je+VTo59n3zc/RFhfKNPOHYo
 X5RCZt1cS1NVGjTKtTS5zTsXPdX2MFhM5jti2LrRKX0HtZjSy6X89TEvTCgHOH6dZApV
 JhSyjrS8Jv3ik/H7deMyV9fRxuNoNZdx8yPbx2I5BvIs5Y1NXhK115S8cbJvzlW7wgwr
 m7YhX1l8TsMUm9UfJOnlonv/WJ92jOmqjnwJc2+N757v9eYaQ0dXoLImO+zfrilQHiuR
 3zAm4rCjVZcgWEW0V4HPRLXhOKetlFT2zdktVefFU2P696B8kikobkWenLpt4C8fmDap
 BJcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FfnwO8vvijCwZxuUL06QD5Tx1fxFqAFTG2kXsJEWJMY=;
 b=mFUHRUdBtnesdTULP8hak/UNyOYXUBoTiph6MupXZlj+BVJYvEciAXzRm5vqRReHI3
 qc57QPV16VwEUR3qCwZRwQhmuphpL8a6AQDdOlnvQ7nJ+/U5FBivZWNU07y5onyJtfaT
 6ObTLojqR8G7NBIoKHg6P5nJ0/fkgaZw2BDcovyKP17UgsVYQiaHnr5RRAoVox1YfA+Z
 47S6+MFS9TNxjM7SpjiAlAqbtJc2g9JBNfLqbTqTMloKzX8zN5mg4CBw+zn1oRDuagVd
 aevKcU+F6CzSlXFjj0+rs7mgYJRLvFI0jY6j4rxC+OtqjPYB4T/elU6N6FFMb2DaEO9T
 /YRA==
X-Gm-Message-State: APjAAAWRvmOZAwEFK2Exz0b/0GUPT7J0BwV8t/in18+Ddpb8axKSaZGt
 D7QCRnZFocioSu6fvbR5Zuw=
X-Google-Smtp-Source: APXvYqz5kC5mHtEuZCkmB220wctQYP7NsY41HDsa9pdKX2nuuRVHlx3tF9FC50FqXmDOK4Pu2/vSxg==
X-Received: by 2002:a05:6512:403:: with SMTP id
 u3mr11797775lfk.135.1571209669188; 
 Wed, 16 Oct 2019 00:07:49 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:48 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 5/7] ASoC: sun4i-i2s: Add functions for RX and TX channel
 mapping
Date: Wed, 16 Oct 2019 09:07:38 +0200
Message-Id: <20191016070740.121435-6-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000753_079401_F75781DB 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

As we will eventually add multi-channel audio support to the i2s
then create function calls as opposed to regmap fields to add
support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 45 +++++++++++++++++++++++++++++++++----
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 19988d61a085..63ae9da180f2 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -165,6 +165,8 @@ struct sun4i_i2s_quirks {
 	void	(*set_rxchanen)(const struct sun4i_i2s *, int);
 	void	(*set_txchansel)(const struct sun4i_i2s *, int, int);
 	void	(*set_rxchansel)(const struct sun4i_i2s *, int);
+	void	(*set_txchanmap)(const struct sun4i_i2s *, int, int);
+	void	(*set_rxchanmap)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -405,8 +407,8 @@ static int sun4i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 	unsigned int channels = params_channels(params);
 
 	/* Map the channels for playback and capture */
-	regmap_write(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, 0x76543210);
-	regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, 0x00003210);
+	i2s->variant->set_txchanmap(i2s, 0, 0x76543210);
+	i2s->variant->set_rxchanmap(i2s, 0x00003210);
 
 	/* Configure the channels */
 	i2s->variant->set_txchansel(i2s, 0, channels);
@@ -426,8 +428,8 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 		slots = i2s->slots;
 
 	/* Map the channels for playback and capture */
-	regmap_write(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
-	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, 0x76543210);
+	i2s->variant->set_txchanmap(i2s, 0, 0x76543210);
+	i2s->variant->set_rxchanmap(i2s, 0x00003210);
 
 	/* Configure the channels */
 	i2s->variant->set_txchansel(i2s, 0, channels);
@@ -534,6 +536,31 @@ static void sun8i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
 			   SUN8I_I2S_TX_CHAN_SEL(channel));
 }
 
+static void sun4i_i2s_set_txchanmap(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	if (output == 0)
+		regmap_write(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, channel);
+}
+
+static void sun8i_i2s_set_txchanmap(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	if (output >= 0 && output < 4)
+		regmap_write(i2s->regmap,
+			     SUN8I_I2S_TX_CHAN_MAP_REG + (output * 4), channel);
+}
+
+static void sun4i_i2s_set_rxchanmap(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, channel);
+}
+
+static void sun8i_i2s_set_rxchanmap(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, channel);
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -1154,6 +1181,8 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -1174,6 +1203,8 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 /*
@@ -1199,6 +1230,8 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -1223,6 +1256,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.set_rxchanen		= sun8i_i2s_set_rxchanen,
 	.set_txchansel		= sun8i_i2s_set_txchansel,
 	.set_rxchansel		= sun8i_i2s_set_rxchansel,
+	.set_txchanmap		= sun8i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun8i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -1243,6 +1278,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
