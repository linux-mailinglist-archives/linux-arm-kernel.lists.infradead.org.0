Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7319181829
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsLTRNgWT7npcfXrWnNydJj1Js/n+hGw6XdhjXUIrp0=; b=CKZCH4kcsIvXVx
	BUQWHwUSZ331xY5m4gPcMysF4ZZdffkIJWDGyrh2AdLPPnHr3bOyQLvoXOcfaBTcHjWvYUUUvJPvc
	Mo9ZL1YWymfxfy7XFj96yIcXJdbNbA8bhE3HPLhXCFhZRHjXyixoVb25uzW9ADT0XXgoAOJeCZl9D
	UMhPDKtDzuUlpPkQ/4FOYi2gM42Y+zj3+FTQXDtFsIHqjF4dLJbyDAQpbn4uPKPrGv8KU3f2PPp6q
	+EAQLPYdEnVxkTWzsA8fmBZSCFPcHpXmXpvgeFAtOMeQGnKsqLKTNyf1M0toJQQ5K2uRFgXd/Syis
	ylmMt1ikoM56wvTvZvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0ad-0003MC-4g; Wed, 11 Mar 2020 12:35:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zq-0002mW-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id z15so2414418wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lNuzy8ycpqr3FLs4zmHBBSdqqrGsf8gVzDzvMcY50JI=;
 b=cwJE67DocEpbh5BKtuvUxtT+LM8kGi4/xJPmyjW8KDs6uDodbf8fgF9z7rrrE8/N4j
 Zft/9qqCBX3c8HGjIWMYzXpJMuQAOBcGnNdOl/NKj+046V4RK1e9VJ3G7sIWzIoEzkgV
 1zsB9PjEjSLpn6E9KR95nB9ZzakygZH/BxEXDiuX2XubDV1/wlo3xDfijcYP36uRpC+8
 GmsHW2AEz1p9K27im9xGCpsN+bjsPSDj/gEI+JYrp1LgLzTT2mziix5hJwi1VrTX7bA0
 OTVuac56ZI53DK/Jn/P9b6fZN/QWB66O/RmhSksbTAdegbPx/wrD6yKN/6B8eABSXEtK
 yroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lNuzy8ycpqr3FLs4zmHBBSdqqrGsf8gVzDzvMcY50JI=;
 b=cLg/PriW9DK8qNohDCCB58w/Z2Samo3veXfFUeBph0C7OUE+88zZ0kZmZGDj+pDNRH
 3G6WsI59ymUTwX1f2xPm7jsf5KlYayOlEyoPMnV6+WVF6pTOAbREWV9RcFcSrfeHXQEx
 ZLt1kgCcdRdUwkMbcK0IB1S9sglPokM7GjpwfDi6hNyIUh0rR1Kp3jh9pQYfjtN8j+Zs
 6cOFOzIIJlG2X5O/A94wTNWfHABjJ05vn2QN5qxlUBjikoIKV6nBhsjxsAlI4MObaZ1D
 qIfAbrLqUlhthtBqvBax/vc8GiIbpvJNAPDLru1BCrwWiQFA6RgSGy27o9PSR76CDwk3
 +TMg==
X-Gm-Message-State: ANhLgQ1CPmmIODXmRB21lH6MIRxZWHuHLytWsJEKq0r2ZZq1f5a0Mm09
 R+dCDC++OIC/ufDt0q6R749GrA==
X-Google-Smtp-Source: ADFU+vs4BEZokW6i2VW9147V1l12EpLto/m3bG4MOwCtWbE4q/Zuimm9URFd7dry6hdivmMrBJcGlA==
X-Received: by 2002:adf:f002:: with SMTP id j2mr4457829wro.296.1583930108514; 
 Wed, 11 Mar 2020 05:35:08 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:08 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 2/6] arm64: dts: apq8016-sbc: Add CCI/Sensor nodes
Date: Wed, 11 Mar 2020 13:34:57 +0100
Message-Id: <20200311123501.18202-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053510_819504_814FBD5C 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

From: Loic Poulain <loic.poulain@linaro.org>

Add cci device to msm8916.dtsi.
Add default 96boards camera node for db410c (apq8016-sbc).

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi | 75 +++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
index 037e26b3f8d5..a3e6982f4f93 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
@@ -495,6 +495,81 @@
 		wcnss@a21b000 {
 			status = "okay";
 		};
+
+		camera_vdddo_1v8: fixedregulator@0 {
+			compatible = "regulator-fixed";
+			regulator-name = "camera_vdddo";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-always-on;
+		};
+
+		camera_vdda_2v8: fixedregulator@1 {
+			compatible = "regulator-fixed";
+			regulator-name = "camera_vdda";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-always-on;
+		};
+
+		camera_vddd_1v5: fixedregulator@2 {
+			compatible = "regulator-fixed";
+			regulator-name = "camera_vddd";
+			regulator-min-microvolt = <1500000>;
+			regulator-max-microvolt = <1500000>;
+			regulator-always-on;
+		};
+
+		cci@1b0c000 {
+			status = "ok";
+			i2c-bus@0 {
+				camera_rear@3b {
+					compatible = "ovti,ov5640";
+					reg = <0x3b>;
+
+					enable-gpios = <&msmgpio 34 GPIO_ACTIVE_HIGH>;
+					reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&camera_rear_default>;
+
+					clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
+					clock-names = "xclk";
+					clock-frequency = <23880000>;
+
+					vdddo-supply = <&camera_vdddo_1v8>;
+					vdda-supply = <&camera_vdda_2v8>;
+					vddd-supply = <&camera_vddd_1v5>;
+
+					/* No camera mezzanine by default */
+					status = "okay";
+
+					port {
+						ov5640_ep: endpoint {
+							clock-lanes = <1>;
+							data-lanes = <0 2>;
+							remote-endpoint = <&csiphy0_ep>;
+						};
+					};
+				};
+			};
+		};
+
+		camss@1b00000 {
+			status = "ok";
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+					csiphy0_ep: endpoint {
+						clock-lanes = <1>;
+						data-lanes = <0 2>;
+						remote-endpoint = <&ov5640_ep>;
+						status = "okay";
+					};
+				};
+			};
+		};
 	};
 
 	usb2513 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
