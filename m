Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5AA7C6E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OUAVJHzP0INkb03ShKRkbmujfmaGzFpmO9kgHyfYPhA=; b=VEGaHtfBmsdpOLH0MbCw9V/G4I
	ZpMgJWKFWxEMl+Pnkvu8EAxNxCjzDL1w8kcN3+qEUUK/rzo3O3K2L5kp/kkE6BEqdbfXNT7GJ6dqL
	dGq6XPtrDIxatAjy5SveNTgHk4NeaDHh6xa8qrD8NhPkt2ziO1LfXVTrqor7nuIXgAUrpIb90W8AT
	leNlkPMA1EnwM/+ecrOYmIOiJMjPzWgPfcdnuddAnQ50uepODyLy5303V8zw48PxeXqMkt0VaBv8h
	ZoXEqE4A2bAMk7ZCRvExeEQ3spkmFTB0EH9gT0bZvnhvA3xP9AjHWC0ptLm3KSSTNKri0W4a78AfY
	wjMcJXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqf2-00076h-45; Wed, 31 Jul 2019 15:37:04 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqde-0005Qu-QQ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:35:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so66970524wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C6EJL/51AHNPmVJCC71cSQAo/Uql1LEExYduU9tlj54=;
 b=USefCljrpz1yRsoIXF2w4xg9VXh4QbDSRfoyiXoY6jTBa7FxJT/7Due8LQ+/bxUmFp
 WAnAouc1YOFfmGGlkNGldaFXIxCzuzfN2zJb8T2LWO6y0KSY9g+ThTrcEkjgJRrQypui
 TsALxmEM6dEQtySXllvS/VgeRnzL0tr4TE/tKkqBl2gomPbnpVwkSJM34y8hi4C+tq00
 nUML5hcGDz/hAz/bYVpHD4tw1+z/2tRy2XSrR0p9nOkH2XwzrkSf15x7n1UTHj+JEKVf
 DBXXcERhZyinR8yH4dhsmdtXxIqaSW5Xl367BjgxRe//gosv9vVQECKBtdVspL1td+tS
 BVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C6EJL/51AHNPmVJCC71cSQAo/Uql1LEExYduU9tlj54=;
 b=pIVL4RkfRCDMYK+7YZphPCXOlGtls4XpqOc4ypZ97yEtv5LGRMmZnlZMxz26UrhG1w
 QcrDO3RL5+Wjl9rVP7ClKC73jWePkXJLszSNtQy3gtMkt6LsA5MmDed67gi/K7CDUBSu
 OskGNCiulvyujhWMrILPjPJvLOiABoKBmCvUKv9XP4Doh6YphLnFVVTLyd3onvcoX7NH
 1iku779T3YwuwYfP4ZmZi1B9x1npI0/sEyiFMXvucLO9pl/nwMk7IzBJThdO6sl1rhga
 JDPWVqYaQRy+vkK43vAlV39eMHOGzQWeHflWmyqAQvOlOWDLDN4Y+LcDclbLhbcG0TiB
 S2Sg==
X-Gm-Message-State: APjAAAXz/8eg/9JQ30iB+9wp6LaQkX98lJq4qA8N9lyiduR7EG4GHwaD
 B/CjiNjpfEV9AKKQRf41p8qDbQ==
X-Google-Smtp-Source: APXvYqxYIBXbtzSuPK9eyz7FC0ILxtSo7AVLrSGfVDmK39RujTf/qMGWu4sryl3IMIl6xvWfe1kg/w==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr44406641wrs.200.1564587336894; 
 Wed, 31 Jul 2019 08:35:36 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i13sm62834396wrr.73.2019.07.31.08.35.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:35:36 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v2 5/6] arm64: dts: amlogic: odroid-n2: add minimal thermal
 zone
Date: Wed, 31 Jul 2019 17:35:28 +0200
Message-Id: <20190731153529.30159-6-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731153529.30159-1-glaroque@baylibre.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083539_030001_EB904E7D 
X-CRM114-Status: GOOD (  11.04  )
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

Add minimal thermal zone for DDR and CPU sensor

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 75ff8a7e373d..a7d73c0c8447 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "hardkernel,odroid-n2", "amlogic,g12b";
@@ -20,6 +21,55 @@
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
+							 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
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
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -288,6 +338,7 @@
 	operating-points-v2 = <&cpu_opp_table_0>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu1 {
@@ -295,6 +346,7 @@
 	operating-points-v2 = <&cpu_opp_table_0>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu100 {
@@ -302,6 +354,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu101 {
@@ -309,6 +362,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu102 {
@@ -316,6 +370,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu103 {
@@ -323,6 +378,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &ext_mdio {
@@ -377,6 +433,10 @@
 	};
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
