Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4F23B9A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk8QYHWtnAUEPgCtZK+BFH4+1Tp/FrS0azfSIGqjlPA=; b=CH0axBmld4kQ8K
	0xYtM5PYgXH7dgdWV4CjUMpqjY/0WgQU7+vmRggJ3Iz3Kho78nhJb6rY/8fJ/3H5/XdwSpktNmTR/
	U70szkM3DXC84rSux0ct6hZFC8Nqb2Y7LgjLFE4sUbt/KKZFg6ZJuUS/rButjgY2h3st5uadF79Ff
	rS3n1/lrAmhviK3TxnW3Hh9FzAQtuSCm7aUHItoHzIF5btdIpoxVeiducHa+klni3FpURgvOZQR1f
	0mJxeYy5Asjwv/+h7UhF91jK1kSknlHXYX0aWJQJi7h/0ztKI0sOM6BcR+QdURUrgkNRrYahqT0c6
	jw2+D+QDlDm7LExBPQGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNJX-0007X1-2G; Mon, 10 Jun 2019 16:38:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNJ0-0007FQ-Eq; Mon, 10 Jun 2019 16:37:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so9903641wrn.1;
 Mon, 10 Jun 2019 09:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KxTQ1F+Os2CstmvqUE/BjsdaVh4oEyh60Z7ykMvROWk=;
 b=QLTuSuj3WHPPBmJoh+N9vUdSULd+erekE60GenRMZt59UbozmhACV7Yjb3myqpck6W
 UkQaAtfF/Je0oyPSby1AFeWvGAMv7IQMrgEKgDNN/GmXNlpRM4krdvEswGBLQxTobou2
 sLR3motEd2W6hCHtu646djUIcYCG0UWNuY+VbmdFdrRk8yWYkiYdVndL6Rn74S8F4MA2
 o9zB4DGkIIszPVU8kNOYujvrgKkLitbL647VGRih64Dqx+N1Y5tdpXGcoNdDKsrNnVbk
 AIXm80Vj1e+kcgjCl7pZEXF9iwUvuIQuR2mMninEv1svbzPK9y8T9AMosxiKchj+lVpU
 Otqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KxTQ1F+Os2CstmvqUE/BjsdaVh4oEyh60Z7ykMvROWk=;
 b=DumpKViCxNj7UoMeVGkheblicUwZDtPjePzpt/qiTsCCtnrYChSK0GFsDw77t/CVfZ
 OetrXdxBNo4SVUnMWVyE15Wpv7i7aTKhHk72NoXQRiXCgjyTLXPiSnIHTP5wHPj++gYi
 QcZcUmCAIFuvnrWnTXEdPxDgJE1LD45CA+MwWwplrk/Y5TXyiDr4Gli3I2NVjcg8gRIa
 THxggc6ZdT0mIaKkPyXx0+eaT0MDWjPpn3D+MPjNl7WfH9KcJzo8JgR4OtuJZHtUhPZR
 Ry7UWMW6t3k+2+cJrRfs3t4m6VGInu7Vc7f05NuJBGKcehsmmFx70UYXnqaeXRYSaNan
 Dd2w==
X-Gm-Message-State: APjAAAVZjWRZldwXB6uIj5e/Rqtk5RvhV7RhKcVtATJoGyBJE0FU711M
 90Us6l3dg7ESttEjjNX4m2FtAlD+
X-Google-Smtp-Source: APXvYqymOhPQpHS+sVuoysG67YOlj14GSswxsJRgQv96Ns9FMgYV4kLExlHBDM2UuhVfgG+Ilrv9Zg==
X-Received: by 2002:adf:e311:: with SMTP id b17mr46082967wrj.11.1560184676657; 
 Mon, 10 Jun 2019 09:37:56 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id g5sm13900517wrp.29.2019.06.10.09.37.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:37:55 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/4] arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY
 reset line
Date: Mon, 10 Jun 2019 18:37:33 +0200
Message-Id: <20190610163736.6187-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
References: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_093758_498057_9A8565D4 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Odroid-N2 schematics show that the following pins are used for the
reset and interrupt lines:
- GPIOZ_14 is the PHY interrupt line
- GPIOZ_15 is the PHY reset line

The GPIOZ_14 and GPIOZ_15 pins are special. The datasheet describes that
they are "3.3V input tolerant open drain (OD) output pins". This means
the GPIO controller can drive the output LOW to reset the PHY. To
release the reset it can only switch the pin to input mode. The output
cannot be driven HIGH for these pins.
This requires configuring the reset line as GPIO_OPEN_DRAIN because
otherwise the PHY will be stuck in "reset" state (because driving the
pin HIGH seems to result in the same signal as driving it LOW).

The reset line works together with a pull-up resistor (R143 in the
Odroid-N2 schematics). The SoC can drive GPIOZ_14 LOW to assert the PHY
reset. However, since the SoC can't drive the pin HIGH (to release the
reset) we switch the mode to INPUT and let the pull-up resistor take
care of driving the reset line HIGH.

Switch to GPIOZ_15 for the PHY reset line instead of using GPIOZ_14
(which actually is the interrupt line).
Move from the "snps" specific resets to the MDIO framework's
reset-gpios because only the latter honors the GPIO flags.
Use the GPIO flags (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN) to match with
the pull-up resistor because this will:
- drive the output LOW to reset the PHY (= active low)
- switch the pin to INPUT mode so the pull-up will take the PHY out of
  reset

Fixes: 51d116557b2044 ("arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet Support")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 98bc56e650a0..24956edaf8e2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -176,6 +176,10 @@
 		reg = <0>;
 		max-speed = <1000>;
 		eee-broken-1000t;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <10000>;
+		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
 	};
 };
 
@@ -186,9 +190,6 @@
 	phy-mode = "rgmii";
 	phy-handle = <&external_phy>;
 	amlogic,tx-delay-ns = <2>;
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
 };
 
 &pwm_ef {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
