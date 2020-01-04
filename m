Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87275130139
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 07:36:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D28B31b9A6w4gvmYCvppot7lJbHDyXTAw5zt9PGybMs=; b=Ej9bE1qGk5yB+C
	Bq5XhviXj6HY2DXj3LFhbDMVUN4ybc7C20uoV9BGX0qj0uBOTL18pTzTrLx2oMCq/VeNAdTuchcQd
	0wtKiJ90Z3+/0DlmI0XYkVHHSPIYBLZW/OzzxbvLk14icAAoQ7gfsOgIcL0YshFJqZTGDPoOw1VG9
	lzn/sLegXrAm/6mHmzJz+1YyVdcltCba5z7VKK6s5EGK/oavJ9goKQjgrqSZwRmg5V6h9PyADWwh2
	oZztktoiwI+tRvXM4fHDTMEqXfqneFma0EWQoWQK+mpkeurSiU1mehUKQlD5YJUBMYVEX6bbfgnR6
	c7d9Rwpdr47l0HS5tFEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ind2d-00029a-8D; Sat, 04 Jan 2020 06:36:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ind1q-0001W4-Bh
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 06:35:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id s64so24358900pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 22:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yPtjDACR3H8K2uS1u9GQH0pid4N/OfHQXapx3wWocvc=;
 b=M4DKWAZE5QNZFoTHdeYXS06rY4JLo3uDrBNEw5WCHH+wu79VXgr/uRhsyCf60a2hTg
 bONQe20s3Sykap/CYALiA2SHNLVZRoJMEwez+lLdXdaU27GukTUeplxvqVxBM7KeaqF+
 j3KKVdmgeBpMEtx3N3/zIArUM7ouuyYB3Wr6XSaCwMU92b6zZxoSO79Dw1KM7+TiHqS8
 pebmaQ+9SXJNBrTeQ2sNRwc2wCGn9OSlTsZh3TRWCU5D9WPFLnYNIJj/rDx0BE/7drKh
 6Tb7TRslU2/NzUvykRFommL8z+oQVhD09LS1czUHzTdT3BNuaoJSnqGOjjnRBZKOrckc
 lFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yPtjDACR3H8K2uS1u9GQH0pid4N/OfHQXapx3wWocvc=;
 b=amhx7KphcwmgSAtrVc4rwZPiDIoqPIOT6QoC6yJHa1u1x5ZM5Q+8VKNIsdnVUEvHj4
 PdWspUUBy8M8s+Mud2IoSi4QySaODPvUe9pf3emxonuV+vKnE+9FS4jfOvXk+TSbrSk1
 +kMYI2Iezpq2UGjFk8XkU03dr6jzyoMp2PcK1q6BLVLTh3UsjUmpIZYmY+VauWrRIdIo
 Fm4M0p+QbhGrcU3eQR1BNPxrdgQVqgugTZMgS7c8CJUgQ+fv/Y/t9MAIsu8tEb/7GqPb
 NfX9wi4umhktLicJikp7r/ZXaOAE1+5K5Uv7i1UJr+grxC7LAyOvtAeIWqtfQm2gXsTS
 4Fsw==
X-Gm-Message-State: APjAAAVJUMR5ShTV3+Ccxdyfgjq4U622fYksGwAy7RtP93thUCgOTkwh
 eN4ZM0uBRQadzL0v6do3p+k=
X-Google-Smtp-Source: APXvYqz5KiFQHxhZgupk5DoDrXsn58WhGeos+ZPkVYJG3AhthXc8O7ZT3cG/Nsr0Pl3lyJ9AXgGosg==
X-Received: by 2002:a63:9d85:: with SMTP id
 i127mr95917777pgd.186.1578119717534; 
 Fri, 03 Jan 2020 22:35:17 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id u2sm64761580pgc.19.2020.01.03.22.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 22:35:16 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: allwinner: a64: enable DVFS
Date: Fri,  3 Jan 2020 22:35:05 -0800
Message-Id: <20200104063505.219030-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200104063505.219030-1-anarsoul@gmail.com>
References: <20200104063505.219030-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_223518_408828_FC1D5A7D 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CPU regulator, CPU clock, operation points and thermal trip points
to enable DVFS on A64

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../allwinner/sun50i-a64-amarula-relic.dts    |   4 +
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts |   4 +
 .../dts/allwinner/sun50i-a64-nanopi-a64.dts   |   4 +
 .../dts/allwinner/sun50i-a64-olinuxino.dts    |   4 +
 .../dts/allwinner/sun50i-a64-orangepi-win.dts |   4 +
 .../boot/dts/allwinner/sun50i-a64-pine64.dts  |   4 +
 .../dts/allwinner/sun50i-a64-pinebook.dts     |   4 +
 .../allwinner/sun50i-a64-sopine-baseboard.dts |   4 +
 .../boot/dts/allwinner/sun50i-a64-sopine.dtsi |   4 +
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts |   4 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 102 ++++++++++++++++++
 11 files changed, 142 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
index 5634245d11db..43f6ac0beed6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
@@ -65,6 +65,10 @@ wifi_pwrseq: wifi-pwrseq {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &csi {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index 208373efee49..cbcab80de8c5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -108,6 +108,10 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
index 9b9d9157128c..6708acf94d01 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
@@ -87,6 +87,10 @@ wifi_pwrseq: wifi_pwrseq {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &de {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..f94e60eb4ec2 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -87,6 +87,10 @@ wifi_pwrseq: wifi_pwrseq {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &de {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
index f54a415f2e3b..2793afba4884 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
@@ -123,6 +123,10 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 409523cb0950..04aa452d4400 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -84,6 +84,10 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 78c82a665c84..365d85c16deb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -98,6 +98,10 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index 920103ec0046..e760e8efdf3e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -100,6 +100,10 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
index 9d20e13f0c02..3d8e2d452ce1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
@@ -51,6 +51,10 @@ &codec_analog {
 	cpvdd-supply = <&reg_eldo1>;
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 970415106dcf..28edcef8bed1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -104,6 +104,10 @@ &de {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &ehci1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 5e3f16c3b706..7f37c8cd1b6e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -80,6 +80,52 @@ simplefb_hdmi: framebuffer-hdmi {
 		};
 	};
 
+	cpu0_opp_table: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-648000000 {
+			opp-hz = /bits/ 64 <648000000>;
+			opp-microvolt = <1040000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <1100000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-912000000 {
+			opp-hz = /bits/ 64 <912000000>;
+			opp-microvolt = <1120000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-960000000 {
+			opp-hz = /bits/ 64 <960000000>;
+			opp-microvolt = <1160000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <1200000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-1056000000 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-microvolt = <1240000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-1104000000 {
+			opp-hz = /bits/ 64 <1104000000>;
+			opp-microvolt = <1260000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+		opp-1152000000 {
+			opp-hz = /bits/ 64 <1152000000>;
+			opp-microvolt = <1300000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -90,6 +136,10 @@ cpu0: cpu@0 {
 			reg = <0>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -98,6 +148,10 @@ cpu1: cpu@1 {
 			reg = <1>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -106,6 +160,10 @@ cpu2: cpu@2 {
 			reg = <2>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -114,6 +172,10 @@ cpu3: cpu@3 {
 			reg = <3>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
 		};
 
 		L2: l2-cache {
@@ -218,6 +280,46 @@ cpu_thermal: cpu0-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 0>;
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+				map1 {
+					trip = <&cpu_alert1>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
+			trips {
+				cpu_alert0: cpu_alert0 {
+					/* milliCelsius */
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_alert1: cpu_alert1 {
+					/* milliCelsius */
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_crit: cpu_crit {
+					/* milliCelsius */
+					temperature = <110000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
 		};
 
 		gpu0_thermal: gpu0-thermal {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
