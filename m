Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF4610AA35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4UqANpPKeW2Paylgzz1lnBAl+yvY40N2LDedU18ihY=; b=nL/Q4atoo0kWlz
	MBg4/oAuCKLWMYjc/bd0mSW46CAPbUDidv8S4oFHUYHzM2N9JFGCJ5ZgnDtzhcBkbXin1XU0lTT16
	Npyz0JizRiGmkayxXDXOqZIKj5yEZ6DpFDG8B87Mbc3r3UYoJIZktxuV3vuFlFMShxaAuJV9XWpQy
	7k+W1KD7j2Q4SImgYb7XygFqPbuJDR/zk3RzW5JLAdF4vuAzyHGBb5Tm8dUMNoelLHsYO8D6hiMv8
	mxkRenS7GOS+fAGoLeFk0vC3qtykVc9IW+iMye5Y5mvT7n+AOhSz2Oqnxc9h+vQxWteim/AGnV+SP
	dB0mE9TvgsOqwqcs/UvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpuf-00029C-Qr; Wed, 27 Nov 2019 05:30:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZptu-00015C-82
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id b19so10394987pfd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=irJ5JXDAAWtDIqC+IX6BV3MY5DktCoDeX+ljdjsD0XI=;
 b=mhEmJx9hcwu5d1h9HTaGxnILMXdc/7kSoKUUBfqVL0r1k5OXwgnv8wBTxtEFm7Osky
 BFg1rZoQso8y0b6302pp7BaU6+l+veKvr2d2k2iM9ye60J0mT9tzXyyvA0jRbtNO2KzX
 lOq5tGLsjneCg9GQMW/nq6V5gV7PSiMxUD0S2YbTNYlq5pZ+mCIMmN+GQPRZdXawACG0
 St975uAtwxmbBvx8FfOv9jB0VDJXxkgm+CeqXCFg+Klenk6sTyMuIFK/ADzAwSy0H6bG
 CFgWgJacIFBmfjca5oLZD5f4LJyyKsjICugTWvcXlMJPGHkJ33kkPALH0jtrNDtwIcPz
 YEpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=irJ5JXDAAWtDIqC+IX6BV3MY5DktCoDeX+ljdjsD0XI=;
 b=EpuMekr3YY0eEaBTUiXvBvluXVRN0mJRuQ6cD6BxAFFon8bRh+yIRQXJXmEvO2iMtO
 tdXLSWG/k4mUSpSTlmsFX9/mFiheHcB2GbuI3kPiANdD0nwhzYW4FDbodOaZJbIHdRB0
 qC90Lgb/x2UKeBuYM064kmAYCTrFCiP3VTkKH6WXHqI5Y2RL9IyiWjNcNhqH03VhaUON
 5wZV9TS3dVAnJ1cZiV5MVjyZu1vtcaMIm+CtBaqkHgC9Q3Alg1wiwStB0iOW5ZCri3aY
 kcfyBUuyLTuuHboCHdN4L9yvDwJ7RGiGLjm2W6j0WtWvMiA59Cf27CyJKZVnq57zAyLT
 R3Ng==
X-Gm-Message-State: APjAAAUisp2clQ4gyM7nxuqlMbKC6TgDcNkOm27Jk7rjIGlrAkm5q+YZ
 N5AIiNBTbbREUsKmvQLVjqbiek0wC30=
X-Google-Smtp-Source: APXvYqz8sVivaA2EbLiosDrKvBFKz+ssRSlkYw2TUmhAhOCKERRFiVZSgC2YBw7AstdoX0IbBoWQPg==
X-Received: by 2002:a63:2b51:: with SMTP id r78mr2801429pgr.4.1574832605006;
 Tue, 26 Nov 2019 21:30:05 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:04 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/7] ARM: dts: sun8i-a83t: Add thermal sensor and thermal
 zones
Date: Tue, 26 Nov 2019 21:29:31 -0800
Message-Id: <20191127052935.1719897-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127052935.1719897-1-anarsoul@gmail.com>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213006_336063_C6CBF673 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are three sensors, two for each CPU cluster, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 36 +++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74bb053cf23c..902fee8be688 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -50,6 +50,7 @@
 #include <dt-bindings/reset/sun8i-a83t-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 #include <dt-bindings/reset/sun8i-r-ccu.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -581,6 +582,12 @@
 		sid: eeprom@1c14000 {
 			compatible = "allwinner,sun8i-a83t-sid";
 			reg = <0x1c14000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ths_calibration: thermal-sensor-calibration@34 {
+				reg = <0x34 8>;
+			};
 		};
 
 		usb_otg: usb@1c19000 {
@@ -1156,5 +1163,34 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
+		ths: ths@1f04000 {
+			compatible = "allwinner,sun8i-a83t-ths";
+			reg = <0x01f04000 0x100>;
+			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu0_thermal: cpu0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		cpu1_thermal: cpu1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 2>;
+		};
 	};
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
