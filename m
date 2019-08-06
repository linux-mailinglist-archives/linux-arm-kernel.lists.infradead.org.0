Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF638323B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kDm84AvHxLd5UCdJn3Or/l2woOKrbggcG1QO1NnW+nQ=; b=FxIw3KABE62l+zAJxaWv2YsCnH
	NwDeKmmyJdrBH9VGcq6xrnTmZCRfEkCWhDDFNuneK9Vm4IxzMGkjD8aBlO8xjA67s3bAQJjCoAfrY
	wFHPIifdOjuwQodwMuQvNQV6RDyJHIxIpHYciYdCzNtnSfOdu0TUjRQLKdaIIjlmlyhFO217lBn/a
	EMVbJGpx9oivCmvw36Cgtg7MROEG90cJpVj3kdI5GgXTjfu0mUl3EJaAQ2ygwdvY9VhbPt38FRQOs
	uTjhdDBGjWtqAggZtRAlWV3lMZp/GkD3SZP2iHtqUx33M8lYdZsSply3zG2rBLM38jsnEG52uxzAy
	Qsl4Xa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzAl-0001XZ-EU; Tue, 06 Aug 2019 13:06:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz9P-0000Lt-WC
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:05:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so87819840wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qwty+uxLKW1T/NpMTHcmh0LshwdYZ4vWjP/ELdKEa2o=;
 b=D8KntWaHGtZ31QHHDa61n2oMLWd4F23GRShXo3nHC6VQoVhNaFY7sDI/Csy/6Me9yf
 BI/24N1NVcDWsyki+QKrIraE8cg+2vsh/62upOMDFf0UoUPZtP9yavFP8NT+cp4QwCTe
 6onwk+WuG++MfoPTDsWpopIQOXhv6h8asue7aGwn0YDIHZ9qw49q/yI4XBOQ4kqMv4/k
 TQXpXB450iCNK8XIcGfFP8l8OwXWAJ8/N2Q3g3D9Dqzb7GW7QcS7Ua4M9lLgtffPhsQT
 HtHqzc+9c7n9a7CHlTaMzkEyLLYjEDjyCxvwxljpqgjQXKx69nTdjyotbyRsqgePoLm6
 5vlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qwty+uxLKW1T/NpMTHcmh0LshwdYZ4vWjP/ELdKEa2o=;
 b=ibysrk1L6Lk+uGLOG3wbBUh0U5QT4QXL+LnIeVCOaqCPVAvGDLqL/UBPj24ZEvJ4Ke
 ZijbIRTQbyHn1EL20W94mEFzfIcBnduH5G0hhpczFz/l/ubvlF1y/MLfekoe98Rd9vJc
 oiMacWkB9JIb5dM5ElVBB44Lh7o0/UPS6+wJT2a3lg7tPN0XMphE00qvYKK0RlhJHM7b
 mlOUpoSew5eUROfY8ONBdUzZPfJSi60t1WCs2LIoPRhYsCwDBzgG4OHuDFMEVWsVa84O
 K8C+40kwqTyyFaEM/eyP+FRi0A+yWpVfm8ixkx3PK/rWdAq4BjGU7lkIldNjTzh2sJxx
 biEg==
X-Gm-Message-State: APjAAAVxCJEttyqDLavybJkmy4n82r+yqpSCCx/tP0RHCox0/AZbI9/m
 td1PzHp5wB/pb/bIaobw4t33gw==
X-Google-Smtp-Source: APXvYqyVQt4r+6RR/MOTDKyTCAF0jOlW3C9iIlORo2Xif8u4MR5vfYeZfvvigGrDR3y0dOxzfl9wrQ==
X-Received: by 2002:adf:e94a:: with SMTP id m10mr3455716wrn.245.1565096714776; 
 Tue, 06 Aug 2019 06:05:14 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:05:14 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v3 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
Date: Tue,  6 Aug 2019 15:05:04 +0200
Message-Id: <20190806130506.8753-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060516_112320_C61B3DF5 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add minimal thermal zone for two temperature sensor
One is located close to the DDR and the other one is
located close to the PLLs (between the CPU and GPU)

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 979449968a5f..2c16a2cba0a3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "seirobotics,sei510", "amlogic,g12a";
@@ -33,6 +34,53 @@
 		ethernet0 = &ethmac;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&cpu_temp>;
+
+			trips {
+				cpu_critical: cpu-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map {
+					trip = <&cpu_critical>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		ddr-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&ddr_temp>;
+
+			trips {
+				ddr_critical: ddr-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map {
+					trip = <&ddr_critical>;
+					cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	mono_dac: audio-codec-0 {
 		compatible = "maxim,max98357a";
 		#sound-dai-cells = <0>;
@@ -321,6 +369,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu1 {
@@ -328,6 +377,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu2 {
@@ -335,6 +385,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu3 {
@@ -342,6 +393,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cvbs_vdac_port {
@@ -368,6 +420,10 @@
 	status = "okay";
 };
 
+&mali {
+	#cooling-cells = <2>;
+};
+
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
