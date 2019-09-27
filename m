Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DF3C0BB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RLPOSdVdHRQx/zPpRg48R2ausXH+aUY+s26pNPo7mRA=; b=HMAQWJsfkJtuvokf1sxsE5rKRv
	qYRzD2/fnVlKGnK7Dz9jS0ChQPpTS4+tOVOgGhk0tgCLIPppX2+c6JCWQMj+P6Y0hZtPYs/IkY61x
	hkw3dRjRmnnXa2Rk+eDn8e+U74MrRvWgekuy6Bf+Uks4SWzpcmPuaSdSbi5BSuyxgGLgOtIpZn5nO
	1NhphUpJOebW+btvtlX3aYq0dWdABURD3+yxYy1XCP+uwrwJITBCTLvJkudJDiBEFzT2kVFPrhOWf
	FXqryIjpXfNpC4rp/GEr6IfwCfFcO9lnb1fEXN3NIEPuJrZ9Zkgp+cB4ocse7wkTCig3ZYP8+GJty
	NiouiSDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvFg-00043Q-Br; Fri, 27 Sep 2019 18:46:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvDl-0000V7-BF
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:44:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id a11so4340687wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
 b=QifapQB3gJpS3duSfuss2bKCph2XDPCBGuA1ixcVHdgABdF3z6npkh9zYXzycrhVsp
 8P696tdPAgaAtiYwxoIcbLstboUrNv1j/dUKiejMbo3RUyg+C3Uxj9bj6X8Gv3T8w6a1
 Dk2LfVVAZytHukR9amphBUEAV7AcYLiMAvjZRglans6SdreItLzVs5+90rdiQVgmlpaW
 hktKbuomksiV35M8l8y8a6RjWMYPImJaVr2RQGegblBkjr2sLL1brnPvSz9sCpYMq9Jp
 gmG2jQ/htvJWpvTZpSEI7olV4X5GmYoG4f5xnfck2Q2FJIr3QcXyUSakZJqHPMemoJAh
 rRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
 b=feGYqazcqDBC6LMKxxAME/rol9C/frwyJ60nqHXJHvOOGxMtbUMjW8KCb0TTg8mPD3
 Xm5JsiTqIBIdBkfJgtmPuvxoO8jzneG5NSlUSJI6OWTwPHFMrTnGnfvbOVLrHAheg9r2
 vUxYhixFBdWYRl7SN/Zf66aQAT2mrc/logmvwPP8eEbkkHzunIy37qDUYcfk9Cs4Ju7J
 tsKjY/8JI9fPigdWtf0HaWO2m9F7IjYGKG26LM8Iei0kfTVA2aqqQL3EygoPt3+q/Q/f
 XKsoz24R0AkURtqmsDFRpO5IhAs9bxWegXZl1bxUIEZKdnRyxrQUfh1XfDPG7dSR0Acq
 AqGQ==
X-Gm-Message-State: APjAAAU9qUPAi3ti4m2vlSe6l8ucdVcCPFAyy4od6MFHuwTeSMxGcO5j
 +luKIoGOAUI5yJ+D89+e+wTT7w==
X-Google-Smtp-Source: APXvYqz3u6msX1INiY6wFChhqjbg5r9ADJSXD3syZv0Fnoe6AUeuH032CUpiOhoNsGOdw83xLNWDhg==
X-Received: by 2002:a5d:660c:: with SMTP id n12mr4269949wru.286.1569609840121; 
 Fri, 27 Sep 2019 11:44:00 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:43:59 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v6 4/7] arm64: dts: meson: g12: Add minimal thermal zone
Date: Fri, 27 Sep 2019 20:43:49 +0200
Message-Id: <20190927184352.28759-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_114401_413582_85FA911F 
X-CRM114-Status: GOOD (  10.69  )
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
