Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A2398755
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 00:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bre8A3yKYQKBwTGYpf7Ec7KKLXQdWmBe2a4cafxxiPg=; b=gV7v/EsZFC83WiTbEV3nC2NHow
	voHW8bwWfmK+jrG1XYydii70UzVWnN8kpEReEJ6xsVwnKAiD2DvLEzz+GGl8TWi1gn1lVhCSyn+mk
	g+6SuAkuoiTSOkQmKlU3ltM8PF6KIyVYVl/OfkCmH0wjBWyce1ionSO6oA2YudfLpXv4Wv5D18Rz5
	KuUN6A5wazzAw3tEz2PQiS4GoMDJHq7buzieo8mGzyAF+GYZRVMt811V9tPnEvVKAoFlwKNfpIegZ
	AH4eD6IuiZcXB24rOd6mhpoVX2Mbon6l9exbii+/ph1eQZPFLs9JMPSfuuvcLeBy9pbI6nCjw1spI
	cCWYSejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Z2j-0004EE-77; Wed, 21 Aug 2019 22:25:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Z1p-0002Bq-Eu
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 22:24:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so3476407wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LEBx2vHRiP3hDZBSXgO5N6WbayFm3N+ToBekBZ2ae80=;
 b=mlNmHTuJUeaodKjc91t3wg+4JlBjT/LH+VA758Zj6nkiE7hXrsWI/mSxhdJF3LlIfN
 KGTZ59i6+y2dJ/rTaDixhBoJB3jwQWQ6Qk1P9wL8pX3ki70kmJQA6PaumDOSdqxM1sJw
 RBX29FFspJP8EmIp98jni0A8vu8/y3PXcfWROn+QcuL44TG6kAnFtk89g890x2IWr9As
 stZpX47MV0NOEajpdVd7wmyFvRp7rKyf7xnXNRwoAgoVrisjSFgKOSSdF16OERnyjwHV
 to4DG4Odnat6/NCIvXuA24WV4w6iWwdkokI9KY2AprKRkD+NAWfrO2kkQuXkmHbfNtKJ
 oaKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LEBx2vHRiP3hDZBSXgO5N6WbayFm3N+ToBekBZ2ae80=;
 b=mepeQkohkRXUiSgEL8pGJWd8ZcvWJ62ixpOCakFMs6NYg0B7ZP1qTIbnF8oSz0Nfrn
 Roq5sBpeYm6iMOwyATEHEBhG7N3EYihEJkBHiZFKejjbIA1WsVszl3PWNeCyOyzqPLHa
 nEXGATUHgU+OO8c0eIBCNJ5HmiPJUtOzS8f8EHhzv+Sm0YoNNj9ZmPdZKUnv7WBVg8Qw
 qX/Dm5Ix46gtYRoq/mu8kqEMVuEqqUUD5u88TByouaYl04lsMci+hF7qe2ItPBPdJspT
 mDwWWwbu9ECI6fXcfgpSdJcb0AKyZ0UWVBAqB+N6vaRWg7jZ/rbH13tQVMClZznBa7il
 nFLw==
X-Gm-Message-State: APjAAAVa+TnCAG7IWdtsjo/AGeTSAukleaIzjE+5WHKCiuNqa2fUJ8Nh
 AEu2yngRovSHgu9RuCy2f+y0Ng==
X-Google-Smtp-Source: APXvYqw01wEmbQ6VScaWNUUHN/sT9b2JnBtntU+d7a3SpWfg23SXzSKw7uEKuW+VufQEHQl/yQQFog==
X-Received: by 2002:adf:e787:: with SMTP id n7mr19204372wrm.57.1566426268223; 
 Wed, 21 Aug 2019 15:24:28 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id f197sm3548549wme.22.2019.08.21.15.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 15:24:27 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: rui.zhang@intel.com,
	edubezval@gmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v4 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
Date: Thu, 22 Aug 2019 00:24:19 +0200
Message-Id: <20190821222421.30242-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821222421.30242-1-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_152429_497684_50690AF0 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index c9fa23a56562..35d2ebbd6d4e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "seirobotics,sei510", "amlogic,g12a";
@@ -33,6 +34,67 @@
 		ethernet0 = &ethmac;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&cpu_temp>;
+
+			trips {
+				cpu_hot: cpu-hot {
+					temperature = <85000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "hot";
+				};
+
+				cpu_critical: cpu-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_hot>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
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
@@ -321,6 +383,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu1 {
@@ -328,6 +391,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu2 {
@@ -335,6 +399,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu3 {
@@ -342,6 +407,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cvbs_vdac_port {
@@ -368,6 +434,10 @@
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
