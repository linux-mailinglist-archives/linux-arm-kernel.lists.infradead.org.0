Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964FF46F9C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m3+Wvdgxwf4jwiYpwKEL5keRMGXp9MVZ5mc8NxJw7A=; b=GV/GJLnsq3z02J
	6DL501dOlENxmpEOMQsX9jhCbLcrGzIsfC6LdlrXI2Oe2hVSByqzLVmGe/NwgOLS7ZryuDIxlvV8h
	+988y1cqQGb2w8XoQGJhU+ADiHQdfTVJy7q76QFJQt7Z6vjd4nSra35j6H/jg2jbOafVnbMQeylYj
	xLiWlC576ZMyHdajjHIzybq2C5gbz6DnOnUXUTsI3sbgX2sq1A+cqlcAn0CJqq0SODtIKbwq0D0QZ
	3uFxWT3T4SCrG3jAAp5l28hc7SIQjYlayHWV7Zcw4PdtParXuf+Xz8wI9Z+xk2GpgFbFP6hwhMMIk
	X/Wzv8VKITn9l0yrcHXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc65w-0008Lu-6Z; Sat, 15 Jun 2019 10:39:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc65b-0008Gc-HZ; Sat, 15 Jun 2019 10:39:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so4747417wmj.3;
 Sat, 15 Jun 2019 03:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TimQLf28BUhZs7uT+zSn3k4UT1AmjQyz4dSffxOSscE=;
 b=Btqc98H+zDiJhMTSNooCyVZM9aw+pT4W+2uxs0k/OeuS36XxZEW051BU6h7xdaBrUG
 5Uzt2aab/JcjIMwv4AHm4gtCN4Hcq5YvM7+De3x5C3q8PPSat2rMOpsIw9SN2Az7ErjH
 agfpdpnAiV36T1nn8jLuFfeGJ0QMqYPYu0+yKwQ3BnmW9ALpL1Dp0hEW3EbXXqvCyWOa
 vORmOUX82p8xMWAjWhIHe9IkS0ELSg4PPKoCr/GBlXYoZzlbyDR46CU6IAXjarJwPqkK
 Tc9Ifcr4EwB/ORSQoYqwV5crbHealtm8dd9y5YEJod5p2Bk6bVxxNbuuDtSN4QqRPxBi
 0QEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TimQLf28BUhZs7uT+zSn3k4UT1AmjQyz4dSffxOSscE=;
 b=abzsmlmR0STtmU6B6T/EzQfDSsrEPPHVL+plQiWOJVGu5geEKxrSzR2kjZMUaE8BAW
 Q/Vl6lSJiJYIXtqPtab2T7yV2F5F/qAOCmp1RkunM/CTjUPKX1E7ZoB7YSkKQRR0DoV8
 X0BR2rqZ2gZH05HusRERtSAo+ITM/NxeU4oenaHJ9ibuhEsNbDUQ75Mm+we91wLsh907
 +0nGOXzZ++1jthCYMiAPetZCfXyVtxlL6AKDBfTpcWJmBnyLv6/Fak1lGEdcxxXtDSPR
 iHPUZd+JFVajRkWLJz5410zJ3qDyoGlXG/oYqm5pfQ/EffZP6EyNKCjfNsFaBN5exCV+
 ffRg==
X-Gm-Message-State: APjAAAV+VgmKkLC74NWjoKeZjFS2OPu5ohphuBpFN8HFlSGhCHa95xmV
 RJq0XKT3fyMt7k61HxrY5Xq2PRLgUbY=
X-Google-Smtp-Source: APXvYqwkD9m2q7CAv0eVVlX2vVh1T0OsigTsOfcpg3MUm3XGrTqG0vi6zVwW39+OYE5y/KWeTyIo9w==
X-Received: by 2002:a1c:6c08:: with SMTP id h8mr11776798wmc.62.1560595154046; 
 Sat, 15 Jun 2019 03:39:14 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id
 o126sm12209031wmo.31.2019.06.15.03.39.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:39:13 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v3 1/4] arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY
 reset line
Date: Sat, 15 Jun 2019 12:38:29 +0200
Message-Id: <20190615103832.5126-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
References: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_033915_608505_5C2B3D98 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index d37868d21114..3f9385553132 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -285,6 +285,10 @@
 		reg = <0>;
 		max-speed = <1000>;
 		eee-broken-1000t;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
 	};
 };
 
@@ -295,9 +299,6 @@
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
