Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA99533723
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4taVmE8hMX1UmrtV3lj/6mvWZZBTMC01tLmS/8f2LYs=; b=BqX56jI5/bPHAE
	z7BkGeEgGvt17IvG3PwUckixhxnkWERMPks7UtQRhWJzF8vdtBTcnDjR5aKb0vcn6KZm5MD9SVpzO
	8vqC9PhCRBj6uFKfvTslNcGAmtUFegv71uzR5ohr22NquVelueE98ZmOjOl6623ebObo5Nvc7sbaO
	MCJe4Lisna8o8U0OgsNz+TcV7J9zoige2ugbjHWDm+SDaHFPZy9pjnvlPCYyQGJUaGEJ+WrE2k+t0
	POJyEt7eDi2yu4KhtQAuu7IANBao1/jm86GU/WjP5k21gon1Blm/iyrkzpuowgP911edTg1fnzCt6
	4/omrLCItrBD69Zjd6bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr4L-0002Yg-Ss; Mon, 03 Jun 2019 17:48:25 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3g-0001nK-3J
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id o13so17068388lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4qDu9sgTgZn0ixKovZtDdWsY36CDb/LQcyeDWdfScG8=;
 b=VB7x2EfdwROpsggAChY65dDFdT4snrzfhIsqFYJismvsXq0mLGWEpQPGANo6GZ86WD
 EhluPWYQPbQI/VFt/GMWVZTgyYHqszB0rLOaGRMVg4VjXS18RqJW09eEmeXOXKqQcm31
 omLCWC5Mh3F3Y0cq0FGe9FoX3NMaq3Ek60AZkyyAxJI/PVrudcafQaC1CcwU/zP0+PFm
 X162LXhajyp+9zrRGf/vq0gBV6Uj4Lp9j1a2J4KZYbtmiywJ1hIvGs18iNVcojXLfNjM
 2v0tYS+Bywfe4G3RLDioJokRUvLQbkLXF3/T6eNyQo3HxlZRXWV+avdLO2X9ZAJVAtYk
 ccqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4qDu9sgTgZn0ixKovZtDdWsY36CDb/LQcyeDWdfScG8=;
 b=H5nZKCg8g/aSkXpuvLq67rOb9b32NQEqp3OVMNGt1BychdkGfSfHtn+z9LJS+cCpO7
 zuvxVb5jwUAeK3Xh4UrAlQaleNTNIbJEBkqDDqKIKh97RWfdubR1O+JvkRIqzkw0jndQ
 Q1/230SNm8uoFizq9x0QH26ZU/EV45FSKjwgzQCO0f7Ylv7UDEmDYpBFPQBD7BX7POLk
 D8SzVSrkh0eZnFQbe2rcWcyJtkr0v/vn1nKwDGa7KasiYttlEFBZTnXbtd6j9mNSxPhc
 eA76yVQQ4SxHVuw5hCLT/YIL8g1SBPZT/h/mtgsMl55yuEZ3SIqRQcpGCv7sLBTBvz4d
 SqXQ==
X-Gm-Message-State: APjAAAXXySWBIsPKUhYIqWWI7KW4o7fwftNjDR5tRrtuzn5jlpKF+9zL
 sNCAQpdRT5woNCX6/Y5KsbY=
X-Google-Smtp-Source: APXvYqz2F0PyDNUFtpD+QUjxtj9ZHAQF3f3fXBXumc+SWsHJ+iRNTuzAyPXaNJZS7kycwtwb/Rn35A==
X-Received: by 2002:a2e:91d7:: with SMTP id u23mr14465389ljg.150.1559584062466; 
 Mon, 03 Jun 2019 10:47:42 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:41 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 5/9] ASoC: sun4i-i2s: Add set_tdm_slot functionality
Date: Mon,  3 Jun 2019 19:47:31 +0200
Message-Id: <20190603174735.21002-6-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104744_135750_DEC97088 
X-CRM114-Status: GOOD (  13.94  )
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

Some codecs require a different amount of a bit clocks per frame than
what is calculated by the sample width. Use the tdm slot bindings to
provide this mechanism.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 329883750d6f..bca73b3c0d74 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -186,6 +186,9 @@ struct sun4i_i2s {
 	struct regmap_field	*field_rxchansel;
 
 	const struct sun4i_i2s_quirks	*variant;
+
+	unsigned int	tdm_slots;
+	unsigned int	slot_width;
 };
 
 struct sun4i_i2s_clk_div {
@@ -337,7 +340,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 	if (i2s->variant->is_h3_i2s_based)
 		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
 				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
-				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
+				   SUN8I_I2S_FMT0_LRCK_PERIOD(word_size));
 
 	/* Set sign extension to pad out LSB with 0 */
 	regmap_field_write(i2s->field_fmt_sext, 0);
@@ -414,7 +417,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			   sr + i2s->variant->fmt_offset);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
-				      params_width(params));
+				      i2s->tdm_slots ?
+				      i2s->slot_width : params_width(params));
 }
 
 static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
@@ -657,11 +661,25 @@ static int sun4i_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
 	return 0;
 }
 
+static int sun4i_i2s_set_dai_tdm_slot(struct snd_soc_dai *dai,
+	unsigned int tx_mask, unsigned int rx_mask,
+	int slots, int width)
+{
+	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
+
+	i2s->tdm_slots = slots;
+
+	i2s->slot_width = width;
+
+	return 0;
+}
+
 static const struct snd_soc_dai_ops sun4i_i2s_dai_ops = {
 	.hw_params	= sun4i_i2s_hw_params,
 	.set_fmt	= sun4i_i2s_set_fmt,
 	.set_sysclk	= sun4i_i2s_set_sysclk,
 	.trigger	= sun4i_i2s_trigger,
+	.set_tdm_slot	= sun4i_i2s_set_dai_tdm_slot,
 };
 
 static int sun4i_i2s_dai_probe(struct snd_soc_dai *dai)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
