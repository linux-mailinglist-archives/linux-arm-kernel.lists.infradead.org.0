Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364058CBBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dh6T9niRkHnvfL+bS5ZGHeq6+ytHnJbbG59FaU4CCo8=; b=SF/39WURa5MWvm
	FMaIMsIQCxGhFAMwJAoBV3Fs69k9b9Nu7vcU/r76rZsOlF7Bee1HUSGKoAGiTcflYLyHjVeNVpHn8
	ZZrvCy/vBuKep28+QpV8u55ZcYGapxeMN7xZKBlrPAC1J6He5AteslJaNBd5UlmGIplVcw+A3R39H
	XZ19UtBj6yniRWSkK8F9VSdFNUZ7A/+TkH6vI/2GdWWbr1k2CicLCDGWObA7CIeUj6UEHZiP+WZ7U
	gEPvNrqiQ8jJYecpbCuENEZFCzp7a1uILlVHekGqwHbx006mWjh/3oyUBUzI7N96iF+IPi24s0CtR
	dyJuhr+ZmXmKBaarySpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmXa-0004f9-HD; Wed, 14 Aug 2019 06:13:46 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmTF-0008MT-R1
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:19 +0000
Received: by mail-lf1-x141.google.com with SMTP id b29so71217966lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ou3x7y4s8p5adLbVD6HKEYQ2kNImM5q4bilXS/ylyGo=;
 b=b2FZTp02TAHqQew35c6kwrKuCTzZoo3W8NqhcIPMlerWaVlqYLkYg7VlVI9gUC/5Lb
 fDQRW6yAa1Yq7q9Dyxn0APRJEK0w2aRzx/5pLZU83Nu0ZVvpfqNYEac7n+zvM9XjvUg3
 mdUJ9mFIq42CoP9BRv8v22FCaPgPzBhLaI4sjjX8sWSY0ITdxMrvKl+LO71NlX+8XTuU
 zfHk5NOwMAurs0Ps4Uk60hws46rQ4Me+gwvud+d0SzYV7zelpS1hnTIMNQAvnIDb0dAV
 /Kaxmqo6nstOyiQ91V8eLhpBaRaIJBacuByzyg+ifpPuoJrgA2vKzCSSMNXIF/XtIN1o
 nEJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ou3x7y4s8p5adLbVD6HKEYQ2kNImM5q4bilXS/ylyGo=;
 b=ZPvspwOW70sH1bRsE1bRSicPFE/P68rxdblddQ0gZiBwwbPny+hdn5kl4G58rzQ8sM
 X3H2pf3A2FnIU1TYuow4BaWqetiYUZbCNiB0dsg9dQqtZ7spoELlXQcYNyKE+Nn2UGpR
 hq0zCe2RcncCxgW2VxNetriETGEeTD/3w5DHFYGyKeks2l9l/R4Py79aM/wrBFa2TqpO
 nRmy1JJpHqIzjh/A0UG1tNP7/2U1ZxMVmfhQV81izhU33+Xk37NAgYXOTU4gBthXeGo4
 KoyX3+v272GhId5FcwRnwmUOE4Tq85CNemflst/cw2OMksKwwWUlKtjotOeO/6ZPqeAi
 dDxg==
X-Gm-Message-State: APjAAAWaYW3e0jG7kUyI7CYWVpOvq23fF1Of7Wo1vG1BofITPUkvLG7X
 itgJEiQn6w5zSWdh9Kf5i+A=
X-Google-Smtp-Source: APXvYqz3NLXEXAl8L4Kz1xuOk4AcF3nKcG5klKFuG7opqjL8zbsMtc1OeMtjPYhIInZBn0pYUugW+w==
X-Received: by 2002:a19:f603:: with SMTP id x3mr22065770lfe.125.1565762956491; 
 Tue, 13 Aug 2019 23:09:16 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:15 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 12/15] ASoC: sun4i-i2s: Add multi-lane functionality
Date: Wed, 14 Aug 2019 08:08:51 +0200
Message-Id: <20190814060854.26345-13-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230918_057793_4DACADEA 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

The i2s block supports multi-lane i2s output however this functionality
is only possible in earlier SoCs where the pins are exposed and for
the i2s block used for HDMI audio on the later SoCs.

To enable this functionality, an optional property has been added to
the bindings.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index a8d98696fe7c..a020c3b372a8 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -23,7 +23,7 @@
 
 #define SUN4I_I2S_CTRL_REG		0x00
 #define SUN4I_I2S_CTRL_SDO_EN_MASK		GENMASK(11, 8)
-#define SUN4I_I2S_CTRL_SDO_EN(sdo)			BIT(8 + (sdo))
+#define SUN4I_I2S_CTRL_SDO_EN(lines)		(((1 << lines) - 1) << 8)
 #define SUN4I_I2S_CTRL_MODE_MASK		BIT(5)
 #define SUN4I_I2S_CTRL_MODE_SLAVE			(1 << 5)
 #define SUN4I_I2S_CTRL_MODE_MASTER			(0 << 5)
@@ -614,6 +614,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 	int sr, wss, channels;
 	u32 width;
+	int lines;
 
 	channels = params_channels(params);
 	if (channels != 2) {
@@ -622,6 +623,13 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 		return -EINVAL;
 	}
 
+	lines = (channels + 1) / 2;
+
+	/* Enable the required output lines */
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
+			   SUN4I_I2S_CTRL_SDO_EN_MASK,
+			   SUN4I_I2S_CTRL_SDO_EN(lines));
+
 	if (i2s->variant->has_chcfg) {
 		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
 				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
@@ -1389,9 +1397,10 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 static int sun4i_i2s_probe(struct platform_device *pdev)
 {
 	struct sun4i_i2s *i2s;
+	struct snd_soc_dai_driver *soc_dai;
 	struct resource *res;
 	void __iomem *regs;
-	int irq, ret;
+	int irq, ret, val;
 
 	i2s = devm_kzalloc(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
 	if (!i2s)
@@ -1456,6 +1465,19 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 	i2s->capture_dma_data.addr = res->start + SUN4I_I2S_FIFO_RX_REG;
 	i2s->capture_dma_data.maxburst = 8;
 
+	soc_dai = devm_kmemdup(&pdev->dev, &sun4i_i2s_dai,
+			       sizeof(*soc_dai), GFP_KERNEL);
+	if (!soc_dai) {
+		ret = -ENOMEM;
+		goto err_pm_disable;
+	}
+
+	if (!of_property_read_u32(pdev->dev.of_node,
+				  "allwinner,playback-channels", &val)) {
+		if (val >= 2 && val <= 8)
+			soc_dai->playback.channels_max = val;
+	}
+
 	pm_runtime_enable(&pdev->dev);
 	if (!pm_runtime_enabled(&pdev->dev)) {
 		ret = sun4i_i2s_runtime_resume(&pdev->dev);
@@ -1465,7 +1487,7 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &sun4i_i2s_component,
-					      &sun4i_i2s_dai, 1);
+					      soc_dai, 1);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register DAI\n");
 		goto err_suspend;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
