Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A016B3372C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOY2UI3qGfPUv/vi+FWCfvj6XPo+LCgtSAXbvonGYuo=; b=g1JxXtDO0o8dho
	yZhw+h3ejbYIY7yQRkgKA5lVVxTgbQM6d0SVMiap6w/XgsOoKqENRHa9VyVA4dNEawWJXQuVwyY1t
	v/r1S5cQ7GBODhehPNm38VUUjEApf6dSdNqnOcbI+zc1IFEaABN7En9ewC0a9t1BtsBRozPwei6Y4
	6aKThe3D09jk8K9SyFie5ipHzIYBrBPCJonvm+SNeND+uvAGOP8d3BIhI49pKj7ikO6ZqzyjvW3ou
	5x1zGNb9Vrwtzb8cMlLjCGyVAq/aMpHEMOcDSEzKOuqAu7vIHcgG6+5DJYGsWv+nK/AEPQR3y+JUj
	ErOg4E+9LGmBgehNl2LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr5E-0003o5-Qc; Mon, 03 Jun 2019 17:49:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3k-0001px-2x
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:51 +0000
Received: by mail-lf1-x143.google.com with SMTP id y13so14266945lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EP52HnBImDdJf7rjJmYz8TmWwXw2UkH57yWmp4TnU6I=;
 b=kMsbuH2VtRAEevl5PD0Za9pWTeLXxKuZwm2mHSVRGrcCaYkRfyGB+0tHVh91anOQGN
 FYwkWYWsIihC4795iLplxVDLLXtfzAQ6DOM6E8El2aNrydKRwy28SquK0vH9sLvpLjLT
 jwKnojjBWsjbAAreyuIrVTIqzOIti97HpgvGfm04mDGeewtxm3Jd87mQH51hLybGLdh5
 OyEWvy3aM9qAYIN35EpfsQdb7h2epMb5+ofP4GkLqrLXmgojB/PlCVHrVlMOg4QKL/WL
 5FiymJDpz+YNejmqj5tsoisorq9ICjxaGuHdF/wPI0Jzlo2gCt4XuJGo0tciwbKdEkoM
 NHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EP52HnBImDdJf7rjJmYz8TmWwXw2UkH57yWmp4TnU6I=;
 b=WfKOvSB1cT5nFykDzK1HKpxCu2sy31UBD+9yLuLZb7G+D3cORDLE6pjvx3A+ylhvdi
 am8D6c3N7IsN0A5e+u3eeAD27K64Sy6PEpFDl5dFjFdzx4kL2lcl5heZZYQNoTP+7x11
 f7X4Px/7KwARxHcJWOLDB6RbS7gz1AgQNe4eFG4Fjgjf/3toSnGpyMURSY6ePrGCGEeF
 jX8qLVYLy/91BUNoz3HuSOcfSbzIuUVOxFO9RSBMvxPb8sxwnWHyyPqFGv6waIAOZsMY
 DcceRGOFCvZGkqmTfW6ae5t+ofMOhKa02GZT7Kry20FzVEbgLPwRlChEYl7hIklfnkDk
 aBVg==
X-Gm-Message-State: APjAAAXgd/eRSqbzBLgjBH+HBq2grQdh9c3dD7SrzNWY5u8I3mlj+Xc9
 iqqrfFHkMcF20ZBS6G3571E=
X-Google-Smtp-Source: APXvYqzDuyyZ8jJoRuUrujErMlbCM25unS3jF7phVTl+Z3OyXyZoUzPLavy5f6g40fgZMjB6nWJWbA==
X-Received: by 2002:ac2:47fa:: with SMTP id b26mr1178893lfp.82.1559584066627; 
 Mon, 03 Jun 2019 10:47:46 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:46 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 9/9] ASoC: sun4i-i2s: Adjust regmap settings
Date: Mon,  3 Jun 2019 19:47:35 +0200
Message-Id: <20190603174735.21002-10-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104748_415646_BAAA3EAB 
X-CRM114-Status: GOOD (  14.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Bypass the regmap cache when flushing the i2s FIFOs and modify the tables
to reflect this.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 29 +++++++++--------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 351b8021173b..92828a84902d 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -595,9 +595,11 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 static void sun4i_i2s_start_capture(struct sun4i_i2s *i2s)
 {
 	/* Flush RX FIFO */
+	regcache_cache_bypass(i2s->regmap, true);
 	regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
 			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX,
 			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX);
+	regcache_cache_bypass(i2s->regmap, false);
 
 	/* Clear RX counter */
 	regmap_write(i2s->regmap, SUN4I_I2S_RX_CNT_REG, 0);
@@ -616,9 +618,11 @@ static void sun4i_i2s_start_capture(struct sun4i_i2s *i2s)
 static void sun4i_i2s_start_playback(struct sun4i_i2s *i2s)
 {
 	/* Flush TX FIFO */
+	regcache_cache_bypass(i2s->regmap, true);
 	regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
 			   SUN4I_I2S_FIFO_CTRL_FLUSH_TX,
 			   SUN4I_I2S_FIFO_CTRL_FLUSH_TX);
+	regcache_cache_bypass(i2s->regmap, false);
 
 	/* Clear TX counter */
 	regmap_write(i2s->regmap, SUN4I_I2S_TX_CNT_REG, 0);
@@ -771,13 +775,7 @@ static const struct snd_soc_component_driver sun4i_i2s_component = {
 
 static bool sun4i_i2s_rd_reg(struct device *dev, unsigned int reg)
 {
-	switch (reg) {
-	case SUN4I_I2S_FIFO_TX_REG:
-		return false;
-
-	default:
-		return true;
-	}
+	return true;
 }
 
 static bool sun4i_i2s_wr_reg(struct device *dev, unsigned int reg)
@@ -796,6 +794,8 @@ static bool sun4i_i2s_volatile_reg(struct device *dev, unsigned int reg)
 {
 	switch (reg) {
 	case SUN4I_I2S_FIFO_RX_REG:
+	case SUN4I_I2S_FIFO_TX_REG:
+	case SUN4I_I2S_FIFO_STA_REG:
 	case SUN4I_I2S_INT_STA_REG:
 	case SUN4I_I2S_RX_CNT_REG:
 	case SUN4I_I2S_TX_CNT_REG:
@@ -806,23 +806,12 @@ static bool sun4i_i2s_volatile_reg(struct device *dev, unsigned int reg)
 	}
 }
 
-static bool sun8i_i2s_rd_reg(struct device *dev, unsigned int reg)
-{
-	switch (reg) {
-	case SUN8I_I2S_FIFO_TX_REG:
-		return false;
-
-	default:
-		return true;
-	}
-}
-
 static bool sun8i_i2s_volatile_reg(struct device *dev, unsigned int reg)
 {
 	if (reg == SUN8I_I2S_INT_STA_REG)
 		return true;
 	if (reg == SUN8I_I2S_FIFO_TX_REG)
-		return false;
+		return true;
 
 	return sun4i_i2s_volatile_reg(dev, reg);
 }
@@ -877,7 +866,7 @@ static const struct regmap_config sun8i_i2s_regmap_config = {
 	.reg_defaults	= sun8i_i2s_reg_defaults,
 	.num_reg_defaults	= ARRAY_SIZE(sun8i_i2s_reg_defaults),
 	.writeable_reg	= sun4i_i2s_wr_reg,
-	.readable_reg	= sun8i_i2s_rd_reg,
+	.readable_reg	= sun4i_i2s_rd_reg,
 	.volatile_reg	= sun8i_i2s_volatile_reg,
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
