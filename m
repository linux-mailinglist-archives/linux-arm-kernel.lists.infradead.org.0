Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96628C05A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RLPOSdVdHRQx/zPpRg48R2ausXH+aUY+s26pNPo7mRA=; b=IE/YaI+SO1koyBlSMp2eqphmYs
	ghtqefigtHoYLkZNfDXDgFvmgMrvFjU1OF83eRoRdOoLpRCFZtfzpC2RhLS/hJbiCdPCpWGj28hwU
	i0zDgb65Yp8ANvAF3GdmLvPsFMhCunzausc2Er5uI4TA0GSu9OW/9aWQCk05QNx84GsfZvHPgAKJE
	wZn4ZjTpCQpymVBNa3EfmeaNAtMynih9QZXa7mtWORJUaDcJeK9WggVr2GdTmJxNx+dIL2HvwP1qK
	WCwCX0FGZLnxgisuPxxnRmtDo1aIVb9kNcslCpqrJcpMR9lJHY7tHKFOjUDC3vg1T95Qn8RsRv9+i
	vTUuEyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpgX-0002tM-Td; Fri, 27 Sep 2019 12:49:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpfB-0001km-Gr
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:48:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id o18so2550241wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 05:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
 b=hM5HszN16GCur2cmgDofM9AqaYy/8VHWlTMuTYKWxaoCpfe68AbKYf7EgP7AZTtGQV
 8QNDXtu1HjBkX9ECY6kbivdSZfVJYZTeKsZHaMbuU/sLrONewee0F1UjlotFAULK1C3o
 /z9KWEDWXZpk/LY86hLqVLE6JoiskNBmKHPiML4PpKE88HOBCkpaexIc0YGwOw4cno4Q
 15a8we+0SuJt2+CZCC9j4Ve9gg14S6DEGczcfLM/AVRpLfrWYM66YFp4YjgKfrzGxMe2
 zKPZJzJGzRWIyYFMG0tBMuhPFNRns/rx2Jrh4MfM3e20HwdEmYFkaqe2BP/3sAK2M08R
 nJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
 b=daYzmqjg+877Eh6DfoVx0uuHE8LtxA0KeZDmiWjDwXX9v/vke8jAe9PUzsnTzR9vGg
 QSAxJ5AzKNH5PxrD/WLE6nAjUPtHhxP+anCxUJOxosod2DjTSKF1MjQZQVND3RgyDqa2
 +604Naf/FRCYJozFUJYXJV6ChkhPNOlRf4yBVKqxEdwcllIwTLnqamtiEWiYiEl/kjOl
 SXaN9tOWdwpY6vnXWyMJCfxHb+5GW9BYHfU7OygY0KAj1HpXFiIoIgv6MCUInRZ/xMXh
 tBnESN+vRGtnrPcQOVfHxoJ19ZAJ2YDV358iBs1wsarVdrOc9Lfz6YMRtCYGC+xkgeoT
 FXyg==
X-Gm-Message-State: APjAAAUZRKIt5oUC0m2a2Dfl1c58fs9x6YZWr6elxN9GItiuWOELxQYB
 gcFwrrYstNfOWIJqcUjUV2k0MA==
X-Google-Smtp-Source: APXvYqwAZclia+Z3ixWm7xB2/jZuLwc25ZPoW5O3SUaOaSe4s8zlVe9XokOOM88zEMRzk8WB6E25Jw==
X-Received: by 2002:a5d:66d2:: with SMTP id k18mr2807206wrw.7.1569588476337;
 Fri, 27 Sep 2019 05:47:56 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 05:47:55 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v5 4/7] arm64: dts: meson: g12: Add minimal thermal zone
Date: Fri, 27 Sep 2019 14:47:45 +0200
Message-Id: <20190927124750.12467-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_054757_578207_B80D577E 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0660d9ef6a86..f98171949fcb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
 #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -94,6 +95,50 @@
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
@@ -2412,6 +2457,7 @@
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
