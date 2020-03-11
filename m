Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948F218182C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWSfYOaegWJgxgqeW1wx6H0biDc+Il5nHHkGq0tObtw=; b=GsJ0pI8j5+YP5q
	04chNz/0bANYXwszvxENNT/G0g4Z8NCXLBs73mkpxn2a6rb5zw/e8MNEA+/5e+BXMG8VdAZTD7vd+
	Tlr/ENC9mOvavTnumwyMzAMo4v9cGOoWvy8wa8V61za+1NYm+v3ZAq2LsEXG/4+jCBn1nU6OIeOjr
	efhh8c/l/YMcTNZaVZThGfoSFd9IFXS4SZ6tvSgervUb2azD+0C4+a7RzvxDUscK1z97atIm5tb8A
	B+r7E+11m5kAI8eC0W8s/0d0eGLyAEK3MYbjplDw+bhiEmbPG7NjOxo8KBAq412xjFcHMsKEADLM0
	VZ+YLudmYVy0ueyz8Oxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0ar-0003cS-1x; Wed, 11 Mar 2020 12:36:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zr-0002tN-DI
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so1915401wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qtTX7EM1d6h/uC42my2sgJ8i9nRiLu7iFeIbg2tcgXs=;
 b=yu5/OhSa/aCJePUy90xslVuooEX+/2dj6XTUQ9x7U9JYlXGW+WfmKPxMCS+RWVjuvR
 6kNhPVOzM20irZoWcPIXC5Sz6nFgJWXfHIIHVRNnOQ+CH2QjGYOxVwDqdMnemSdu8UWu
 SS3RnmzWsAfwCUmEQn1YG7/P8rH/Xcq/nM+rxlzrM9E5L5fIzCumYWqigHRV30BHW4wu
 oXqKF365o8dY95kRIy87qF6Jqa2obcnwRb1Rs14OigKZxHiqxsYCcNo61A/I2XNDJl40
 QDzt54WS9MeV0GKTgCOFB9RO5P2iRPr+RUbfDZ0R6g6pUn6mMcrUHSHxmM5H589w5PRC
 Xxtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qtTX7EM1d6h/uC42my2sgJ8i9nRiLu7iFeIbg2tcgXs=;
 b=sub25mb1QFgkri9hK5SeCEsdI0DaKKhOWyZdKjMENc/c/+0k/pKO//iOS+LE8TpDbP
 BfMP1G/+V1EpKRPWw/l0TdUvSaaU5ijIfCT+e9YEUVDlRDd06c0ej8xnK6TCaw8KmF89
 SRUUxLTtTN5h9vJe1wgTNeLgYgXSHgnD+QTWeqRFUogx/UJx1VZPBHWE54KdfYSvpBwb
 yMTyF/apmA30ldf6Ry/FUclfCYHvZkhj2kP/4P5Q/SsXs54EB8E0N2IEsXJFEvBmDbFX
 Z5VYYJjjcbxX7QB/zDf/y3gif7FchEO13qkare7Cfb4pAIe62/lqM4wohKrnZJLoZAgh
 X2KA==
X-Gm-Message-State: ANhLgQ0V23xQ1gDrdm/yjaxXy1L2JoewTIeKuG2Lev3nZqXr/xEI75sS
 7xPS7AYnH0YmNlH6Kp1R+L5ikA==
X-Google-Smtp-Source: ADFU+vtnvILyF3Zc67x9wUJYRN0XGPqBQlx8RvzSHeYOfi2xFeqCC0M6n6wEo9V7OBH9XYdtbFiQWw==
X-Received: by 2002:a1c:3585:: with SMTP id c127mr3596215wma.124.1583930110019; 
 Wed, 11 Mar 2020 05:35:10 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:09 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 3/6] arm64: dts: sdm845: Add i2c-qcom-cci node
Date: Wed, 11 Mar 2020 13:34:58 +0100
Message-Id: <20200311123501.18202-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053511_486742_9AE8FDBE 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The sdm845 SOC ships with a CCI controller, which
has two CCI/I2C buses.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts |   4 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 110 +++++++++++++++++++++
 2 files changed, 114 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index eb77aaa6a819..a6b6837c3d68 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -583,3 +583,7 @@
 		bias-pull-up;
 	};
 };
+
+&cci {
+	status = "ok";
+};
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index d42302b8889b..b7f5c0b0f6af 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5,6 +5,7 @@
  * Copyright (c) 2018, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,camcc-sdm845.h>
 #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm845.h>
@@ -717,6 +718,14 @@
 			#power-domain-cells = <1>;
 		};
 
+		clock_camcc: clock-controller@ad00000 {
+			compatible = "qcom,sdm845-camcc";
+			reg = <0 0xad00000 0 0x10000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		qfprom@784000 {
 			compatible = "qcom,qfprom";
 			reg = <0 0x00784000 0 0x8ff>;
@@ -1451,6 +1460,60 @@
 			gpio-ranges = <&tlmm 0 0 150>;
 			wakeup-parent = <&pdc_intc>;
 
+			cci0_default: cci0_default {
+				/* SDA, SCL */
+				pinmux {
+					function = "cci_i2c";
+					pins = "gpio17", "gpio18";
+				};
+				pinconf {
+					pins = "gpio17", "gpio18";
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci0_sleep: cci0_sleep {
+				/* SDA, SCL */
+				mux {
+					pins = "gpio17", "gpio18";
+					function = "cci_i2c";
+				};
+
+				config {
+					pins = "gpio17", "gpio18";
+					drive-strength = <2>; /* 2 mA */
+					bias-pull-down;
+				};
+			};
+
+			cci1_default: cci1_default {
+				/* SDA, SCL */
+				pinmux {
+					function = "cci_i2c";
+					pins = "gpio19", "gpio20";
+				};
+				pinconf {
+					pins = "gpio19", "gpio20";
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci1_sleep: cci1_sleep {
+				/* SDA, SCL */
+				mux {
+					pins = "gpio19", "gpio20";
+					function = "cci_i2c";
+				};
+
+				config {
+					pins = "gpio19", "gpio20";
+					drive-strength = <2>; /* 2 mA */
+					bias-pull-down;
+				};
+			};
+
 			qspi_clk: qspi-clk {
 				pinmux {
 					pins = "gpio95";
@@ -2608,6 +2671,53 @@
 			#reset-cells = <1>;
 		};
 
+		cci: cci@ac4a000 {
+			compatible = "qcom,sdm845-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			reg = <0 0xac4a000 0 0x4000>;
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
+
+			clocks = <&clock_camcc CAM_CC_CAMNOC_AXI_CLK>,
+				<&clock_camcc CAM_CC_SOC_AHB_CLK>,
+				<&clock_camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				<&clock_camcc CAM_CC_CPAS_AHB_CLK>,
+				<&clock_camcc CAM_CC_CCI_CLK>,
+				<&clock_camcc CAM_CC_CCI_CLK_SRC>;
+			clock-names = "camnoc_axi_clk",
+				"soc_ahb_clk",
+				"slow_ahb_src_clk",
+				"cpas_ahb_clk",
+				"cci",
+				"cci_clk_src";
+
+			assigned-clocks = <&clock_camcc CAM_CC_CAMNOC_AXI_CLK>,
+				<&clock_camcc CAM_CC_CCI_CLK>;
+			assigned-clock-rates = <80000000>, <37500000>;
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
+
+			status = "disabled";
+
+			i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		mdss: mdss@ae00000 {
 			compatible = "qcom,sdm845-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
