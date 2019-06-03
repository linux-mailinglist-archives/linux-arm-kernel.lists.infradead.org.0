Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A273372B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFv2lVisrff0bYfxJFTSg58v+5mDMTd5QiLqgQ6T180=; b=R4HfY/EIW3dG0h
	ub0s671U49LJIhQoW1JWIHsec6soQ6XaSkw8+g14YPOBRWoA2/Y7cw2W78IPBCz985mddIzp9rxJ5
	s7cepHC/mFirlmcE6Da07yZbFA9oly0bKnbO0n148+6IgBrvan4k6I6QhB2ocx/5dBwuVHWpLnbEM
	p7lsF8QSjKYzJ6MJie83k18rqbUdLj0Gnsp3HdXdkdBz8LCHNy1w2NurXQmuKX6E1cnbqAVJ07Vn/
	9+KViw0E0AYNFb67E1r1xKXAiD9ZKs5srxA9p0FMrk3nhydDFnY/9REchGudrKVVSrwcnefC029C3
	C8WEaV0ltoVwqHKQdVwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr50-0003W2-TK; Mon, 03 Jun 2019 17:49:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3j-0001oy-52
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id s21so6435864lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UmXLhP5CJRrYV/5kmZm3yYVzKnOFlBpoufzcvuG2Euo=;
 b=tRrvNk6MFq/My4QxrLzqARQ0X1xkdCvmj8lkNgEnodNP7Gf3AFQedvHDN8fyOYXFJM
 BjfZ5XKO5THgjPjipBepg7PsO6r+ZStwGCbDK+jDtOBj9cCljJ3xsQUvSr41KeIPLbuw
 lqpSRQm5Ibjn1gy8cNTJKadutrT57tIKtQepI+iPMF7YIPMOTec4YlEadeHM7FMfruif
 0xYMMaMmIK7PRhP/9UflbGqIaVv/htspVrOfI5E+juoUoXWdWwXfMQbCm29HAdn6rcqn
 hETDjMFmrvQmogX/UDjjW0IEB05Wh+TBuIBU2G98qonbhezWK8UmqMnINB879nL/JJlk
 S0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UmXLhP5CJRrYV/5kmZm3yYVzKnOFlBpoufzcvuG2Euo=;
 b=OJ/K0juIlGBgeA0UAQeQO5MNr4m4IsefdL/1z+qva96L31IQY6Cb5TnLgquKbog93Y
 f888EtC5r2Sa6ne4Eqf25mp8gLcMxrEHbSyutS3J8a7tQLBRCjgOFVJIPXTmjRF+WEHI
 qHKQHe+gkLvagqDtNDfDTSEILgAmFGKgWcseMO4LANKd15IWHAPGimfJEicJWzgncM4O
 fdRxvYBAd75WX5fD+R3E7jMdurH4w+UHRkR5tNPfhZCNK+Ny2Ax97UVr8U0UGbDuZYaT
 P3YDy9fSaheqd9tYShZ/m6wf86xVMjSjegovXknwtcb0eA0lF2xYAWzof9Y2eXkyxUU/
 UPJg==
X-Gm-Message-State: APjAAAU/rlUiHH0P8CslLc1rhS60DCMfu42T3LJlaK/bsJJk2YPpKfCH
 vT8IBtFB895t8s7TzbvcYIo=
X-Google-Smtp-Source: APXvYqxRcqPyv/G7uNPKQjW1747BjlGIhlaYcNVX/PqzipfY8FB6b8yvpMVVbeosO930GIJ+VYxDlA==
X-Received: by 2002:a2e:6313:: with SMTP id x19mr5272697ljb.25.1559584065657; 
 Mon, 03 Jun 2019 10:47:45 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:45 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 8/9] ASoc: sun4i-i2s: Add 20, 24 and 32 bit support
Date: Mon,  3 Jun 2019 19:47:34 +0200
Message-Id: <20190603174735.21002-9-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104747_421930_CD809C20 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

Extend the functionality of the driver to include support of 20 and
24 bits per sample for the earlier SoCs.

Newer SoCs can also handle 32bit samples.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 3549a87ed9e9..351b8021173b 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -428,6 +428,11 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
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
@@ -440,7 +445,18 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 		sr = 0;
 		wss = 0;
 		break;
-
+	case 20:
+		sr = 1;
+		wss = 1;
+		break;
+	case 24:
+		sr = 2;
+		wss = 2;
+		break;
+	case 32:
+		sr = 4;
+		wss = 4;
+		break;
 	default:
 		dev_err(dai->dev, "Unsupported sample width: %d\n",
 			params_width(params));
@@ -722,6 +738,13 @@ static int sun4i_i2s_dai_probe(struct snd_soc_dai *dai)
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
@@ -729,14 +752,14 @@ static struct snd_soc_dai_driver sun4i_i2s_dai = {
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
@@ -1161,6 +1184,11 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 		goto err_pm_disable;
 	}
 
+	if (i2s->variant->is_h3_i2s_based) {
+		soc_dai->playback.formats = SUN8I_FORMATS;
+		soc_dai->capture.formats = SUN8I_FORMATS;
+	}
+
 	if (!of_property_read_u32(pdev->dev.of_node,
 				  "allwinner,playback-channels", &val)) {
 		if (val >= 2 && val <= 8)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
