Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43CA126823
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4VZrSWZqDrI5S1harq/JKy9n2ynk8HY+pfo/l3ouz8=; b=BOHPIcSeL6lQ11
	5YsJQHex63VI2nW0J5Vpb4Wsj8k96ScNC3OTRiX8em3fiFFBeW8X6+Qm9tyV1zutKMh+sCWev5/Il
	i77i+Q2mP4SIeS6xUEi+r7gu9nF1WhvzCNRye+bsd4zN3Pdqj+2hkD9tY0zFfq42sweq6FtkCAcRQ
	T4bVW4I+odbjbZg6psgfFNTzDhtJGkZ/Py2bBVwcw6rYaDh/hrgmi1E8w68St4JfZAvIK1/R6XDu1
	jEjYD6T81fWk86EXHez1Y0RNCp2zXluosOu8CgrW5RHXpQYiWaB1FdLGZrD1VxxcJRGG/bIf1imaf
	LhCY6eTzcVgco18CRKNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzdY-0007n7-Fq; Thu, 19 Dec 2019 17:30:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbN-0004nq-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so3482279pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yf9x7J4CUf5atAEG5GNkhAPGZNNfFUTHbw0cShPeAGo=;
 b=lf4LeI/d3WIz5hIkRKhsC4D++BKhL5mFQ1ddsTVWfwYGLuI+zaGphyAfHXoQv7O9UJ
 JINyc3ovjehf6FedEq0Vm1k1+eZg8UAFCGlFFII8H2g/T9fxn0FBsgumCApIJKgnvGnf
 P79O0u2LS8dv7/P3hvqJcUPoWzC2Zun4hZPcrBB3uidhZnrfBg8ho61fcbTNEQw2ag1v
 1EiYl204ha212XtwhHHeJs9eYXaiXeOA7845p7UWu0H6G7eyDDnz8uX913Zvg/zhuTJ3
 4Vz0e614YSnXnm9Qu+msVxoNkH5G3MNW6uthvgdyxJaYMu9cHJVpteAqIaBaSFBiwhIy
 0oHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yf9x7J4CUf5atAEG5GNkhAPGZNNfFUTHbw0cShPeAGo=;
 b=uR6hM+wp1imbJjdMNg3Q3h4LaDHCQlJBBtBEWCl45OLRo3BgFi4bQyban+yZwOMq5J
 i1xpSlUAHmR3ICHTuAOH/LdGyyDuE6lbrjecGwEMotImjo7i4fBBnRDj64PG0Ldx0d4l
 OTVXp4PMfbIDFM+bFHDNJXcJ2a+ZM/ZjYFm9mniFVnqfyqDuBVHoRhl788p/diltUJFQ
 0fAK3RIVWGOIzOeAk73oLsVLRDr6mOo+Pm0qDpk3a/LTmUWA3d6EZ1invSs193F2sTjZ
 8uLxmuw9HatuIkniEUWKNAlMueEYJ9saWO3Z46blnldvKA9vlxJoh1Xxafh4TVdpInQP
 10Rw==
X-Gm-Message-State: APjAAAXGq7BXWveVrlfBPebYcVGLt4Y4emt616Xbn1mJs3o7IsASpAl4
 YrvBjH4O0MCi3qfPtpCFxwo=
X-Google-Smtp-Source: APXvYqwGLD0638hkg+H61q0hZkuVBkX9PZVyf2VbtSBiRWlWhG2C5kOYGaK/AsGEtYD6+crgshGN/w==
X-Received: by 2002:a62:3343:: with SMTP id z64mr10556181pfz.150.1576776520564; 
 Thu, 19 Dec 2019 09:28:40 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:40 -0800 (PST)
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
Subject: [PATCH v8 7/7] arm64: dts: allwinner: a64: Add thermal sensors and
 thermal zones
Date: Thu, 19 Dec 2019 09:28:23 -0800
Message-Id: <20191219172823.1652600-8-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092841_249943_ECE7FAD2 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

A64 has 3 thermal sensors: 1 for CPU, 2 for GPU.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..5e3f16c3b706 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -49,6 +49,7 @@
 #include <dt-bindings/reset/sun50i-a64-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 #include <dt-bindings/reset/sun8i-r-ccu.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -211,6 +212,29 @@ timer {
 			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	thermal-zones {
+		cpu_thermal: cpu0-thermal {
+			/* milliseconds */
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu0_thermal: gpu0-thermal {
+			/* milliseconds */
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
+
+		gpu1_thermal: gpu1-thermal {
+			/* milliseconds */
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 2>;
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -485,6 +509,12 @@ mmc2: mmc@1c11000 {
 		sid: eeprom@1c14000 {
 			compatible = "allwinner,sun50i-a64-sid";
 			reg = <0x1c14000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ths_calibration: thermal-sensor-calibration@34 {
+				reg = <0x34 0x8>;
+			};
 		};
 
 		crypto: crypto@1c15000 {
@@ -810,6 +840,18 @@ codec: codec@1c22e00 {
 			status = "disabled";
 		};
 
+		ths: thermal-sensor@1c25000 {
+			compatible = "allwinner,sun50i-a64-ths";
+			reg = <0x01c25000 0x100>;
+			clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+			clock-names = "bus", "mod";
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_THS>;
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+
 		uart0: serial@1c28000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x01c28000 0x400>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
