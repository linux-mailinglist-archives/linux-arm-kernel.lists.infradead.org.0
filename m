Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5DE8CBBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/gGtI7uDNvtnDFieCu59fIAVLoAlZeEHPTCM7RgN+4=; b=K3RHHvhxWotOSt
	qusU6mLYcp46ZhThr8cEhrzA/53pUCthW5/Z9lOzSbJ/GOpCWD5OU2yJDpv/nhNEkVqZmhezYr9qu
	1pNTkEGvdqhta7H0EvNOMKyYx1KfJ5fnhPj4a9uFOnfrnHwPjfaUP3mEGoI0ZOso4ClAf2dS0EOCg
	C7jcSvBOQ+0SKyC5ATTgjSMFrPVZDjh5EMbCyfg2RAOurVFjIMQHdLRuMULdyW9u6ogWeQDbLP2oG
	6ILjEzmPQtmjPr81UQ4Emn6X5YkN11y4p8jPCSx2y/v370k1dtrNDl58Sk3kNcAcWgL7jkUCS1AAt
	7XywiQTod5rEAE7eWZWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmXr-000507-Rj; Wed, 14 Aug 2019 06:14:04 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmTH-0008Ng-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so24448776lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cgF+iQ71N63fzGiwQW4cF1hqYUHS6u6C/HWG5UzaxPs=;
 b=f/JFLeR3DcJywbYWdN8lm2tKUulDCXEf9JpBXBUBrF041WiZSdgsyB4Wi9PMvDUjX6
 NEPWQAkrBgCH90ub/1Mq2e289lSfxj7EOu17iL2kahf/PiRsQPsVM5gkxIpVBDEQIt8Z
 R7BEWYAvbPXnsFE6DHJsyjllky7PZdgjgY6oRelW3PBGn3sKabNjeUcz94fyytsnpsPW
 Dl5tIZhp9o1FklMyxbSIjSW88Cykrke7ZVbuTA7xmUhG6qOcd72iBleye8UmxutefK+d
 Y36C0TGhkoL6fBBuo2nhUma62HQR2ZZnet7xOtunYR7qALgXG1Xm8ApQYJC/bMVrPXAn
 Bhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cgF+iQ71N63fzGiwQW4cF1hqYUHS6u6C/HWG5UzaxPs=;
 b=g16JqyRcng4CkJzX4ki9Vac4hkKCRhdAAZGDUrgp7J1VVev5zroQVlTCceAJs2tEKu
 R4RhM8gAXLPhAs4f4+kcH0TdaZARFEpt0AQwvevasLarGSZ5Da2g9im1JKD1oq8ASqi7
 nL3T0TX3XSJp3R3Dk1nk1LwSTdJUo/n5YDOvt3Ss23WYT9c8Tz1dQqHUFdQ/i3DkPr0t
 nJiPHPdIeCzI3CNV80bmDVW0R5RndgvAa5fpRrdcDbXqm67ocRKnDFUhaVzw9hhaAzKf
 2wsir1fLXPPH1ULqHDgDTl8eZ+wd5Vfkf/8Xp6I+dNACMujD/3vkXbXCtRJf+ewL3M6T
 o3cw==
X-Gm-Message-State: APjAAAWyDYDtKwaExtqkUB6UGdq0PFbIgC/fR519G351W/lm0JVEbH21
 xk5dtI6YBYkx7K7OZ/WvZPQ=
X-Google-Smtp-Source: APXvYqxhYYTBqUuseJDWWUez3HqTi8OLsZ2iGsFp5mSkUmqRbkZx3k0KgGcdCy65dv073qcEdG4Bpw==
X-Received: by 2002:a19:5217:: with SMTP id m23mr24260832lfb.124.1565762957909; 
 Tue, 13 Aug 2019 23:09:17 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:17 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 13/15] ASoC: sun4i-i2s: Add multichannel functionality
Date: Wed, 14 Aug 2019 08:08:52 +0200
Message-Id: <20190814060854.26345-14-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230919_589991_E45A4A89 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

The i2s block can be used to pass PCM data over multiple channels
and is sometimes used for the audio side of an HDMI connection.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 93 +++++++++++++++++++++++++------------
 1 file changed, 63 insertions(+), 30 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index a020c3b372a8..a71969167053 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -617,41 +617,74 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	int lines;
 
 	channels = params_channels(params);
-	if (channels != 2) {
-		dev_err(dai->dev, "Unsupported number of channels: %d\n",
-			channels);
-		return -EINVAL;
-	}
-
-	lines = (channels + 1) / 2;
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		if ((channels > dai->driver->playback.channels_max) ||
+			(channels < dai->driver->playback.channels_min)) {
+			dev_err(dai->dev, "Unsupported number of channels: %d\n",
+				channels);
+			return -EINVAL;
+		}
 
-	/* Enable the required output lines */
-	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
-			   SUN4I_I2S_CTRL_SDO_EN_MASK,
-			   SUN4I_I2S_CTRL_SDO_EN(lines));
-
-	if (i2s->variant->has_chcfg) {
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
-				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
-				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
-				   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
-				   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));
-	}
+		lines = (channels + 1) / 2;
 
-	/* Map the channels for playback and capture */
-	i2s->variant->set_txchanmap(i2s, 0, 0x76543210);
-	i2s->variant->set_rxchanmap(i2s, 0x00003210);
+		/* Enable the required output lines */
+		regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
+				   SUN4I_I2S_CTRL_SDO_EN_MASK,
+				   SUN4I_I2S_CTRL_SDO_EN(lines));
+
+		i2s->variant->set_txchanmap(i2s, 0, 0x10);
+		i2s->variant->set_txchansel(i2s, 0, channels > 1 ? 2:1);
+
+		if (i2s->variant->set_txchanen)
+			i2s->variant->set_txchanen(i2s, 0, 2);
+
+		if (i2s->variant->has_chcfg) {
+			regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
+					   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
+					   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
+
+			if (channels > 2) {
+				i2s->variant->set_txchanmap(i2s, 1, 0x32);
+				i2s->variant->set_txchanoffset(i2s, 1);
+				i2s->variant->set_txchansel(i2s, 1,
+							    channels > 3 ? 2:1);
+				i2s->variant->set_txchanen(i2s, 1, 2);
+			}
+			if (channels > 4) {
+				i2s->variant->set_txchanmap(i2s, 2, 0x54);
+				i2s->variant->set_txchanoffset(i2s, 2);
+				i2s->variant->set_txchansel(i2s, 2,
+							    channels > 5 ? 2:1);
+				i2s->variant->set_txchanen(i2s, 2, 2);
+			}
+			if (channels > 6) {
+				i2s->variant->set_txchanmap(i2s, 3, 0x76);
+				i2s->variant->set_txchanoffset(i2s, 3);
+				i2s->variant->set_txchansel(i2s, 3,
+							    channels > 6 ? 2:1);
+				i2s->variant->set_txchanen(i2s, 3, 2);
+			}
+		}
+	} else {
+		if ((channels > dai->driver->capture.channels_max) ||
+			(channels < dai->driver->capture.channels_min)) {
+			dev_err(dai->dev, "Unsupported number of channels: %d\n",
+				channels);
+			return -EINVAL;
+		}
 
-	/* Configure the channels */
-	i2s->variant->set_txchansel(i2s, 0, channels);
-	i2s->variant->set_rxchansel(i2s, channels);
+		/* Map the channels for capture */
+		i2s->variant->set_rxchanmap(i2s, 0x10);
+		i2s->variant->set_rxchansel(i2s, channels);
 
-	if (i2s->variant->set_txchanen)
-		i2s->variant->set_txchanen(i2s, 0, channels);
+		if (i2s->variant->set_rxchanen)
+			i2s->variant->set_rxchanen(i2s, channels);
 
-	if (i2s->variant->set_rxchanen)
-		i2s->variant->set_rxchanen(i2s, channels);
+		if (i2s->variant->has_chcfg)
+			regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
+					   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
+					   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));
+	}
 
 	switch (params_physical_width(params)) {
 	case 16:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
