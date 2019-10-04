Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0208FCB6EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VR7LpwSN114XseCTDrefUqnpJ7OakcmBeQZImoFaDqQ=; b=tPWXuMGu4e1581bLAOT3sNpGyt
	+WXmIBg9zFTK7HJM257Yy9XSi+rQVqvMr5JwSEe7H27hllDioitfKL/G2jVeousgpfspifPrZ9bV6
	yhsoBvkNPcLbxGkEr6WgjXtqECenSThOWlKp10iDIR9kQEXCVcz0vZMDrH3gmRMf8qkVuCOOclKqF
	KbmogvHRHVmjyDymbonvDhkAyDpOuku+hWq7yc2l1I0UiciRvQu0//NUBmDFZJ+G67PLBOvHdS0++
	R8hJPqG1vlkhYP4BLP66zsOn+Gzz2D66cBLJp2TYAEU0E60UzsT90YgE47MUlYF1QiwbMvDd/1Lq1
	l5U6s8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJUE-0001wG-2g; Fri, 04 Oct 2019 09:02:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJSl-0000hi-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:01:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id 3so5001725wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 02:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gKlncKkeKiOPhKAIhttqbr6HYS2dTyRQP+4Baa5xLmI=;
 b=BSv5Bycmn4XtgAhc6+7VYH4IbEvzSwbW2t+hZmS2GoP+VLplDuZF103AwDwHjtjW4V
 q4gJrMYJPkkiFHyNjhp/zm0QuBXfOMO5PaXUJhdIy6XUuxufRovFlvp2C59lEyXSuvcw
 Kd29tObmyi6qJDb17C09EvX7ko4jurraqABZsn16WrjpHBkZXTUL3PhTE7A3JnDzBVdc
 fLZi1uUHFLh7oLJHx3RB87oPPEUtd4gPkmF/WB6hHoKv97bLTJE3UuqZiQmAH9Q4sDeC
 t1nRvr7AZnpwjKwqB4XY1L3eX9sLtponVvNE2z2Td6P1RqQGnYNQcDR4wu2joV7BI4IQ
 scKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gKlncKkeKiOPhKAIhttqbr6HYS2dTyRQP+4Baa5xLmI=;
 b=sj87dB+C9U9q9FhjBPFcpl7zWH1XLmbWCeD8VBlhHp+oiqJFOV9RKer0Pt+LwYDUpW
 /oJ+JrhvifNCAYhZdnQ/j+YqVLfKtjry0RQk1mPWFBiJK510/NVFq2JCK7EZ4lan7Grd
 R92lOyy7vy7ku+sjwQ+x/LTE/sBK9NdhGm2pYh9keT84FYFFzwXosYG8lPqvMPyTdJqc
 vPFOTZO1WQS5yCDhSDy1hy/ViTm24K7vcUPtkEjy8eetpvTL640GmlAzNZ528wiVmxEV
 JIMfpldmKLG4z3NUp5X9am7oPDs7dVRcQGwtVVPyzRlcX61mJ3EexL5OubpLy7oQxiQe
 Fj2Q==
X-Gm-Message-State: APjAAAX6JCtX9sY8YMFytSPX6/BcNqs5cSYEfYz0EafczUlxY8/IZzZ6
 J44nyOI+j8pGYr7Ix8JQdZfAQA==
X-Google-Smtp-Source: APXvYqx8aNzo3ZYZjTc1LIfBgqGsmtdQFK4IhoYvZX3PB6pFJxFE5P7+1MnQrQAZfG0vVA7IaIiSbA==
X-Received: by 2002:a1c:a8d8:: with SMTP id r207mr9701863wme.135.1570179681779; 
 Fri, 04 Oct 2019 02:01:21 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:01:21 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
Date: Fri,  4 Oct 2019 11:01:11 +0200
Message-Id: <20191004090114.30694-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020123_485960_0C18FBCA 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0660d9ef6a86..a98c16e163c2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
 #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -94,6 +95,61 @@
 		#size-cells = <2>;
 		ranges;
 
+		thermal-zones {
+			cpu_thermal: cpu-thermal {
+				polling-delay = <1000>;
+				polling-delay-passive = <100>;
+				thermal-sensors = <&cpu_temp>;
+
+				trips {
+					cpu_passive: cpu-passive {
+						temperature = <85000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "passive";
+					};
+
+					cpu_hot: cpu-hot {
+						temperature = <95000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "hot";
+					};
+
+					cpu_critical: cpu-critical {
+						temperature = <110000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "critical";
+					};
+				};
+			};
+
+			ddr_thermal: ddr-thermal {
+				polling-delay = <1000>;
+				polling-delay-passive = <100>;
+				thermal-sensors = <&ddr_temp>;
+
+				trips {
+					ddr_passive: ddr-passive {
+						temperature = <85000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "passive";
+					};
+
+					ddr_critical: ddr-critical {
+						temperature = <110000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "critical";
+					};
+				};
+
+				cooling-maps {
+					map {
+						trip = <&ddr_passive>;
+						cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					};
+				};
+			};
+		};
+
 		ethmac: ethernet@ff3f0000 {
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
@@ -2412,6 +2468,7 @@
 			assigned-clock-rates = <0>, /* Do Nothing */
 					       <800000000>,
 					       <0>; /* Do Nothing */
+			#cooling-cells = <2>;
 		};
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
