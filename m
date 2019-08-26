Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC129CA54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbdFblDsC7p3nwCzZCsT4NwHcnKIgLlidt5erM31oaA=; b=PicJ4p8ElFMiwp
	OxNjTs80G4Z4etwLoA6kY9ZMuauorpkW4OsAaXKa0maABFv8kCuYE+jH0tc2eixQx9pfB83m5gK2i
	3Ply4JBx3bHUjvVmAFuIj/FNfde59M9alvmgt+/7//CGYKfk6UT/oQwfvCUepEh6FaPFAqwE8pRAm
	LAmzzW6TbWks27+uCEl5B9SXHNBs1i146ZN8oFhFYaDkMbBLdiBrv3YOr4LS1k6GIovW/EZeiZlfc
	BJQmFvpQsLrO09+LIjp2C3rU346pV1Pwszcq5i1T4xwW+biqcPv25wdyD3oYd+GOaIKfPOam6o+c+
	XGYAgb9oMSN9bNgW2olA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29Q6-0002UH-UY; Mon, 26 Aug 2019 07:28:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29Nt-00010S-5L
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:25:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so14409521wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lJWN6yc2oSLIy8e/NpmjZbGiQp2MPG9LyZte54Al8Bo=;
 b=ZBhPb8S5icK5OaHjj8nREnrShAt9d65o0KQXZQWvX6hZlbOPv/tlza04LnSDzUxERS
 +ZVPzetbr8yBgmevfO9sCVkAMqSRwKz7Tz1lWO31xodPGgo4LtMJsMFiK1g4VcO4PBDl
 5q2l0u9Snj/B3SWYO+ZpCicgX/1btVO28UXhqtl+kDG/2KmbIyi7/cvh2bvtbNDTDVm0
 3cUnEI6A8eLPALn2SynOaVaBPSFqAU4+fZyrF64sH6yGm/uwFmSTWHrzPjsDccbU6H7d
 fzzj/p0xZb6pWcF9ZWbzKZV9E5ZarCQfhW/z7MTPCeOpH250VSw4xMmdiui1gLyVPQcV
 pNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lJWN6yc2oSLIy8e/NpmjZbGiQp2MPG9LyZte54Al8Bo=;
 b=q9GV4y/mpcsMDCBB/5KeFMnpgbQrWqqn6W5hFnGLvvdyHKx1Y1MfRhHZ75/ZwPzIZu
 TviO2LMozh93yjtZSynHQu2HEYjBj8P1qVBcPp5V5BBm4wLdJoP4k42X7P8vUhkC7Qtv
 UWFyts1MoD18tqEO5sp1iPQ4irnjyFP6LbgXzWrVDEjxt2xIa7DlQJR/GLJRM/16g7r3
 fMVcOtcAsdqGva66wK8gAgC2CAbL/lAAZz/USIgK822NtxTgGoPOETREAODNFTop0qsZ
 UDoLeQamfEhgKRO4SJHLRenSfafBdYf80wPsqLTs+4UMfU0Cj+NHP48hTq0XQI4ee0B5
 7PUQ==
X-Gm-Message-State: APjAAAU31Vd9TQK91KKUsxRWz1+yVu8yehsSXA16pPfdPiS3NDxZy0MX
 Gc1MI3g7RI2oBMnFAm2nWAkzqA==
X-Google-Smtp-Source: APXvYqzE5m3bhkRCPJOKD1nm7hBmgNoGuEItiKQi3bWA+fIhFikIWwEcPQPUTJi4ZmiFDHOc1fmwBA==
X-Received: by 2002:a7b:ca5a:: with SMTP id m26mr18758168wml.134.1566804347402; 
 Mon, 26 Aug 2019 00:25:47 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm10821324wmg.45.2019.08.26.00.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 00:25:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com
Subject: [PATCH v2 5/5] arm64: dts: meson-sm1-sei610: enable DVFS
Date: Mon, 26 Aug 2019 09:25:39 +0200
Message-Id: <20190826072539.27725-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190826072539.27725-1-narmstrong@baylibre.com>
References: <20190826072539.27725-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_002549_322782_6C7C34CD 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables DVFS for the Amlogic SM1 based SEI610 board by:
- Adding the SM1 SoC OPPs taken from the vendor tree
- Selecting the SM1 Clock controller instead of the G12A one
- Adding the CPU rail regulator, PWM and OPPs for each CPU nodes.

Each power supply can achieve 0.69V to 1.05V using a single PWM
output clocked at 666KHz with an inverse duty-cycle.

DVFS has been tested by running the arm64 cpuburn at [1] and cycling
between all the possible cpufreq translations of the cpu cluster and
checking the final frequency using the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 59 ++++++++++++++--
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    | 69 +++++++++++++++++++
 2 files changed, 124 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 36ac2e4b970d..69966e2e0611 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -19,10 +19,6 @@
 		ethernet0 = &ethmac;
 	};
 
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
@@ -136,6 +132,25 @@
 		regulator-always-on;
 	};
 
+	vddcpu: regulator-vddcpu {
+		/*
+		 * SY8120B1ABC DC/DC Regulator.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU";
+		regulator-min-microvolt = <690000>;
+		regulator-max-microvolt = <1050000>;
+
+		vin-supply = <&dc_in>;
+
+		pwms = <&pwm_AO_cd 1 1500 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vddio_ao1v8: regulator-vddio_ao1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "VDDIO_AO1V8";
@@ -182,6 +197,34 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
+&cpu0 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu1 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU1_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu2 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU2_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu3 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU3_CLK>;
+	clock-latency = <50000>;
+};
+
 &ethmac {
 	status = "okay";
 	phy-handle = <&internal_ephy>;
@@ -220,6 +263,14 @@
 	clock-names = "clkin0";
 };
 
+&pwm_AO_cd {
+	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+	status = "okay";
+};
+
 &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index 37064d7f66c1..2b61406b0610 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -50,6 +50,71 @@
 			compatible = "cache";
 		};
 	};
+
+	cpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <730000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <730000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <730000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <666666666>;
+			opp-microvolt = <750000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <770000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <780000>;
+		};
+
+		opp-1404000000 {
+			opp-hz = /bits/ 64 <1404000000>;
+			opp-microvolt = <790000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <800000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <810000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <850000>;
+		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <900000>;
+		};
+
+		opp-1908000000 {
+			opp-hz = /bits/ 64 <1908000000>;
+			opp-microvolt = <950000>;
+		};
+	};
 };
 
 &cecb_AO {
@@ -60,6 +125,10 @@
 	compatible = "amlogic,meson-sm1-clk-measure";
 };
 
+&clkc {
+	compatible = "amlogic,sm1-clkc";
+};
+
 &ethmac {
 	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
