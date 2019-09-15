Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80473B3060
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 15:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b3i79u4xQxzI1TLaBCWEf34VfksgOSlI3Dw4VgXLWP0=; b=dfqomWoqSm3RuP
	PUBuUGiLW/4FVtVHZl6tTU+S79wMvlWgkJZOwKV+8szaH/l6gQqitXKRYwtPCM9ywcw+3Vtrfgvd9
	X7OMRSUSiwUWgtBFaUBX4KkTrp3WvQ5yvvpHBpxH885UtoHDSyFNPQ8vmibv5GQHPxrP82q2oCcC5
	uGHj/U0aaxnFeogw1GWs1ebaEtOWQYL8EEUmVu8HfHzd5G2UxrehDuQmNb2LIl10HYsK4XmQcHwOE
	aMw2HM2z5A5FpD0JLw5m0mvvHIuazTwp6YY9ypnctJR+db0SzqKcE5lMp0GeVsoiy6E+OYKD/IQP3
	a9D3S2PMktIVzbP7Q2rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9V00-0007Te-OO; Sun, 15 Sep 2019 13:55:32 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Uzo-0007TF-CS
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 13:55:21 +0000
Received: by mail-lf1-x129.google.com with SMTP id u28so4634801lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 06:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9yLWnDN6ln92Jdj2o7knBNCP7jiqBAtq3iQ/wh0ytfE=;
 b=UOfGW05DYPzMUmboRTKixQ6eSjfDeJS8jVEuNgBHpGLYe7aOZhk3pViA782iZIQy9e
 k5Zz5dgCDsrPLKSx8AwTc7B5NCFuU27NYVJrhC8O6YQliOZPcyUVfEBCM47TtI3YyKFb
 5MFEU/dxkMpPUURKSgMFa/jqG1I+cxZIxff95fJjiTrTpSXWrvl8CM2RpKbtkVq57o38
 Aw+xBJU/OmGUVV4H6KxOkVFtGH16R7uJ0VuaaSc17ecYo4w83Q1ylNCEg5libvR2+MfA
 bRvjKnCmmoKXMQ8yyQPHqm3EbBywKXDilaVAXhFdfBmYwaoFOsK3s9A8sh33Cduwo2nH
 Tz9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9yLWnDN6ln92Jdj2o7knBNCP7jiqBAtq3iQ/wh0ytfE=;
 b=GmiXuuI0aqsHX4SZPa1Xd+01muBIAYUu+gvYxYAZgcamzGD4W3QDHLiVrdMxdjViE3
 /pxJnIPgLw5lDPCqEFBiYImbyiaPNWmjqZ1mZ13Rl8cjPDnwER12fbp8w/gYOTTN1IH3
 eI+3pK6t+lfGdxJMdTs/7V7aUQiTSWUeHSUXZG3+kh4ytmq9IK3lSQsvGX5p+HIs0K/5
 C3CpKQupyByKreavmXK/ruEjskj0D644G7CfEpdoy1EgxHKsf6m3gddiCpXG1eAs7iuM
 gd5h+SWeazRKJYsF0uYzQq3aNXSBEFIYfvoJeGc/IeuGOFSocvT+6g3nhQFkYZoc7z95
 de/w==
X-Gm-Message-State: APjAAAXr7Ump/yqRJpGcqj7548LAG6MH4Y5P7jrtwp8fqfb+5cPKMpag
 +iygvoPkuBr8MUNQ/+GNM+Nn/w==
X-Google-Smtp-Source: APXvYqz3Il1Y3uaKUhxChguP6j7vz0FGWugvS3lRR8jFEKWs7XtEXP3/7b5E8iKL4vD5AcwlwgqfCw==
X-Received: by 2002:a19:381a:: with SMTP id f26mr35850661lfa.168.1568555717908; 
 Sun, 15 Sep 2019 06:55:17 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id y22sm8401472lfb.75.2019.09.15.06.55.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 06:55:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: dts: dir685: Drop spi-cpol from the display
Date: Sun, 15 Sep 2019 15:54:44 +0200
Message-Id: <20190915135444.11066-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_065520_429762_83952DD5 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The D-Link DIR-685 had its clock polarity set as active
low using the special SPI "spi-cpol" property.

This is not correct: the datasheet clearly states:
"Fix SCL to GND level when not in use" which is
indicative that this line is active high.

After a recent fix making the GPIO-based SPI driver
force the clock line de-asserted at the beginning of
each SPI transaction this reared its ugly head: now
de-asserted was taken to mean the line should be
driven high, but it should be driven low.

Fix this up in the DTS file and the display works again.

Cc: Mark Brown <broonie@kernel.org>
Fixes: 2922d1cc1696 ("spi: gpio: Add SPI_MASTER_GPIO_SS flag")
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly to fixes if
you're OK with the patch.
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index bfaa2de63a10..e2030ba16512 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -72,7 +72,6 @@
 			reg = <0>;
 			/* 50 ns min period = 20 MHz */
 			spi-max-frequency = <20000000>;
-			spi-cpol; /* Clock active low */
 			vcc-supply = <&vdisp>;
 			iovcc-supply = <&vdisp>;
 			vci-supply = <&vdisp>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
