Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3491D88FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRftfw0R2eRCsy9ggHKlx96Fc16O56a2EnIJCJ8mA2I=; b=k2bANvjRhhKuJW
	vvC4PsCGuzTYuuWJ/Z3eprKDzHhercWGFTWsZN+u28BH5Ap1P+ZYJReZaOrHdh/TnF5imrZq+EUGt
	kkY9P7JPWAl6hjtDNn77WQtzwgza2qB9cm7ZRnbPcljgFeQv4EC34fHmeOJCzTkXiZ/v7fg0jh74V
	drk8JTCDIFOI54t+lmM9w9t6ww09hJQ0++6SpY/SmBItOt2E2EoMChF2g9nLVhdSU1LfKiGds/W8p
	2sPOMPbplb9+USFOtHRaanO0lJgT7/2WIh69/le0lC10ZxHGBC3Y7auLsorVGFwRAqszbdGYdJQic
	Oc0aLGEeBkd5xeM35vlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdQ8-0000MX-VE; Wed, 16 Oct 2019 07:08:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPP-0008Jw-1X
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id m7so22821541lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oxDmBN8xjRHLwjCrJVEkKzUtkBzzYQgLKNmxBNYk6Lk=;
 b=mJD0Y8fakTfV82mrGHxCoBR8AE4xJv6jTGnyRdffnT3gp8w5fy8thy7oRDclKCdlla
 9AKy2bnASj/sE5hke5dqFXtvW7zM260aK7qraQkvSRmMbE3qohdSyOgif3XtAsjpgL9U
 qQogQrSc2/Lngg0Mq/odTr+eGg+gm5xaIJwcIRKs4K/+zPRr+L6Mv9SIDgbtkWJfw6AR
 e622onDA+2WGpBrRXKKoDwnghIA2tO5jUJPZYBMzz91m3lO7t4XCgGkm3+cKhzhtOkaA
 9h1miXyTVi6KvzyaWYfBk3bsBykMkC0+hU7bBluJU3FRdvfiT6TPpzTpOLf7+csf/s1d
 uHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oxDmBN8xjRHLwjCrJVEkKzUtkBzzYQgLKNmxBNYk6Lk=;
 b=kMPWPYI3o89bX2Liu1l/Q3SDsSESGPoCFaasp+iattIxO3iZ/KhodPsSQkid5l5Cop
 Xzx8qAyCirIUF2S8AGVwQQWW6CrhlboadpmSkip/dGXHSEFuad66txKD1H/z68vntpjD
 Lroi4/K8QsZPvNnIbj8Qkbtq4bldAngyIBvyqAlK1FUT3GC4C34qjepIgbYuuiWrBYTi
 zP0uM50DK5phkZst0qWrpnc7NcNvZ/HTgekKp0vqySxUs5s1bkCYoxvZfLBhDNdvg4qm
 /8Zf3GrqRiSK8z9AbuKypySctz0gzbfEpUOkwMh9ptf/61gR+tEM4e4D4MlVcgL9Z1Ob
 /Kqw==
X-Gm-Message-State: APjAAAU032UjtvI84DIE08KGXrPCs2ot6Y0rum3iDcIm5LukWtJ+JXtm
 lP8jVuP/q9ypDQYgiG0P1Jk=
X-Google-Smtp-Source: APXvYqzFJq0X14+N0B33ZyE/bD1IVOERGHXz7HXUP3dLkoHMUCclXOJf/F7lmiWKgsFUVqC3O42ZPQ==
X-Received: by 2002:a2e:8204:: with SMTP id w4mr25118019ljg.212.1571209665267; 
 Wed, 16 Oct 2019 00:07:45 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:44 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 2/7] ASoC: sun4i-i2s: Add functions for RX and TX channel
 offsets
Date: Wed, 16 Oct 2019 09:07:35 +0200
Message-Id: <20191016070740.121435-3-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000747_082209_C4FC4747 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Newer SoCs like the H6 have the channel offset bits in a different
position to what is on the H3. As we will eventually add multi-
channel support then create function calls as opposed to regmap
fields to add support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 31 +++++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index f1a80973c450..875567881f30 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -157,6 +157,8 @@ struct sun4i_i2s_quirks {
 	int	(*set_chan_cfg)(const struct sun4i_i2s *,
 				const struct snd_pcm_hw_params *);
 	int	(*set_fmt)(struct sun4i_i2s *, unsigned int);
+	void	(*set_txchanoffset)(const struct sun4i_i2s *, int);
+	void	(*set_rxchanoffset)(const struct sun4i_i2s *);
 };
 
 struct sun4i_i2s {
@@ -467,6 +469,23 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 	return 0;
 }
 
+static void sun8i_i2s_set_txchanoffset(const struct sun4i_i2s *i2s, int output)
+{
+	if (output >= 0 && output < 4)
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
+				   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
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
@@ -661,12 +680,10 @@ static int sun8i_i2s_set_soc_fmt(struct sun4i_i2s *i2s,
 
 	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
 			   SUN8I_I2S_CTRL_MODE_MASK, mode);
-	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
-	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
-			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
+	if (i2s->variant->set_txchanoffset)
+		i2s->variant->set_txchanoffset(i2s, 0);
+	if (i2s->variant->set_rxchanoffset)
+		i2s->variant->set_rxchanoffset(i2s);
 
 	/* DAI clock master masks */
 	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
@@ -1136,6 +1153,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
 	.set_fmt		= sun8i_i2s_set_soc_fmt,
+	.set_txchanoffset	= sun8i_i2s_set_txchanoffset,
+	.set_rxchanoffset	= sun8i_i2s_set_rxchanoffset,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
