Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1888F5B7E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/Qf0Yu/YHlL95bXFxwBj+TFisTnto0cxKnKGscR2xo=; b=I6GmyKJGheU+Dt
	66mGvc4UImkTUlewfhMAfse4jQkuoWU/GWjrqXUvIH8SY6yNenFIY/Fud8fgiCRcXYpHoNShkvZxN
	DU1GASeFjNA5LE9k1hu5DySCW81RHH5cbzZbt2baZD6iGjhDjPahv8FflC84bgs9vCjZXJbw5EIAU
	ezF7s466QZipY98PXRVyWwAhP8YrqC1F0jsgqUjV2Uw7kd1TW0vN/pjAN2lnvueUCjGwkNDM3l/PZ
	zk2WaDAjOAMN5v0dUotoNW+2fqdFbVuwxV7CS7OtHAgyGUOvQZlFXcbxOP8m/OahWsa4VTI3xZJ6F
	JvQObUL01hXwfBOOcnsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsT7-0000Z6-Fh; Mon, 01 Jul 2019 09:19:25 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsNL-0003R5-HZ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:36 +0000
Received: by mail-wm1-x332.google.com with SMTP id w9so14077044wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GjwR8P1WN2zr3jyekwyJE7GslmESzQQSwJmGgaHfGbg=;
 b=i2M8126mf8X3M4vK0EjuDX/AJytE9Pww/P65WWzwFfFVlL+EjQVVg00VFQu7SKzmP/
 qgYng4GTe56VohSeptGBNoYvCLVCnGpPwCAC6XwFBxByMaDVo1iwiYgKH6qhLys+651i
 8hhNaYVG98pa2Aztn+lCwEbybgHuAHp2GyasbIl1m3I88EO4R2Nn5aVk8jU4xXY7+W3w
 nm9Vz4x2caZXAuGVK8BILaXUDlu/g6FDZ3um5mbe2GjV4eWg8/d/jt7Rkn/nKTDuD2TT
 h5FrU847Ay2GHEUNr8TliJcckC4kL6R9nRIUzkiwfs+WGjUq9HFHybxezcZG4616+SMA
 olZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GjwR8P1WN2zr3jyekwyJE7GslmESzQQSwJmGgaHfGbg=;
 b=DAdsbdLvCRUczuSXGw1JNsBXzXUjZ8S9NxGc4iyIZEtbKMbC9g5ZzM1HoY+iw5i5Tg
 4kVgT12FtZvHaVVZq5sJgPCRuJLfsn6IS9zEcgeXcxXKjhX1MawC6L/EDd5BYzHiho2n
 gfEguqCXKtz/0m3RgfaUEWtYejAYPBG6HxGXp7+eNA7R/HAUjgVAP9httPUG8Uih7JQt
 DYwhHjyu68/nWq7cE92gbJu+hlD1bYj6TnoMNnZ4bzDb/y0zh1JrPffGHb/9Sr9QSOv5
 IGPfF40iwDcjfXMrw9pYk+FZEUC41t+h+9vibmkVQffGbjgNXeKeyVstFXniiqcLCgMo
 lRvg==
X-Gm-Message-State: APjAAAUXPmySIHrYy4LPHGUDOcSCPZBhrw7JyDOipdVjbngwoeydVdYK
 78VtwXxYwGxwxBXjarwp54OVwA==
X-Google-Smtp-Source: APXvYqxoHWs7jKJAEU+tVZvhQRloCB4HDTdk1xzQq8evQEaWBhoayWGvwJtIAz+ofTyYFOanLGRv7A==
X-Received: by 2002:a1c:7008:: with SMTP id l8mr15428817wmc.64.1561972405524; 
 Mon, 01 Jul 2019 02:13:25 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 14/14] arm64: dts: meson-g12b-odroid-n2: enable DVFS
Date: Mon,  1 Jul 2019 11:12:58 +0200
Message-Id: <20190701091258.3870-15-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021327_618622_CEB89055 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable DVFS for the Odroid-N2 by setting the clock, OPP and supply
for each cores of each CPU clusters.

The first cluster uses the "VDDCPU_B" power supply, and the second
cluster uses the "VDDCPU_A" power supply.

Each power supply can achieve 0.73V to 1.01V using 2 distinct PWM
outputs clocked at 800KHz with an inverse duty-cycle.

DVFS has been tested by running the arm64 cpuburn at [1] and cycling
between all the possible cpufreq translations of each cluster and
checking the final frequency using the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 81780ffcc7f0..75ff8a7e373d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -114,6 +114,44 @@
 		/* FIXME: actually controlled by VDDCPU_B_EN */
 	};
 
+	vddcpu_a: regulator-vddcpu-a {
+		/*
+		 * MP8756GD Regulator.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU_A";
+		regulator-min-microvolt = <721000>;
+		regulator-max-microvolt = <1022000>;
+
+		vin-supply = <&main_12v>;
+
+		pwms = <&pwm_ab 0 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vddcpu_b: regulator-vddcpu-b {
+		/*
+		 * Silergy SY8120B1ABC Regulator.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU_B";
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
 	hub_5v: regulator-hub_5v {
 		compatible = "regulator-fixed";
 		regulator-name = "HUB_5V";
@@ -245,6 +283,48 @@
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table_0>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu1 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table_0>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu100 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu101 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu102 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu103 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */	
@@ -316,6 +396,22 @@
 	pinctrl-names = "default";
 };
 
+&pwm_ab {
+	pinctrl-0 = <&pwm_a_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin0";
+	status = "okay";
+};
+
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
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
