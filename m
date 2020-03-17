Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BA01886A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31pB6IWK4kXZComKEZN4zn8TaPQvk92Bn7xmMyEPzvE=; b=DDVQjlm3hUvGqb
	PV35WKSDK1hRtM6evc+DpPKBhgImgpnVGNbiWy6GI91QBozf7DGK5KdHm4gHserhuPOxmegVdMy04
	DWBzB1h/ej7/+TBKYNBKj3jkb2VPIrD3oLVvCf3YNWJPPbiB9NbpIJE0PxXqitGzi2ueZ29F7axit
	q4wai879AgDSWmnXR0RoouumzNrfuzlgAmbcFCTX/tcLtr9EFEfdFY0BGG7a1SliWptrX97SvzW5y
	MkrPIXy8xDkdLlrS/IW0LPYxzoocULvHYmtSi/R47Pr8UUCexBq2yWCZZVCAh/AvYkNj8X+x/xjQP
	sravkRSbrPFAnR2BVrmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECjs-00017n-Dj; Tue, 17 Mar 2020 13:58:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECjD-0000ch-1E
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:57:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id h6so5468081wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 06:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E7ZsSBUhejcW1WENgNkFbYtvh60PcoS0PtZmGJlxadU=;
 b=Qu8Ps6Q87cbQkhFKxkNsAmQdAElXSe+ZGHs0h7urUZ76bgNkrTvzwwas3mBUVeKoBo
 jsbWik9YedB5fjdzozCPLze7QaOfOxfbjFTC5P7Pme/y0ngwDSADLzeX0lj4vAE+rtDh
 My88mJq0n/MSGE6vZ25+Ug6dpnrJGq7XtV27+2JdzxB5VCJx2fnRodufZ3P/lJq2rZ0A
 g0yGWLZAych/XHYX/BQBnZgrXB3jhyaabqqsjTkezMquF2MfINpTDDOFW6u9/2oBcpHv
 ImAD3QOcSFUdOzbkMyrXdxUQYpEVLWW78xctBP3Kd90tK8mhgRaYirAjFiHsRF+f8F0p
 yGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E7ZsSBUhejcW1WENgNkFbYtvh60PcoS0PtZmGJlxadU=;
 b=QYTBHQpVgLvb0l3Sjd+35Nqe7JeVJHFeCS74TxRHU2lusixwwFak1hMdJHjgmHoRen
 v6jyjlgoqV27kPG9lyt/XyYMM2lQgSlPInxpBuzwsNoSwDPrp5Y5rKxpjeKxIhMwT8k5
 psBv2fDZWaWQHmbU1EhP34RUEtKupt8F4yGFF3IvLpsz+XGPBHIvZKHj3zwioYGxK6rG
 Tp1QgnpeiW26ruUUs8YZMjxyWsvDRh2OFszMc0cRaYF/AOeVnttV7eRKEJ669Ln7ivkA
 uDaWggik4dPOoMh8+a7Qmmeh8rTrrp/21WWOwlMEj2pBFN4KYcZkjQi5xf0JAaz2sPYq
 g0QA==
X-Gm-Message-State: ANhLgQ2NQjGyYxm+pGw0bhcMvRd9EVO7HGlXG5+5fLk7RFc6QHlVeu5N
 GfXgkJXwfwyx/vxok0abEG7ZpA==
X-Google-Smtp-Source: ADFU+vtui492H+miaWTyfRzOCSzn/SzVawYdAfgXp6SNtzgRBoH32Npb5uwL2TWiiuaM5Q+QdEJ4vw==
X-Received: by 2002:adf:fdc6:: with SMTP id i6mr6204937wrs.414.1584453473419; 
 Tue, 17 Mar 2020 06:57:53 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:84f7:5c25:a9d8:81a1])
 by smtp.gmail.com with ESMTPSA id r3sm2976558wrn.35.2020.03.17.06.57.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:57:52 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, maxime@cerno.tech,
 Anson.Huang@nxp.com, dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v2 2/6] arm64: dts: apq8016-sbc: Add CCI/Sensor nodes
Date: Tue, 17 Mar 2020 14:57:36 +0100
Message-Id: <20200317135740.19412-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317135740.19412-1-robert.foss@linaro.org>
References: <20200317135740.19412-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065755_099857_3457AD68 
X-CRM114-Status: GOOD (  10.82  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
 - Reference CCI by label
 - Don't use generic node names
 - Move regulator nodes out of /soc
 - Use CCI label and move node out of /soc
 - Use reference for camss and move node out of /soc
 - Use reference for cci-i2c0 and move out of /cci
 - Disable camera_read by default, since no mezzanine board is guaranteed


 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi | 76 +++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
index 037e26b3f8d5..d98c7e9e6eb9 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
@@ -51,6 +51,30 @@
 		stdout-path = "serial0";
 	};
 
+	camera_vdddo_1v8: camera_vdddo_1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "camera_vdddo";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	camera_vdda_2v8: camera_vdda_2v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "camera_vdda";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		regulator-always-on;
+	};
+
+	camera_vddd_1v5: camera_vddd_1v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "camera_vddd";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+	};
+
 	reserved-memory {
 		ramoops@bff00000{
 			compatible = "ramoops";
@@ -538,6 +562,58 @@
 	};
 };
 
+&camss {
+	status = "ok";
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		port@0 {
+			reg = <0>;
+			csiphy0_ep: endpoint {
+				clock-lanes = <1>;
+				data-lanes = <0 2>;
+				remote-endpoint = <&ov5640_ep>;
+				status = "okay";
+			};
+		};
+	};
+};
+
+&cci {
+	status = "ok";
+};
+
+&cci_i2c0 {
+	camera_rear@3b {
+		compatible = "ovti,ov5640";
+		reg = <0x3b>;
+
+		enable-gpios = <&msmgpio 34 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&camera_rear_default>;
+
+		clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
+		clock-names = "xclk";
+		clock-frequency = <23880000>;
+
+		vdddo-supply = <&camera_vdddo_1v8>;
+		vdda-supply = <&camera_vdda_2v8>;
+		vddd-supply = <&camera_vddd_1v5>;
+
+		/* No camera mezzanine by default */
+		status = "disabled";
+
+		port {
+			ov5640_ep: endpoint {
+				clock-lanes = <1>;
+				data-lanes = <0 2>;
+				remote-endpoint = <&csiphy0_ep>;
+			};
+		};
+	};
+};
+
 &spmi_bus {
 	pm8916_0: pm8916@0 {
 		pon@800 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
