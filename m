Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68238E231
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBSYMTpS5uQ/buWsh8ii9TxUb/fomTQOqCBzp9nriX8=; b=qXyiCZfiwj/8wf
	+Br2qrBu8B8mN/Ub9zI6q3EDM68P3ozI5+C2E12CxgMkghGGs1SwRNT/t6vlZr+utfzABKrQN+dhV
	zXDVgP1voAVrRawRYkooOv00vHVvva3HD9XYY4l+GjhDMnG3Y7miGFlgzcB+xI8zSs1X52zOvRz4l
	fjfLv8DZGEAz7YJy8sp9ROq8fHjPniWgQNb1Vorcq3igP/8xz+QhynPWfnptL20tWkL1IhVURMCJM
	DkK62h7MXEbTGVdOue7mfw2TF8XV3GgS7IFIDIgJIZ1ro8G/aMUkPl+boOGugTLmr0EXbZVQ2B4G6
	qSr7AMopSaLKs+w1GZpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy40u-0008KM-7O; Thu, 15 Aug 2019 00:53:12 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x9-0004ea-Bd
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:21 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 29F333EE6C;
 Thu, 15 Aug 2019 00:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830158;
 bh=n4ARTSBkbN2lUiYlrE3XPu66+fGDnp75QmhjLIvJkZA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k4WaCnVKNMUmQ03E4G+N8DZNHpC+W3ALAIivM+W/PFI0Dgnw4Sb3/HAclfy9shlG4
 veTWURgtvu7LCoiJ6aAg6p74byAqS4owyirSIoJtpEmIhCBbpwF8JU//7CeoG6pn6E
 A48YNmoTXQFRz1Sjf0fAJZe7KWKVxanQZnmqYnOA=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH RFC 11/11] ARM: dts: qcom: msm8974-hammerhead: add support for
 external display
Date: Wed, 14 Aug 2019 20:48:54 -0400
Message-Id: <20190815004854.19860-12-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174919_557369_B51B744A 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add HDMI nodes and other supporting infrastructure in order to support
the external display. This is based on work from Jonathan Marek.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
The hdmi-tx node in the downstream MSM sources:
https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/arch/arm/boot/dts/msm8974-mdss.dtsi#L101

 .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 140 ++++++++++++++++++
 1 file changed, 140 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
index 3487daf98e81..83416b6d6634 100644
--- a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
@@ -234,6 +234,34 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&wlan_regulator_pin>;
 	};
+
+	anx_avdd33: avdd33 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "avdd-3p3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pm8941_gpios 26 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&anx_avdd33_pin>;
+	};
+
+	anx_vdd10: vdd10 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "vdd-1p0";
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+
+		gpio = <&pm8941_gpios 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&anx_vdd10_pin>;
+	};
 };
 
 &soc {
@@ -355,6 +383,40 @@
 				bias-disable;
 			};
 		};
+
+		hdmi_pin: hdmi {
+			cec {
+				pins = "gpio31";
+				function = "hdmi_cec";
+			};
+
+			ddc {
+				pins = "gpio32", "gpio33";
+				function = "hdmi_ddc";
+			};
+
+			hpd {
+				pins = "gpio34";
+				function = "hdmi_hpd";
+			};
+		};
+
+		anx_msm_pin: anx {
+			irq {
+				pins = "gpio28";
+				function = "gpio";
+				drive-strength = <8>;
+				bias-pull-up;
+				input-enable;
+			};
+
+			reset {
+				pins = "gpio68";
+				function = "gpio";
+				drive-strength = <8>;
+				bias-pull-up;
+			};
+		};
 	};
 
 	sdhci@f9824900 {
@@ -440,6 +502,28 @@
 				default-brightness = <200>;
 			};
 		};
+
+		anx7808@72 {
+			compatible = "analogix,anx7808";
+			reg = <0x72>;
+			interrupts-extended = <&msmgpio 28 IRQ_TYPE_EDGE_RISING>;
+
+			hpd-gpios = <&pm8941_gpios 13 GPIO_ACTIVE_HIGH>;
+			pd-gpios = <&pm8941_gpios 14 GPIO_ACTIVE_HIGH>;
+			reset-gpios = <&msmgpio 68 GPIO_ACTIVE_LOW>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&anx_msm_pin>, <&anx_pin>;
+
+			dvdd10-supply = <&anx_vdd10>;
+			avdd33-supply = <&anx_avdd33>;
+
+			port {
+				anx7808_in: endpoint {
+					remote-endpoint = <&hdmi_out>;
+				};
+			};
+		};
 	};
 
 	i2c@f9968000 {
@@ -621,6 +705,29 @@
 
 			vddio-supply = <&pm8941_l12>;
 		};
+
+		hdmi-tx@fd922100 {
+			status = "ok";
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&hdmi_pin>;
+
+			qcom,hdmi-tx-ddc-clk = <&msmgpio 32 GPIO_ACTIVE_HIGH>;
+			qcom,hdmi-tx-ddc-data = <&msmgpio 33 GPIO_ACTIVE_HIGH>;
+			qcom,hdmi-tx-hpd = <&msmgpio 34 GPIO_ACTIVE_HIGH>;
+
+			ports {
+				port@1 {
+					hdmi_out: endpoint {
+						remote-endpoint = <&anx7808_in>;
+					};
+				};
+			};
+		};
+
+		hdmi-phy@fd922500 {
+			status = "ok";
+		};
 	};
 };
 
@@ -657,6 +764,39 @@
 				output-high;
 				line-name = "otg-gpio";
 			};
+
+			anx_pin: anx {
+				cbldet {
+					pins = "gpio13";
+					function = "normal";
+					input-enable;
+					bias-pull-down;
+					power-source = <PM8941_GPIO_S3>;
+				};
+
+				pd {
+					pins = "gpio14";
+					function = "normal";
+					bias-disable;
+					power-source = <PM8941_GPIO_S3>;
+				};
+			};
+
+			anx_avdd33_pin: anxvdd3  {
+				pins = "gpio26";
+				function = "normal";
+
+				bias-disable;
+				power-source = <PM8941_GPIO_S3>;
+			};
+
+			anx_vdd10_pin: anxvdd1 {
+				pins = "gpio8";
+				function = "normal";
+
+				bias-disable;
+				power-source = <PM8941_GPIO_S3>;
+			};
 		};
 	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
