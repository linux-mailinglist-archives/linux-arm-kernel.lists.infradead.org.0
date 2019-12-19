Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4318D126822
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nanSQiJSmMg4bcQwgkxAGSBJFFFA4TNkUz+azAHBlIQ=; b=Bv3xeSdu6ivBGb
	mCByfXuAXLyrz9K9dDTEvaguUBd4LZiCsb6YbzwPEbPGnkGqKxku/R7G/ZzWSIjcNEhCM4ZeqAJRG
	RQwl4lYno6PsiGcrCVudDJvy+wnItUfZuLXorIO+Eevlw/LT4nH2joTiOfT+Tws3pnrTyDqWQzCWn
	ooI2Mm7g5LhWLUB/+B5Y/Jh56LALLru90OO1HIXmqBE3RF7gR7dNjmMLFTqH7Tg3aifPLdFz1HEUw
	gUmIc1Go+t4YtRm/9bAfzFqvq858QqJFJtYoEAH5KtFXnkWIzabpCYIGNQy7Dj7COAEMf5hVetkz+
	wmfQPtTVvip3miCIyn9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzdJ-0006IN-Da; Thu, 19 Dec 2019 17:30:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbM-0004mm-DY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id w62so3638778pfw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MwC4kiAoJwmEvvok2zeVWvSvfB/Rr1Rx679AfrnD9Mk=;
 b=SAAf6ZgbMdOKdv1GrrqnElwrVXywbB0KX9GusukNVriXEXoUlPXNyGUWbHBDJKNDFy
 smeLWJYyC5r6pORhVdlwNpn2s8Wr9uyBLVAGPwXUOOPEpB5zy5hjhosvEUzdeFMEIahD
 IzQgzG7uKN+ZaEAnpoPEv6RXeGydfJb6ZsLIAcw+F9AntFIxe5yacP16Iyd3b+l6kd+P
 UY/A3HeqsvHVamPiHdUiFl659pYsRy/mXBiWZf2G9rnCdQn63g+ITpcGABiOian4KTyI
 1wjegdG+s0JYrRhsrqKPaLu0KdGzkNJ1IVcoVkfdj8Q7E/ttSGMzcMI7JaRemh7DMOfN
 0xpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MwC4kiAoJwmEvvok2zeVWvSvfB/Rr1Rx679AfrnD9Mk=;
 b=ZGwQsCTmYeAlk8W9A3gVkikGuYsthY++OpoB8RdXj59ioFW8rx25On1PaPnWRGpi/+
 9xHDmogTI7U/ZLTUZ9oqulUVKkKkBZTvn5iWnezNrxUpd6iG1YMl5cweIVkJJS4U5mpm
 5fffzEoUmdUGcrdmMIVVcE+Gvi/+08JxwwJZi3MilvEEUwoQvoyDYFKA5VDCZ2PGHQCL
 EFkFqWYCJdBLk0I4B5RxMqN2GWKfE+ss/MzCI5Z1dbHFrCgV86IKvr4F8H5v5Qptg33/
 0lJnTIhOCrtethP+Hi9dg4N1ckF0Iv1QgrtaTf2VasXGdlYeOqEVkHJ7pTbKF3wt7/e4
 nZ/Q==
X-Gm-Message-State: APjAAAWuqwl3K8rvnwM40ujnZTavJxgNdaPCCjOW1hB3Oq4HxSjlOWwU
 bR4RdZ8g6eoCNy5uh1fLhxg=
X-Google-Smtp-Source: APXvYqyVNvInPOQdrmBibp/K/kkCxmf5pOhmp0ulb+jo692+qlMdkERyFVpZr2PVs1LvheGU687kbw==
X-Received: by 2002:a63:d351:: with SMTP id u17mr9931490pgi.84.1576776519539; 
 Thu, 19 Dec 2019 09:28:39 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:39 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
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
Subject: [PATCH v8 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
Date: Thu, 19 Dec 2019 09:28:22 -0800
Message-Id: <20191219172823.1652600-7-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092840_502601_44350F60 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are two sensors, one for CPU, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 33 ++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 29824081b43b..345a4c851c8d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/reset/sun50i-h6-ccu.h>
 #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -233,6 +234,12 @@ dma: dma-controller@3002000 {
 		sid: efuse@3006000 {
 			compatible = "allwinner,sun50i-h6-sid";
 			reg = <0x03006000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ths_calibration: thermal-sensor-calibration@14 {
+				reg = <0x14 0x8>;
+			};
 		};
 
 		watchdog: watchdog@30090a0 {
@@ -856,5 +863,31 @@ r_i2c: i2c@7081400 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
+		ths: thermal-sensor@5070400 {
+			compatible = "allwinner,sun50i-h6-ths";
+			reg = <0x05070400 0x100>;
+			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_THS>;
+			clock-names = "bus";
+			resets = <&ccu RST_BUS_THS>;
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
 	};
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
