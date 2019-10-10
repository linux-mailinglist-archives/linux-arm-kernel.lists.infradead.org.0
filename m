Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA26CD32A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLBGXIOfmMVYACJ8nDBE5Po4aTqNgjlyB/ceozkDgYM=; b=VrmJKhfBdBwnc+
	eA1P9uQF2Y9+xknqL/oXCE96VOAbqYg58AxLHN+NgR04BUAGiN7UsmwpX3j8C+SMLtZAyagvtaAU3
	KykeU3qmqLKFStkl3NwvNqVWH6dxg5T4SB9Ul5FBn5ILFio620aDb0hDc4bx0xqpE41hYBrYMR8fd
	acCo1PVrJyc6GWKcquJDhqwL1QUUCkp/NG71fTFPdLtQE7DiuX2LTL8OM2bwmClk/xJaEeiN2imuv
	K7g/eZZ52o0w1NHiYTONW/RqoBRlVBXZYELDpIvWyRhjU1dqsy9f9e+A8KR23wIhFAA2fUE2J8X6f
	Ojv8O4H5IgHZOAMZbdKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfJX-0003g7-JH; Thu, 10 Oct 2019 20:45:35 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfIr-00027t-RS
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:44:55 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M7NaW-1iAwan0z8u-007hQ6; Thu, 10 Oct 2019 22:44:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 20/36] ASoC: samsung: s3c2412-i2s: avoid hardcoded
 S3C2410_PA_IIS
Date: Thu, 10 Oct 2019 22:30:04 +0200
Message-Id: <20191010203043.1241612-20-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TeWf9ZvWfvjnb3Ve9QrAtsPxCA5VGsKiYGYpNXLQpoD0HmWO+Ks
 UTtAeH609AIi4hlmzjVR5LB64CsPOtEnktY3gel+r0tddNDxlQdqdcdSy7KM564GUqFF59d
 ESmRXscKVtl/UO1tJrchwYHtuWECrpBQBzr4bq2YAz0W0o7jcB1AM2n78yMQG2wHh8BZ546
 +Jj6GGRLp22jZRUaAq+rA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:G145m/aL1hs=:sr15MrldjKsqqqKcPPsAcS
 rx9bG0hsaqZArUGQfG4daIX6hCQIS5LxphGu6LBkwmvBP/30bRfC1CkUGvVmXegk/siDAqHRG
 Y501U6N2nMX+QJxLZti0i/pwI4yJCcjRgeGCOTqpGpRuvvGopQYM14i6YPu+gL/dt9Cs4iKwe
 kvEmlYqxyk7+tb7DarBuMVaA7g8otT5ruEldzk3qEafRpxU3asRCO6sSrMk3IC5nwcKUsG4gJ
 +8QqVDTzDRFpzUvZGIUvjH/C94yTZtcG5drJLND3QQhBAEmyoVMSmVt0g1GjyRr15YgTQ+3/k
 Jj3x9IsbZswRcNFfNbmN75+LJowP52l7vdBr5wAsDZIgHZDN4F92JK8mf8LTqH1E9ny4DQS6c
 EQoPXfVWQT03Fr9LAUOr8D74IcL9OBAv0Q/LVlT1+uxdH36djNjxQgaaKp8sWvuwJJeatc9ay
 aGJgZGBybo1H4gcoNYFnwTdy73BjFoJgMEORAdS5y5ykx+3z1SqRHM9nUv5wY5afMV/MR2Yvu
 6mB/feJh6PRTjGiK9zuSSwAK0amKACMBYIDLSz/hF5s02u9f4V+Hajg7XNwjO+Pauxqc5lOu6
 it/vvYGArso57IO1So7zdk7/AJ3rKdC5adQ/NIwZWoMwZe7Rz/JXLuMmwsdtST9zLWLhjoYGM
 2ZCfr/wEPA3FGGBMcqInS6Pn9eU3AOSLucH5tLtEy92m8UuInxw6NmabA3w4ez09+XtM34Ofm
 r/bsqjMw8wF24O+p+xW39i3gX9Ch01nynJxZ+Yg9yvwiqUID/LPO2e92M5d09j3Mb1AiNXKRE
 gXK+DMtndkWTpHz9FVFmCrLdKrd7HdihkyilJKK5fGN7NDtGUyq0SpmPYIcug/2gTiy0rNrp5
 HAxLeTVvprdB6tPmZfVQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134454_189736_F30CF2A3 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The constant requires indirectly including a machine header file,
but it's not actually used any more since commit 87b132bc0315 ("ASoC:
samsung: s3c24{xx,12}-i2s: port to use generic dmaengine API"), so
remove it completely.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/samsung/s3c-i2s-v2.c  | 3 +--
 sound/soc/samsung/s3c-i2s-v2.h  | 3 +--
 sound/soc/samsung/s3c2412-i2s.c | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/sound/soc/samsung/s3c-i2s-v2.c b/sound/soc/samsung/s3c-i2s-v2.c
index 7e196b599be1..6a254fdaa6fb 100644
--- a/sound/soc/samsung/s3c-i2s-v2.c
+++ b/sound/soc/samsung/s3c-i2s-v2.c
@@ -616,8 +616,7 @@ int s3c_i2sv2_iis_calc_rate(struct s3c_i2sv2_rate_calc *info,
 EXPORT_SYMBOL_GPL(s3c_i2sv2_iis_calc_rate);
 
 int s3c_i2sv2_probe(struct snd_soc_dai *dai,
-		    struct s3c_i2sv2_info *i2s,
-		    unsigned long base)
+		    struct s3c_i2sv2_info *i2s)
 {
 	struct device *dev = dai->dev;
 	unsigned int iismod;
diff --git a/sound/soc/samsung/s3c-i2s-v2.h b/sound/soc/samsung/s3c-i2s-v2.h
index fe42b77999fd..8c6fc0d3d77e 100644
--- a/sound/soc/samsung/s3c-i2s-v2.h
+++ b/sound/soc/samsung/s3c-i2s-v2.h
@@ -83,8 +83,7 @@ extern int s3c_i2sv2_iis_calc_rate(struct s3c_i2sv2_rate_calc *info,
  * @base: The base address for the registers.
  */
 extern int s3c_i2sv2_probe(struct snd_soc_dai *dai,
-			   struct s3c_i2sv2_info *i2s,
-			   unsigned long base);
+			   struct s3c_i2sv2_info *i2s);
 
 /**
  * s3c_i2sv2_cleanup - cleanup resources allocated in s3c_i2sv2_probe
diff --git a/sound/soc/samsung/s3c2412-i2s.c b/sound/soc/samsung/s3c2412-i2s.c
index 787a3f6e9f24..5bf571762e89 100644
--- a/sound/soc/samsung/s3c2412-i2s.c
+++ b/sound/soc/samsung/s3c2412-i2s.c
@@ -49,7 +49,7 @@ static int s3c2412_i2s_probe(struct snd_soc_dai *dai)
 	snd_soc_dai_init_dma_data(dai, &s3c2412_i2s_pcm_stereo_out,
 					&s3c2412_i2s_pcm_stereo_in);
 
-	ret = s3c_i2sv2_probe(dai, &s3c2412_i2s, S3C2410_PA_IIS);
+	ret = s3c_i2sv2_probe(dai, &s3c2412_i2s);
 	if (ret)
 		return ret;
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
