Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A5D183190
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9p8HpWrZzWQOvbxqXS/zBPaZe0CUAtY4bDALlBcNCQ=; b=ULmyijuRPrxF/Q
	jyfosvsth4VSkQXA7UWEmzMckncI9HVZJ4AnHm5fSmzyWNOCz9Q4ykNfuh53ngfv4K1xWkC4KqKU2
	DDKEoXBrVDO3/n8O7DhXl9nzdPcc8Z/NDD8/wwapsVmny0yrkJkGA7y9vdM1u0ulFghPHw4Kd3j8x
	DeclqpbGljp1FZwwqYvV0VoEYf7L3eMRxGDuXMuZRnGCco/OFZO29E5TbVgjwdSEA0fZVpK2IM4lJ
	AUz4Z3vU6Gyad5sX9XSAljQrUXBrAe+79zUdW6287jT0y/c+BYPpUPTWzo83hF2RTJzZQNQer8lHg
	sM5GNhXK1DSh28cxfniQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNxB-0004RP-Hs; Thu, 12 Mar 2020 13:32:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNw4-0003TI-6c
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:31:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id n8so6102459wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WSxwbrvkTLQhCnvQXX1HjNSZff7G2HPoi6i2nBxHFtc=;
 b=YulRMKVUILMBNhdYGtTrxVJ+7BW7AY4paeNn1T/pfY9D9nSoD8fqGuY045sjsbxU5h
 hQ0pixA54oUGhTR0jYQB9S5danxRYtlzUqJyDZYZsoYUx0X+efvsf0OdsCg/D1aImZRN
 8axNItGQjFv2xvXC8Z2fQbZQOC4Feqijr7BfKcZpHm6nbZIhiZ8Xuhyg4zw3/6UbsuAo
 KLt30d5dY5soGBfrQOsshd8nQwIvKOsYdwNkij/OGVux17s15SGHzo8bB+irZX4Mbg79
 8GW8UhcUsBjWj1fWPAgTmfugsrl2NLfjlNX69Zxf2MqaT58r5tU81vWCQ+QNFl5x36Uj
 1tiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WSxwbrvkTLQhCnvQXX1HjNSZff7G2HPoi6i2nBxHFtc=;
 b=IUdpg514kb4rvq+lZtuTqY84qz5G7YBEfMzUYrpV84QJvLaFvHpk+PizTcajSMe2cG
 o3/haz7/4cGapguthOk7g4JbNQAws2yl7jIdQhuzDWXQmjQrmuq8odpE7BeO10n0GAuT
 Arhz3cI4fEftQx316y1ERL6XBTE9PI3a8tmk/6dXaRfzDD7fM2/mfGe0Umyf2ooCjjXR
 6Vq87HCzND00mDkg31ogY8GJNWcv9yF1SckyIEGkTBzKjuOmAgN64ItvUbkR7AeRL5Og
 2Seigvmgig4f6AdqFecotgckoqtlKwaD5KHhKe4bWw3dtE1oaQZG+uCkKwsdwmGKWQCB
 +oFQ==
X-Gm-Message-State: ANhLgQ1CmGB/cAKBK5y7V6d6d4FGlk4ca0iTB+qvofWm9Bu+pGrILho7
 D+n14zsuhlLn/KtRLchkrdunfA==
X-Google-Smtp-Source: ADFU+vuiXvA7ItIqTn6tHh9dRy8ISscfNKEPxJAkBuAl1GcZMGcUCuRRIWBWKC/j6F3R7b2fLXVfSA==
X-Received: by 2002:a1c:1d15:: with SMTP id d21mr4854913wmd.101.1584019898516; 
 Thu, 12 Mar 2020 06:31:38 -0700 (PDT)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm12242885wmi.27.2020.03.12.06.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 06:31:37 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH 4/9] spi: meson-spicc: support max 80MHz clock
Date: Thu, 12 Mar 2020 14:31:26 +0100
Message-Id: <20200312133131.26430-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200312133131.26430-1-narmstrong@baylibre.com>
References: <20200312133131.26430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063140_261380_15D048F9 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, Yixun Lan <yixun.lan@amlogic.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Sunny Luo <sunny.luo@amlogic.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SPICC controller in Meson-AXG is capable of running at 80M clock.
The ASIC IP is improved and the clock is actually running higher than
previous old SoCs.

Signed-off-by: Sunny Luo <sunny.luo@amlogic.com>
Signed-off-by: Yixun Lan <yixun.lan@amlogic.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/spi-meson-spicc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index bd434d9055d9..710b4e780daa 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -35,7 +35,6 @@
  *   to have a CS go down over the full transfer
  */
 
-#define SPICC_MAX_FREQ	30000000
 #define SPICC_MAX_BURST	128
 
 /* Register Map */
@@ -132,6 +131,7 @@
 #define SPICC_FIFO_HALF 10
 
 struct meson_spicc_data {
+	unsigned int			max_speed_hz;
 	bool				has_oen;
 	bool				has_enhance_clk_div;
 };
@@ -693,11 +693,9 @@ static int meson_spicc_probe(struct platform_device *pdev)
 	master->transfer_one = meson_spicc_transfer_one;
 	master->use_gpio_descriptors = true;
 
-	/* Setup max rate according to the Meson GX datasheet */
-	if ((rate >> 2) > SPICC_MAX_FREQ)
-		master->max_speed_hz = SPICC_MAX_FREQ;
-	else
-		master->max_speed_hz = rate >> 2;
+	/* Setup max rate according to the Meson datasheet */
+	master->max_speed_hz = min_t(unsigned int, rate >> 1,
+				     spicc->data->max_speed_hz);
 
 	meson_spicc_oen_enable(spicc);
 
@@ -737,9 +735,11 @@ static int meson_spicc_remove(struct platform_device *pdev)
 }
 
 static const struct meson_spicc_data meson_spicc_gx_data = {
+	.max_speed_hz		= 30000000,
 };
 
 static const struct meson_spicc_data meson_spicc_axg_data = {
+	.max_speed_hz		= 80000000,
 	.has_oen		= true,
 	.has_enhance_clk_div	= true,
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
