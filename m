Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB458CBC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2D93XWKCBdckPxwPOtg0U99nCrlM/hLG4kQuoQQEMvI=; b=pAFjOcN5Pup7pv
	c1skLw4sfZ3AdB+2JTzmGtw2U92ctg+v1OK5I90iKbERyba2ggGepvuKu1uuUug0F0L7vo2Sn0A8A
	/J1WN/tROSspn+Vl24XXjy/2eVNim5o2coPFQmP4bpxS4SiwxmhENETlWXt8BdXzrBRaDLx00FEq5
	FYQQ4B2X7L4f1csUlq3wGYuLHdyk8XqB9L+6/dVbWy1vAzBoiC3FjviHjs4jygEzN0CkQt6EbJygK
	YAEbZUKNwAIe7XvU9V8T/FvVb326MuFsFOrIadl9O0h+dOMJDzqmxnMsdByEQWZmFBaMkxjfBFtWZ
	boZSEtveTYSteMmIj/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmYR-0005WU-NE; Wed, 14 Aug 2019 06:14:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmTI-0008Os-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:24 +0000
Received: by mail-lf1-x143.google.com with SMTP id n19so10066246lfe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QUt25DA3nPbOAehIkkx29Wu4YEVb8BWcE2W2re+0NE8=;
 b=QzrffdvexAezMs4qMJYVZcFcbj6IE7U0mJndLRmd/1BqqRNboSoqBX9wbZeQcI5HoE
 w+8XxVS9TsjVcRzUcV/FkR/2dQI39Xd3c1UNtyEml6R/wNofjTIjHWnQHNAd91WMB9D/
 O5NgoQlUDESnv1urOYAvLTImhvggWvHvzR38HBBvz0PzaWlzTyAAVyAlRNTfIut9E95D
 sG6xu/38nnJgWKN0H4gSncltZzd5pJ3r5OYnnK99Hg7sFkRneR5g4QmK2JxTBaWExZeU
 y1kR1L0VrKuQoWAS3Y51l2dWRyd7jzrx+ItAfegoXkmNpoNHZ8qS7L7tM5FB8DTtr7pK
 GnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QUt25DA3nPbOAehIkkx29Wu4YEVb8BWcE2W2re+0NE8=;
 b=WMqaFTO73CyODcYD6lJB0Oj+0E3AgaPLLPw6EL+3HaTg3dIccudbYAAOmCYzXnvgMN
 oYEzcPNpLFRw0aH9mSzob30c/RdaRypTfj+z6+MT5XKmsYYSKo7L9c/q6h9H+5PNwG2R
 NZczgduP1Km3qDrSwcYb6gsjVL2cibp2n0tWc42i9GDWVeQwVnaoE+UKAqOUdpTUD2jx
 ThsPjxAtUi37arkjRBtikPS7NrwV+r2OWSORt2dqnAnCS8xg8qgC8MUccawMLbb/bzyw
 V+IfIn9CVFzrMHMBbhsaPfrGuC4dt4t3P3D6AQHOxWomgJeImYFoL1OyGxFnnvt3BgRP
 z5Qg==
X-Gm-Message-State: APjAAAU0kZOqbhU3hKvw9tBFNBwQtZHKyGG/MDr+eRcmiQWpPQcXXneU
 pDtDAIm7AiL2qHvbV/Vg9v8=
X-Google-Smtp-Source: APXvYqw3HfEmEsNcDcX28N02uPXQDKmFFo7Z9ESeDxVgagfChtjL+ghhnK2wlxr9TTWmXx73KB298w==
X-Received: by 2002:ac2:465e:: with SMTP id s30mr25328482lfo.19.1565762959397; 
 Tue, 13 Aug 2019 23:09:19 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:18 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 14/15] ASoc: sun4i-i2s: Add 20, 24 and 32 bit support
Date: Wed, 14 Aug 2019 08:08:53 +0200
Message-Id: <20190814060854.26345-15-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230923_443191_71B6827E 
X-CRM114-Status: GOOD (  13.72  )
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

Extend the functionality of the driver to include support of 20 and
24 bits per sample for the earlier SoCs.

Newer SoCs can also handle 32bit samples.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index a71969167053..d3c8789f70bb 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -690,6 +690,11 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	case 16:
 		width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 		break;
+	case 20:
+	case 24:
+	case 32:
+		width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+		break;
 	default:
 		dev_err(dai->dev, "Unsupported physical sample width: %d\n",
 			params_physical_width(params));
@@ -1015,6 +1020,13 @@ static int sun4i_i2s_dai_probe(struct snd_soc_dai *dai)
 	return 0;
 }
 
+#define SUN4I_FORMATS	(SNDRV_PCM_FMTBIT_S16_LE | \
+			 SNDRV_PCM_FMTBIT_S20_LE | \
+			 SNDRV_PCM_FMTBIT_S24_LE)
+
+#define SUN8I_FORMATS	(SUN4I_FORMATS | \
+			 SNDRV_PCM_FMTBIT_S32_LE)
+
 static struct snd_soc_dai_driver sun4i_i2s_dai = {
 	.probe = sun4i_i2s_dai_probe,
 	.capture = {
@@ -1022,14 +1034,14 @@ static struct snd_soc_dai_driver sun4i_i2s_dai = {
 		.channels_min = 2,
 		.channels_max = 2,
 		.rates = SNDRV_PCM_RATE_8000_192000,
-		.formats = SNDRV_PCM_FMTBIT_S16_LE,
+		.formats = SUN4I_FORMATS,
 	},
 	.playback = {
 		.stream_name = "Playback",
 		.channels_min = 2,
 		.channels_max = 2,
 		.rates = SNDRV_PCM_RATE_8000_192000,
-		.formats = SNDRV_PCM_FMTBIT_S16_LE,
+		.formats = SUN4I_FORMATS,
 	},
 	.ops = &sun4i_i2s_dai_ops,
 	.symmetric_rates = 1,
@@ -1505,6 +1517,11 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 		goto err_pm_disable;
 	}
 
+	if (i2s->variant->has_fmt_set_lrck_period) {
+		soc_dai->playback.formats = SUN8I_FORMATS;
+		soc_dai->capture.formats = SUN8I_FORMATS;
+	}
+
 	if (!of_property_read_u32(pdev->dev.of_node,
 				  "allwinner,playback-channels", &val)) {
 		if (val >= 2 && val <= 8)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
