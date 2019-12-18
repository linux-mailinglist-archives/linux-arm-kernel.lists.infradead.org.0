Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248A2123E7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kW+XQSRBEbW3chrmk4Hlpn3UtijDGyaGE1DrX1BYkxc=; b=DdHJ/CpYnQgjqI
	Wcn7csCqW5fs6t14NEYxRKgdReTVkn9s7P5nrmQrxw2bFRmrSn9JvIT/pZ9OBArLaiw3j2//lbjCp
	0YiuYtYtC2MC0V4nlDFHNli11npC9Y8laIwGzUbFpcIgenge4bKJHClu41WTW1Lxg2e0Cs8OsWaR6
	XS2AVH3QibXvMDQjBLOOlDRiF4vsnMueIwE6A2tcKkYyn8YKeAN9ohDfqjAgLw7MunaB4XLT9AikF
	Syn4ECpuqBmUvAHwG5aEtNN1OjKGJ+BEoKFBuspZM5f5pTDDCNnr5MDklrilhMOSWyyXEXY4kFcXk
	DgCbBz7zJQuyI0Ay2H+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQsK-0002Q1-7l; Wed, 18 Dec 2019 04:23:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq7-0000hn-Uo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id f20so377079plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z2d+ahFeOkEATCdRxK9eTJRkU69hz2zRKJpFAKDhJEA=;
 b=D0pEVsIipKoUZRq4dcGZk3Ly+nbar7xAXTcPpuLieCLHUVMgyiUhlKh0E6P1ZHTrQR
 /NQXEVt0TVbHrfMVuqUI9miC+4UOUgnt7voHAwdg1AaO1YigjcFMrVgDrnvSt5xynUFB
 W8ssEW1T+skz8LNQay5lDS8ubvEy7mH+eS5kkL0Yzb98UGOubqvHlaamSZlbtOy94m7I
 QpvhPbwE+wHox1xSY7pxvf1Me9XnewU1PEo5Ei2KNhHr/iBSSHI2MrKUlbnnbYO40kjr
 osSjJjP5G0MZWaGwYExQtKpw090si9mTSRRZPLhxKb2J/R2CCq+E0YjnQBeyHf0oJ7+A
 qWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z2d+ahFeOkEATCdRxK9eTJRkU69hz2zRKJpFAKDhJEA=;
 b=qw+zVD1vKvlQWN7Ttz5dd4FXz8jK18GYPU6iCslp6hTwgdbVewxdEdflLlYiP94lqN
 f/qIkm+VNlCEblbFaYZGx3PV5/LJ4Qu1j/a5d3jJ/LjuXUmOTSyYqHX9AnCj3bOcuHrJ
 kDX+0cjtkJSzcLFTxMJtOpZlceTfrvrj2CEKhqqKX6pVF62QAQVsBRdXFaqlWrMz6OOH
 SNLEOKlRtc26UqFjtdPy1Xh6QrqXrVlSARNR/+Gm/p5dOPe9K94P1MDp6u9HTph/PAl9
 mVnB1ovVLKJ4m8GnpR2bbMxNqJZzKBBrR0GaZB5yMDzkjN28hL/JgGgQT/c8gwh2IjkH
 nK9w==
X-Gm-Message-State: APjAAAVowzZ9dxfRReIWE9bGYJdRRSocWlt7Dz4Y+h3aZYozfbyzeFfu
 JrDKkd82EGaROua0nNgsFzw=
X-Google-Smtp-Source: APXvYqxgn2rYYrjJ3k3VjIa+89rQz1elMpM1AwMjdLVAf5B6YfYs2+o275CoGDgufuj15z4XTuSpEg==
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr287449plf.213.1576642894642; 
 Tue, 17 Dec 2019 20:21:34 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:34 -0800 (PST)
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
Subject: [PATCH v7 7/7] arm64: dts: allwinner: a64: Add thermal sensors and
 thermal zones
Date: Tue, 17 Dec 2019 20:21:21 -0800
Message-Id: <20191218042121.1471954-8-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218042121.1471954-1-anarsoul@gmail.com>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202136_022969_83E162EF 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 27e48234f1c2..e6556c6d7777 100644
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
+				reg = <0x34 0x6>;
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
