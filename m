Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68CD191591
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:00:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkTomi/ahTSdpDJBA+Zr4ih5BIlDKglGNguBsL1WgNQ=; b=JlcmpM4IayCrtn
	FIQMCwCQU9j/fzC3fE8cr6WDo8S6HXQ5zgOmfXCi4EQLG493ZzA/nyGtXr8dD0VHgEdxo+X2JcV7l
	cHcUjexJkd9HgVB6ytC8aHHftDncnZ9fdXfXmyT2Tha8ZAOvyJeXBlUU3+56bEuxTb64TLs6pqvHW
	gKplE7MOIqGorKMP43boTvNgMkc1Bi0wLMZo1dnzwtFJ+mg54wueGuqD9JfBi2XITzPwtsF8GxfWo
	8IEZXc4Elq3VhQnYE5Qi3j9NPZS6JpFQgGaSZdcvsqmumQyZghWdcGxa0j3DjbOYvMLQCstetF9bf
	vz+GS2J1ReW/0YpbD8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlyg-0003D0-Mc; Tue, 24 Mar 2020 16:00:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlxB-00022n-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:58:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id u10so1772591wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DxJPFjv9WpHoZyIcW0HrRQqH/F49BdDjUPzGgWMHbBw=;
 b=CyLW/cZ++8gl1GdbCXZeDnj+de974YB5KGCR52QH1at/nkKWjB7M3oCfW7tgYDmxIF
 4FLHDOKlzJ17V6qmvYx1obc1QHRPxMQxBmw1IP83U627/tNlDDmVFHlxGKqwQ4zwHlRR
 ZPqdO997puQe641efBjSMWBdu15xU+ywTfIO/xipaXMMiRq1vVUzspH+C9f2EX3UsAVs
 z/NUwf6nnQYUxO4aHC0MAmhMWEaCJSclu6hvzQQEeAlHyXqSNLs46upmynH77cpF0yDU
 LpvGz8hE1LHJJYHObQjXsMDZZDf7752adc31hjIN2L6hPz6SzycmLVMxu0fJB7UMgtU0
 rNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DxJPFjv9WpHoZyIcW0HrRQqH/F49BdDjUPzGgWMHbBw=;
 b=YJSxnZ4biJM5rs/QuLSddH3qaWJ9U94B3mQU2nkJUkqYV2dO0AucRS+TrKpTzpHUym
 TrLYGYXEzG1Yp35H9yQ9m2FqCTznStfzZ4qdWckWxvOuaHYF2bqpfexFo36P8Ep3KDHh
 tPfiBy2132c7Pl+KapKjL7gM6a1W0gbAjEUUI+m2Az6jOib70hPsualyHdCdToEOhzIy
 RqhnbnpQHyUw7dEBcMqDv8+Mhxyu1pA4uqWrSsGjsMdL3PBqGiroXmFJsExhqT7sA7mr
 Dg3LisaIYvIT+aLVcrXpwK/frGj/FVkNFXExrZEhjWYPDIhbWTb9/zaKVAAJDQvrJ7c9
 daGw==
X-Gm-Message-State: ANhLgQ1nBu+201DeR3LZM1IBCYg0fa18B2WnZhxCeBLFSJl2RBnTQgsR
 5oRTPNgDe7jSrRWQFDhALzAsGg==
X-Google-Smtp-Source: ADFU+vsK9j0qcU2IQYhxZBMAxoZHwO/OSrvN29BZtEjTYIt7c19G3Oxl2NIqxuVgx5bnB/U2t/+fZA==
X-Received: by 2002:a5d:6847:: with SMTP id o7mr34359873wrw.274.1585065535974; 
 Tue, 24 Mar 2020 08:58:55 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e15d:2127:89a:e5dc])
 by smtp.gmail.com with ESMTPSA id t124sm4993321wmg.13.2020.03.24.08.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 08:58:55 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [v3 5/6] arm64: dts: sdm845-db845c: Add ov8856 & ov7251 camera nodes
Date: Tue, 24 Mar 2020 16:58:41 +0100
Message-Id: <20200324155843.10719-6-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324155843.10719-1-robert.foss@linaro.org>
References: <20200324155843.10719-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085857_742292_28A1054B 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
 - Move cam0_ pinctrls subnodes into the first pm8998_gpio reference
 - Remove accidentally committed &tlmn node subnodes
 - Remove redundant tlmm pinctrl subnodes
 - Fix pinctrl subnode identation
 - Remove accidentally committed &tlmn node subnodes
 - Replace underscores in node names
 - Reference cci i2c buses by labe
 - Change camera node names from camX@YY to camera@YY
 - Remove camera@10 comment about I2C addresses
 - Replace GPIO_ACTIVE_HIGH with 0 in camera nodes
 - Removed extra newline
 - Remove comment about not being available always
 - Disable cameras as CSI driver is missing
 - Fix factual error in comment about vreg_s4a_1p8
 - Remove dummy regulator cam3_vddd_1v2

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 178 +++++++++++++++++++++
 1 file changed, 178 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index efb0086e2aa1..ed71278196f2 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -110,6 +110,40 @@ pcie0_1p05v: pcie-0-1p05v-regulator {
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
 	pcie0_3p3v_dual: vldo-3v3-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VLDO_3V3";
@@ -393,6 +427,24 @@ &pm8998_gpio {
 		"OPTION2",
 		"PM845_SLB";
 
+	cam0_dvdd_1v2_en_default: cam0-dvdd-1v2-en {
+		pins = "gpio12";
+		function = "normal";
+
+		bias-pull-up;
+		drive-push-pull;
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+	};
+
+	cam0_avdd_2v8_en_default: cam0-avdd-2v8-en {
+		pins = "gpio10";
+		function = "normal";
+
+		bias-pull-up;
+		drive-push-pull;
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+	};
+
 	vol_up_pin_a: vol-up-active {
 		pins = "gpio6";
 		function = "normal";
@@ -434,6 +486,42 @@ &sdhc_2 {
 };
 
 &tlmm {
+	cam0_default: cam0_default {
+		rst {
+			pins = "gpio9";
+			function = "gpio";
+
+			drive-strength = <16>;
+			bias-disable;
+		};
+
+		mclk0 {
+			pins = "gpio13";
+			function = "cam_mclk";
+
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
+	cam3_default: cam3_default {
+		rst {
+			function = "gpio";
+			pins = "gpio21";
+
+			drive-strength = <16>;
+			bias-disable;
+		};
+
+		mclk3 {
+			function = "cam_mclk";
+			pins = "gpio16";
+
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
 	pcie0_pwren_state: pcie0-pwren {
 		pins = "gpio90";
 		function = "gpio";
@@ -612,6 +700,96 @@ pinconf-rx {
 	};
 };
 
+&pm8998_gpio {
+
+};
+
 &cci {
 	status = "ok";
 };
+
+&cci_i2c0 {
+	camera@10 {
+		compatible = "ovti,ov8856";
+		reg = <0x10>;
+
+		// CAM0_RST_N
+		reset-gpios = <&tlmm 9 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam0_default>;
+		gpios = <&tlmm 13 0>,
+			<&tlmm 9 0>;
+
+		clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
+		clock-names = "xvclk";
+		clock-frequency = <19200000>;
+
+		/* The &vreg_s4a_1p8 trace is powered on as a,
+		 * so it is represented by a fixed regulator.
+		 *
+		 * The 2.8V vdda-supply and 1.2V vddd-supply regulators
+		 * both have to be enabled through the power management
+		 * gpios.
+		 */
+		power-domains = <&clock_camcc TITAN_TOP_GDSC>;
+
+		dovdd-supply = <&vreg_lvs1a_1p8>;
+		avdd-supply = <&cam0_avdd_2v8>;
+		dvdd-supply = <&cam0_dvdd_1v2>;
+
+		status = "disable";
+
+		port {
+			ov8856_ep: endpoint {
+				clock-lanes = <1>;
+				link-frequencies = /bits/ 64
+					<360000000 180000000>;
+				data-lanes = <1 2 3 4>;
+//				remote-endpoint = <&csiphy0_ep>;
+			};
+		};
+	};
+};
+
+&cci_i2c1 {
+	camera@60 {
+		compatible = "ovti,ov7251";
+
+		// I2C address as per ov7251.txt linux documentation
+		reg = <0x60>;
+
+		// CAM3_RST_N
+		enable-gpios = <&tlmm 21 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam3_default>;
+		gpios = <&tlmm 16 0>,
+			<&tlmm 21 0>;
+
+		clocks = <&clock_camcc CAM_CC_MCLK3_CLK>;
+		clock-names = "xclk";
+		clock-frequency = <24000000>;
+
+		/* The &vreg_s4a_1p8 trace always powered on.
+		 *
+		 * The 2.8V vdda-supply regulator is enabled when the
+		 * vreg_s4a_1p8 trace is pulled high.
+		 * It too is represented by a fixed regulator.
+		 *
+		 * No 1.2V vddd-supply regulator is used.
+		 */
+		power-domains = <&clock_camcc TITAN_TOP_GDSC>;
+
+		vdddo-supply = <&vreg_lvs1a_1p8>;
+		vdda-supply = <&cam3_avdd_2v8>;
+
+		status = "disable";
+
+		port {
+			ov7251_ep: endpoint {
+				clock-lanes = <1>;
+				data-lanes = <0 1>;
+//				remote-endpoint = <&csiphy3_ep>;
+			};
+		};
+	};
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
