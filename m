Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D74656573
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDUyguTl4CC0hoSyu5RkYbHRa8kHqQcui2KDFwk2WqI=; b=sg3mkYT0i3Tke1
	Ik5xlulYD+DYHWpzpFZdVT9cQDMV35+HueqHKPxlPHlsZ3nk3YzbnFvAreDSaqBDYvKeVYh+xhfOX
	8XpgGSaogSJXZigM/wGhnuf5msM9ACpqePNvlFPmMSlZYdmQRHbJubfZdgifbt0qr+mNIWNeBOSKM
	6d4Vz3LjxolUd7Y44UtycTREWZBdplDIB2ifs9C8yr1y2xwR4mVxrubRtD0wyNMLKUKvTnyN6njfX
	7+fTPPFixPgdDgrkNZSlNriLSsSnMvskr8ITyhk5wa9Ht940fjMf1elS0IYvWpgNWxQ2TieVvwVLV
	e3OV4wYRLMPQNDCsqA0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3z2-0008Pn-HV; Wed, 26 Jun 2019 09:12:52 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3tD-0002hU-BH
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:56 +0000
Received: by mail-wr1-x436.google.com with SMTP id v14so1787280wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N2giQ2yIsAWn8MusPqgS1CP/DkqViRRuAeJS4LgppK4=;
 b=DXSZ+VO0OEC6jKtn+s80RNGXITCcDwHwpLndzhr+8/KJniKqMGcmDjaqxbUJjooJGg
 F93CGu/xmItuu5qshmofSmPhYhdz+Xg27J6AaPOmcfkQ5jwdz38oQ1J53U2paFI6LBjh
 ZFTAa0oUmX7iJqvSrOiDK8oXod/fF3aumKEhRhZgq3vnY+JI5+vAHf0MU1rsn3a4hmv6
 WhX+cqC7EmxBY/EwU+TSTEcQJBbQ0KNLr7t3hNd8M6AfS1rqEuOJL1NDetJemg5hlmQP
 13pM9OArLIhYk/rg36EuouDxealfUL6WRZbinROyxqCmyjPP7fjEtcIsJoN1DVUfbcwJ
 Ua2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N2giQ2yIsAWn8MusPqgS1CP/DkqViRRuAeJS4LgppK4=;
 b=hgj4XiHgajnFD4+uMl7TWPElr0GKvxFMlHTHFF3jw92RyxaUH+LqHPE+0Q7vEyUcAn
 Eum/yrDe2B+YEJ7afn8tdFgeAA0TXKrP9Iqz/ebUOiOXswILtlBOccERI+AqNP3nVIEK
 n+yCnRKuLsqQgMSEpaUFLe83OdtRX6bI8WJkupm5VaUTjcGTaRHhHm45ifH6441srprA
 ZNI4qXu2zw4iajlLR91Kkhs+2uQ2Ubp3aKAKuzIzenyaAeMSvdt29c8J8URyNorq5h90
 p3H4BSjFYWvriiSlAfi9ALAAaToXlLstZnI+cVm4Ut1ALIn5D0fZqYH8M+DZYKuVvDDi
 AGVQ==
X-Gm-Message-State: APjAAAVEtukd7PvRH1OP9wSB3SH/HeZveLq016psaBPXK4bjn4q3KNhe
 BbzfQpWHKNRgUT9I0I76gQX7Rw==
X-Google-Smtp-Source: APXvYqz4hNZI6MaHjKVesPZ/4zgZ1NEbidAbDtUEDcFlcGeFBwbA5LHEybYag7mNYd9FG0MHg+dHJA==
X-Received: by 2002:adf:f503:: with SMTP id q3mr2722506wro.43.1561540009429;
 Wed, 26 Jun 2019 02:06:49 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:48 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 12/14] arm64: dts: meson-g12a: enable DVFS on G12A boards
Date: Wed, 26 Jun 2019 11:06:30 +0200
Message-Id: <20190626090632.7540-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020651_507078_15B3A9C6 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable DVFS for the U200, SEI520 and X96-Max Amlogic G12A based board
by setting the clock, OPP and supply for each CPU cores.

The CPU cluster power supply can achieve 0.73V to 1.01V using a PWM
output clocked at 800KHz with an inverse duty-cycle.

DVFS has been tested by running the arm64 cpuburn at [1] and cycling
between all the possible cpufreq translations and checking the final
frequency using the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 55 +++++++++++++++++++
 .../boot/dts/amlogic/meson-g12a-u200.dts      | 55 +++++++++++++++++++
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 52 ++++++++++++++++++
 3 files changed, 162 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index bd26b35102ff..be45437c51e1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -129,6 +129,25 @@
 		enable-active-high;
 	};
 
+	vddcpu: regulator-vddcpu {
+		/*
+		 * SY8120B1ABC DC/DC Regulator.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU";
+		regulator-min-microvolt = <721000>;
+		regulator-max-microvolt = <1022000>;
+
+		vin-supply = <&dc_in>;
+
+		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vddio_ao1v8: regulator-vddio_ao1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "VDDIO_AO1V8";
@@ -297,6 +316,34 @@
 	status = "okay";
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
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu2 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu3 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
 &cvbs_vdac_port {
 	cvbs_vdac_out: endpoint {
 		remote-endpoint = <&cvbs_connector_in>;
@@ -339,6 +386,14 @@
 	pinctrl-names = "default";
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
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 332a4b27174b..b6bd96ee394a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -136,6 +136,25 @@
 		regulator-always-on;
 	};
 
+	vddcpu: regulator-vddcpu {
+		/*
+		 * MP8756GD Regulator.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU";
+		regulator-min-microvolt = <721000>;
+		regulator-max-microvolt = <1022000>;
+
+		vin-supply = <&main_12v>;
+
+		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	sound {
 		compatible = "amlogic,axg-sound-card";
 		model = "G12A-U200";
@@ -305,6 +324,34 @@
 	status = "okay";
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
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu2 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu3 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
 &cvbs_vdac_port {
 	cvbs_vdac_out: endpoint {
 		remote-endpoint = <&cvbs_connector_in>;
@@ -369,6 +416,14 @@
 	pinctrl-names = "default";
 };
 
+&pwm_AO_cd {
+	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+	status = "okay";
+};
+
 /* SD card */
 &sd_emmc_b {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index d37868d21114..099ccf67547e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -132,6 +132,22 @@
 		regulator-always-on;
 	};
 
+	vddcpu: regulator-vddcpu {
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU";
+		regulator-min-microvolt = <721000>;
+		regulator-max-microvolt = <1022000>;
+
+		vin-supply = <&dc_in>;
+
+		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	sound {
 		compatible = "amlogic,axg-sound-card";
 		model = "G12A-X96-MAX";
@@ -242,6 +258,34 @@
 	status = "okay";
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
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu2 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu3 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
 &cvbs_vdac_port {
 	cvbs_vdac_out: endpoint {
 		remote-endpoint = <&cvbs_connector_in>;
@@ -279,6 +323,14 @@
 	pinctrl-names = "default";
 };
 
+&pwm_AO_cd {
+	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+	status = "okay";
+};
+
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
