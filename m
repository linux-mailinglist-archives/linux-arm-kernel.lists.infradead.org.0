Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2BC10AA3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIFy7oZ6sxQlwnl8xYPL8jcmVzwhvI97YD2amTSVq48=; b=pLyrMXL2bfI7HQ
	qGitWLiF3PABHGONWi7DPVFGoExQ0JWtbW2AMXejFm5KI4BOOC5vvwMljSXLVl1oLyI5fyIitgs0R
	FVscxB/eEvcD9cLi76rSnjxhPvzRt68zFgtJzbgSx1/+yL35rw+NfgEvJwsi9Q2o/WkOVbslM7+ca
	DwbOyEsnj+Q+oemN3PPx2Ht1vWhqYx1QeqxjtFf6Qk4sM9KaCqkOYre5rmeGuPiwAiUEXNxY1nj2H
	E9ZVcbvFyGhxX+w+uOLtTFN9CGBuE4GOlocV1F8CtUv4H8KYLLIYUoKCNbQ31VBPe98u0tlcVgKPf
	WjFYyI8ZL7kwrS3Y4hhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpvS-0003LE-85; Wed, 27 Nov 2019 05:31:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZpty-0001PR-W5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id z4so10371178pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x/g/N4KzHVV4RuzvNHUGZqmzy45B3KGb/OK0/1dB9T8=;
 b=Gxdw2rKqQP1tFFYTh/7YkqTFLDu3h8wGRO7A1pwADtbKv2Icos2XLtwyzFORJg/COV
 TGLg+lJEUAZMQtn6c/DFzattserk6a18kPE5ZaGOBFHdH+5MrZecQxb6/iQh3dbUrT8u
 hdlMKJw3tj/OITbVx3catDXjgCa6Lb2AWMv0s/4UQzk91IWq2EN3SZQILiAtMa4BcQ2g
 CEBOf6ALxwOV0q2OndJ+0UwkdUHDI7Nu3zV/2kzhFWqRZQPfCP4rUcgLPteBn5Fxh/24
 jDN2vJM4bRSFNsu0p62O3obzwE92hYEy7tibnNz/X2KCALhL0CwRtQDB/Tb7pBcvQ0be
 wNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x/g/N4KzHVV4RuzvNHUGZqmzy45B3KGb/OK0/1dB9T8=;
 b=jwg2GPDWZbILVDcJ/0agICXfJ7Z2pxGDS4usOIiJN6e60tmgnPgC2S2o4NnEGsfIhd
 NoF21EeHMu7tkVkfVVjiD/T27FXJKSDWFEPFRy4zpsN6a5lTlR6xsWh6ITpOQ3i+rWfS
 vQhegVeoCy22vz77Yg33/dmz6zMXRaYmnY8HImpbCtqbgtWyFo+LUyMvzR+/OhpiphTI
 aE+fdl85/uGRHokyR28zoBl7qsnyf7nMsGauMUjUO3EiITz6Mp6A9URvhXgk6LyD+yq5
 /NfcrdAmqRmba1Fsal2LERJIKedK+3Fc89vMZlaqr9heuM8PHC339tmH0r2RfQu5NRgs
 X3tg==
X-Gm-Message-State: APjAAAXFzCcBcrwZjVtCbO09C2Dlybxj+drMOUJ93KFG06ABiOHQBvkQ
 bHxzz44F+q3f3AbujE3AvvI=
X-Google-Smtp-Source: APXvYqytlD1vXHcdOuDq5LuRIkSh1p/G+80uJlZCuAO/WdysYgSu7XidkxJyqo2lBaGefFezyXGcUA==
X-Received: by 2002:aa7:8517:: with SMTP id v23mr44949740pfn.75.1574832608526; 
 Tue, 26 Nov 2019 21:30:08 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:08 -0800 (PST)
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
Subject: [PATCH v6 7/7] arm64: dts: allwinner: a64: Add thermal sensors and
 thermal zones
Date: Tue, 26 Nov 2019 21:29:35 -0800
Message-Id: <20191127052935.1719897-8-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127052935.1719897-1-anarsoul@gmail.com>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213011_149342_5830CFD7 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

A64 has 3 thermal sensors: 1 for CPU, 2 for GPU.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..59ef6410c6e0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -49,6 +49,7 @@
 #include <dt-bindings/reset/sun50i-a64-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 #include <dt-bindings/reset/sun8i-r-ccu.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -202,6 +203,29 @@
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
@@ -476,6 +500,12 @@
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
 
 		usb_otg: usb@1c19000 {
@@ -792,6 +822,18 @@
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
