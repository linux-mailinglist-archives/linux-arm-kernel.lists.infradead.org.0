Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A45718182E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avlfsd2ssgsGV9T0ddw4X9lStA7Pm4tOQPbxEwh6R1c=; b=ULMJuHKudLnlWX
	6hSQzrEchjXRR4vb4MTDO+QlaN2gOliTB4H8Mq0H7VQpfBPhH2KwcwqVFurJwL6GIwkK82wLkpKUB
	PQ5q2FGXiJoSP2xhguiEWx5C+MfxPNQCqNOIFtovfwnTWmZb2GFZmJw5+cTN5bP3Y3oUl0JkDMZPy
	l4hdZKmei1KMAWar0GMsOlpyl5Q1xRgjAwR4k9ucQ4APyOb9Y4uatR0OYKtBDIvJd3AJ+/PO7qT6i
	ZfHHHuBjQobMzV+lShDKJtVdKGcdbh7H8uwPu/OCKM6VeGiE1+faxORm7sgouHKT8xF2OgDxeHYt4
	gvNkB0miVlgJ2ZEjUK9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0bL-00044g-2k; Wed, 11 Mar 2020 12:36:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zu-0002vS-91
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so2363904wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EsLey6y6SKlRjbgkIy31jgpCjMbbEJbmH2TS7XD1nHc=;
 b=mWiG+P2pZRLmizuh34OhP27MX0SBZMGPPLs/YPdMWgllcaWklbh7guy+08eWuXJxUs
 /Ipa746mPKuK+LfdBgdCATUcP++GWjeRDVtWby9q6vrnLC3u8J3gz1p9ZzHgjR3wNjpi
 q0UScWG0vPv/cXxV04mA2UVSBScF+okNEXCzyP//2YejVgmnuaGvOS9Nu7QX1dzbziUM
 qn8Ei1PCD4Kuj+vXVgwK2QHlxknkWkfo6IyW/IkKBAfrj69PeeefnDH4g8BF253gwr0q
 4ezC/kATL6VKJuEb55xEHxFeYYbe5+1+tpRTvFU3I3CuDZ8l1SSkvDVTW44s8MUVqlFY
 uckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EsLey6y6SKlRjbgkIy31jgpCjMbbEJbmH2TS7XD1nHc=;
 b=jcfpNmkSQJdNhXD0O59azjaksSNaMu9a/NIMaYmJ4UpPjz6F5HQW+C5OGfDHzquiMY
 2dWdGV95baCTxaWbkF3jAkch5M0+boua7Ndvgpg4PwFgL2+cgOK5dfVq2su/Ee5qOsvR
 O1MVFZkDaZDq1BZN765anNHzVyAUdKf6HU6+Bk1ceMe1ol3i/CgEn1lZgwXd+7DxmgMp
 Roc3Ona0uQE1kqrHaMI1+9G7ECq6w90vcLA5q6ocF+EMVeA7bOejuCQrPuk2eDF6WZtL
 j+NsKzckUjD2lnV1YMVC8HdHGQMXU8rSnclKfR60xbgTuPR38FGBKQxjAkXJ7nnfnZFZ
 HraA==
X-Gm-Message-State: ANhLgQ3VJFlMfr4bYYU6TRg30kfsCOHfO1ACrwrtXY/KNcs5Lij1mbJo
 4KA2LIws+l4eR1ltqrn+AXj4GQ==
X-Google-Smtp-Source: ADFU+vsLDiiJL2pTGClrrfzghrj2bi6GXYebxKsoYlZUpQHtyIgYMG+4GTMEmr09Abr3Us8gL5WUSw==
X-Received: by 2002:adf:b19e:: with SMTP id q30mr4265494wra.163.1583930112809; 
 Wed, 11 Mar 2020 05:35:12 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:12 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 5/6] arm64: dts: sdm845-db845c: Add ov8856 & ov7251 camera nodes
Date: Wed, 11 Mar 2020 13:35:00 +0100
Message-Id: <20200311123501.18202-6-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053514_367332_6B26F078 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the ov8856 main camera and the ov7251 b/w tracking camera
used on the Qualcomm RB3 kit.

Currently the camera nodes have not yet been attached to an to a
CSI2 endpoint, since no driver currently supports the ISP that the the
SDM845/db845c ships with.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 239 +++++++++++++++++++++
 1 file changed, 239 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index e8c056d02ace..660550197ce9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -110,6 +110,53 @@
 		// enable-active-high;
 	};
 
+	cam0_dvdd_1v2: reg_cam0_dvdd_1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "CAM0_DVDD_1V2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		enable-active-high;
+		gpio = <&pm8998_gpio 12 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam0_dvdd_1v2_en_default>;
+		vin-supply = <&vbat>;
+	};
+
+	cam0_avdd_2v8: reg_cam0_avdd_2v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "CAM0_AVDD_2V8";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		enable-active-high;
+		gpio = <&pm8998_gpio 10 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam0_avdd_2v8_en_default>;
+		vin-supply = <&vbat>;
+	};
+
+	/* This regulator is enabled when the VREG_LVS1A_1P8 trace is enabled */
+	cam3_avdd_2v8: reg_cam3_avdd_2v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "CAM3_AVDD_2V8";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		regulator-always-on;
+		vin-supply = <&vbat>;
+	};
+
+	/* This regulator does not really exits, but a 'vddd-supply' is
+	 * required for the ov7251 driver, but no 'vddd' regulator is used
+	 * in the schematic
+	 */
+	cam3_vddd_1v2: reg_cam3_vddd_1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "CAM3_VDDD_1V2_DUMMY";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		vin-supply = <&vbat>;
+	};
+
 	pcie0_3p3v_dual: vldo-3v3-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VLDO_3V3";
@@ -406,6 +453,81 @@
 };
 
 &tlmm {
+	pcie0_default_state: pcie0-default {
+		clkreq {
+			pins = "gpio36";
+			function = "pci_e0";
+			bias-pull-up;
+		};
+
+		reset-n {
+			pins = "gpio35";
+			function = "gpio";
+
+			drive-strength = <2>;
+			output-low;
+			bias-pull-down;
+		};
+
+		wake-n {
+			pins = "gpio37";
+			function = "gpio";
+
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	cam0_default: cam0_default {
+		mux_rst {
+			function = "gpio";
+			pins = "gpio9";
+		};
+		config_rst {
+			pins = "gpio9";
+			drive-strength = <16>;
+			bias-disable;
+		};
+
+		mux_mclk0 {
+			function = "cam_mclk";
+			pins = "gpio13";
+		};
+		config_mclk0 {
+			pins = "gpio13";
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
+	cam3_default: cam3_default {
+			mux_rst {
+				function = "gpio";
+				pins = "gpio21";
+			};
+			config_rst {
+				pins = "gpio21";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mux_mclk3 {
+				function = "cam_mclk";
+				pins = "gpio16";
+			};
+			config_mclk3 {
+				pins = "gpio16";
+				drive-strength = <16>;
+				bias-disable;
+			};
+	};
+
+	lt9611_irq_pin: lt9611-irq {
+		pins = "gpio84";
+		function = "gpio";
+		bias-disable;
+	};
+
 	pcie0_pwren_state: pcie0-pwren {
 		pins = "gpio90";
 		function = "gpio";
@@ -612,8 +734,125 @@
 		"PM845_GPIO24",
 		"OPTION2",
 		"PM845_SLB";
+
+	cam0_dvdd_1v2_en_default: cam0_dvdd_1v2_en_pinctrl {
+		pins = "gpio12";
+		function = "normal";
+
+		bias-pull-up;
+		drive-push-pull;
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+	};
+
+	cam0_avdd_2v8_en_default: cam0_avdd_2v8_en_pinctrl {
+		pins = "gpio10";
+		function = "normal";
+
+		bias-pull-up;
+		drive-push-pull;
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+	};
 };
 
 &cci {
 	status = "ok";
+
+	i2c-bus@0 {
+		cam0@10 {
+			compatible = "ovti,ov8856";
+
+			/* The Qualcomm RB3 camera mezzanine schematic lists
+			 * 0x20 as I2C address of this device, but the Linux
+			 * kernel documentation lists 0x10 I2C address.
+			 */
+			reg = <0x10>;
+
+			// CAM0_RST_N
+			reset-gpios = <&tlmm 9 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&cam0_default>;
+			gpios = <&tlmm 13 0>,
+				<&tlmm 9 0>;
+
+			clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
+			clock-names = "xvclk";
+			clock-frequency = <19200000>;
+
+
+			/* The &vreg_s4a_1p8 trace is powered on as a
+			 * part of the TITAN_TOP_GDSC power domain.
+			 * So it is represented by a fixed regulator.
+			 *
+			 * The 2.8V vdda-supply and 1.2V vddd-supply regulators
+			 * both have to be enabled through the power management
+			 * gpios.
+			 */
+			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
+
+			dovdd-supply = <&vreg_lvs1a_1p8>;
+			avdd-supply = <&cam0_avdd_2v8>;
+			dvdd-supply = <&cam0_dvdd_1v2>;
+
+			/* No camera mezzanine by default */
+			status = "ok";
+
+			port {
+				ov8856_ep: endpoint {
+					clock-lanes = <1>;
+					link-frequencies = /bits/ 64
+						<360000000 180000000>;
+					data-lanes = <1 2 3 4>;
+//					remote-endpoint = <&csiphy0_ep>;
+				};
+			};
+		};
+	};
+
+	i2c-bus@1 {
+		cam3@60 {
+			compatible = "ovti,ov7251";
+
+			// I2C address as per ov7251.txt linux documentation
+			reg = <0x60>;
+
+			// CAM3_RST_N
+			enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&cam3_default>;
+			gpios = <&tlmm 16 0>,
+				<&tlmm 21 0>;
+
+			clocks = <&clock_camcc CAM_CC_MCLK3_CLK>;
+			clock-names = "xclk";
+			clock-frequency = <24000000>;
+
+			/* The &vreg_s4a_1p8 trace is powered on as a
+			 * part of the TITAN_TOP_GDSC power domain.
+			 * So it is represented by a fixed regulator.
+			 *
+			 * The 2.8V vdda-supply regulator is enabled when the
+			 * vreg_s4a_1p8 trace is pulled high.
+			 * It too is represented by a fixed regulator.
+			 *
+			 * No 1.2V vddd-supply regulator is used, a fixed
+			 * regulator represents it.
+			 */
+			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
+
+			vdddo-supply = <&vreg_lvs1a_1p8>;
+			vdda-supply = <&cam3_avdd_2v8>;
+			vddd-supply = <&cam3_vddd_1v2>;
+
+			/* No camera mezzanine by default */
+			status = "ok";
+
+			port {
+				ov7251_ep: endpoint {
+					clock-lanes = <1>;
+					data-lanes = <0 1>;
+//					remote-endpoint = <&csiphy3_ep>;
+				};
+			};
+		};
+	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
