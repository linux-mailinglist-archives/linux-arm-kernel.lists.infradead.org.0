Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7424B8CBA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLI2pRg8NRzoreqaN6oYgMPTTMSXL4hq3GNEAkQ/DxI=; b=hwVHzDI1JMbGnk
	w7DgsVI6B7OouzzYvfQiQaqjXuWd31iaq529JzDPsHGxTqeRWmLIZnayLen64CWZOVNGMucuAAmo+
	/HBv1i+eKBGt/IpO9FPJKw188rPex5jvyRZD/N0wEvU4kYuC8oC2WORfmPrEnDnRddNpuMfexdIba
	3UfeattUyXTkat+3ZLOqczjKGrENvwc+RjLBayNTovaIb6ssG45H29lpp3OixK/qiWG5fsDkYaRFf
	msLC+xMpTKgSoWFJJwxdUcqHqM7isxpSDtIH/sGAxRu2iIgVJ9Jhh1vd2/UWQeJMmQELwl+/M8k9s
	KbgYsDrCps36UPpKfnjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmUa-000222-Bw; Wed, 14 Aug 2019 06:10:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmT1-0008E4-8e
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:04 +0000
Received: by mail-lf1-x142.google.com with SMTP id p197so78415973lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nIdAGNiLkiiK2Gw0kPcR7I6xu5ZStD9Kxb2ECFc6UjY=;
 b=FavTetyhFsglyGujp7hKFmN5Wjrg8vatZ/OKeJnhnFCTNyNjm6FSQW5m7z4ex3otcK
 XNWNbkpobxRd8dgjYf9tHhgx9aHtDe4FhyV7utEEWuo615XqeQvu3KtvBsKqTrXAaLJ1
 JuZoHI12nV9/EFhVOIcOLI4Efnu30Co0IfQpSZC5NSOOy30Y7vapcGtPogK7LmGHzLKY
 Or1T9GCBBheRfEcR8c9bnEU8DqDNZqWg9zraE2OVhBNP22FEH2TyDi1RHPMZVNkfSQO9
 YuIyZtMpunFNx0/5XICae1ynEKsev56Mf9hGlsmEGDKtPGMhp8nU3Gz9uqEU2jIWK79A
 WWbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nIdAGNiLkiiK2Gw0kPcR7I6xu5ZStD9Kxb2ECFc6UjY=;
 b=EILD8wok2qFkMqDLSs5MBFXDR8q8LDAy/7xePOdS1hx+qH7wheB8+nPlVkeIsWnt+h
 AIPVuO4CpmR8cKn+1pdx97+YukeaTXqAB1j4WK4Dyj16yY2bG6rqr8nwo6ZiW4+3HqkO
 IG8HKTAV3mZAzJAWkUYuoQ+7Y1rFOkcPn1kv++znMJvnsPRYK6m79yyjdomehWm5ScBk
 8VBue5ACFFp5I/DISw7jB2jLlSQ/nkPtgMIQoxGmfLc7VJCvZ0VQLQk5AmhP7juOo20K
 ai7Wo/PW/qXcnbfyr15ocWF3Mg+oaFo7MNnz8DeLiKcxKnrbX0riD5tqgqguzZE1TzQz
 z3yg==
X-Gm-Message-State: APjAAAUOoFeGqmqJs8NVh0GB8l5SL+0yzWPnHeK1ZO8LW1oeyGvGephi
 5nHw2D3V1+JJV0PXhtB0dYo=
X-Google-Smtp-Source: APXvYqzPDghVmAfn8CnRzvuqNzhY1HphT9aHe0MsxJAGXonvqC7XcehgcpyOD4PCKzazCISMYoQs9w==
X-Received: by 2002:a19:c511:: with SMTP id w17mr13345752lfe.31.1565762942016; 
 Tue, 13 Aug 2019 23:09:02 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.08.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:01 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 02/15] ASoC: sun4i-i2s: Add set_tdm_slot functionality
Date: Wed, 14 Aug 2019 08:08:41 +0200
Message-Id: <20190814060854.26345-3-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230903_495029_B7A18461 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

Codecs without a control connection such as i2s based HDMI audio and
the Pine64 DAC require a different amount of bit clocks per frame than
what is calculated by the sample width. Use the tdm slot bindings to
provide this mechanism.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 8201334a059b..7c37b6291df0 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -195,6 +195,9 @@ struct sun4i_i2s {
 	struct regmap_field	*field_rxchansel;
 
 	const struct sun4i_i2s_quirks	*variant;
+
+	unsigned int	tdm_slots;
+	unsigned int	slot_width;
 };
 
 struct sun4i_i2s_clk_div {
@@ -346,7 +349,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 	if (i2s->variant->has_fmt_set_lrck_period)
 		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
 				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
-				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
+				   SUN8I_I2S_FMT0_LRCK_PERIOD(word_size));
 
 	/* Set sign extension to pad out LSB with 0 */
 	regmap_field_write(i2s->field_fmt_sext, 0);
@@ -450,7 +453,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_fmt_sr, sr);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
-				      params_width(params));
+				      i2s->tdm_slots ?
+				      i2s->slot_width : params_width(params));
 }
 
 static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
@@ -693,10 +697,25 @@ static int sun4i_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
 	return 0;
 }
 
+static int sun4i_i2s_set_dai_tdm_slot(struct snd_soc_dai *dai,
+				      unsigned int tx_mask,
+				      unsigned int rx_mask,
+				      int slots, int width)
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
+	.set_tdm_slot	= sun4i_i2s_set_dai_tdm_slot,
 	.trigger	= sun4i_i2s_trigger,
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
