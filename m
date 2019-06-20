Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E104D18B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDUyguTl4CC0hoSyu5RkYbHRa8kHqQcui2KDFwk2WqI=; b=o8d88XBjpja0oe
	j+F3dy/jIa2dz5ehs0wakBA1LDOFRfULWU7Z6XU2LTE4lvTRec37+FOdziAi6yd8VPRv43VMwY6NM
	8l4iWJXYD7xQgdNn8Cze6BUx6fYT4cBgffbra7BuFKbEQQzy5CAn5DbYmP3tJnjvkhMVvIWDyfORa
	z4Ufs8Dqb/Dgz+yXupH65wW07tH+Vdty3uSeE74owkKlKWds6hmtn4g6p34A5qV3E4jw8mVeOhMux
	r7rSDsue9htaVs2NW/DDET7KVyIPjP6xhV6hHEh65to+5l1MYwXAgdwF63IEvtO+AxSD5GSz3qXTA
	/c9J1o1pJAn0EL4/Sqnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdydE-0008Hh-07; Thu, 20 Jun 2019 15:05:44 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyYG-0003J2-1R
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:38 +0000
Received: by mail-wr1-x432.google.com with SMTP id p11so3372171wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N2giQ2yIsAWn8MusPqgS1CP/DkqViRRuAeJS4LgppK4=;
 b=b+LXYfMJu8K3Irv+z9mH0+qqqhmw6l1ehg+Q35v6Z88zfJG1MOwscikQRxJh2njG4h
 WVzqtKd2aNO45HKxR7zXGNDOBYsvcURb2Un5PaXRJxB2sZI+M+6ns3+HXteJGNxoR4QD
 Igtbd+g2i4atWlx+tudsnSlm0177tLf1vM11HIZ5u1ymg8sRxUW8PdliGw6s62tFIm4m
 iG3L6EDDuwCh+LiAWnJqlJoO4pj8TdVbl4VWxYqLYTn60qxHgSrNlivcZf1nz1Xr/Uz3
 OkSyYR+uuP8IQR1ixGDubknJlis/XNMdSD7/j0SVHd6+KD0/FJxAX0mXgvfKw/PW8+lW
 KNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N2giQ2yIsAWn8MusPqgS1CP/DkqViRRuAeJS4LgppK4=;
 b=ZWXgONQySZdWF82RZRCXAKEJZQ5Om4zfESbtalGm085n/u++cj5X6kr18BIp9dhETm
 yOvheIOzBRqIfzO0Qr6xTAMki4X3j50W77lMXl12gS/3BTYnZPUYUnZ1bDs3wBEAbiqM
 osD1cR0eAg9MbfxigqwUTGpMdWWZeuDGXYywK1zkOEUjpqxlgxtXyQhcsEhkezK1nsrn
 o2GR6BsrO+p0ozkQ9a6ka7z5Pz3ka+Xr8MtWdulg9PQnDZjIBV11roc3gbwzZhxnZldX
 gIbqgUhzB94lONMy6dDuv/SciXqI/++xqCLo3k1Hngj7nqukJ+df0IL9SaXJfNzIwnlp
 D3Jw==
X-Gm-Message-State: APjAAAVFnlkDIOXkWdy+cweIBAvvkymURPtTtW9UkcHUIFo06LbLtbBS
 93/t0z15yhj+HmzNYnpv+QBdWw==
X-Google-Smtp-Source: APXvYqzhqvyJ4VQuHIxn4osbb6I0R4V3URcLiMgyiJwat+YLcIUOsZ5a2Urq9TgAy8NkI7wsnA/ceg==
X-Received: by 2002:a5d:494d:: with SMTP id r13mr5374600wrs.152.1561042834101; 
 Thu, 20 Jun 2019 08:00:34 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:33 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 12/14] arm64: dts: meson-g12a: enable DVFS on G12A boards
Date: Thu, 20 Jun 2019 17:00:11 +0200
Message-Id: <20190620150013.13462-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080036_128357_5A09CD21 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
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
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
