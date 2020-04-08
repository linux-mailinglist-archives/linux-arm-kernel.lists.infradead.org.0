Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263141A22B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 15:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrnDQFOkQY4v6j4x7C3cOQBY//u/ZorZOtKZIeRsMKk=; b=d2pdKe1EsjmBfi
	uUTLuGx8DJeDs1/pU/L72xcy+atV3QE4zkgDRhJTm1JdlALMcOLtwQZqjNq2Pxeju0m8pAc+xrbk2
	lbtzJ6hetUJzXobwx6FO++ggT8kEnyNYt/Nt7iNVqRDEJeN5buXzUTI3bE5Scxpg4bjCZ+PSut8Sp
	E7E8cVslrI4/wxVuFcA0ybwr0KMU9pFI8KRsNKm0uDBrifRSQ6mrBiC5ixMt2qBnvl564Oe3QmSGp
	d/6TH5zFYP/5fpRbmgTdNCzERaG6mDCYswLV+xGAZA6xkl0IC0IgDSkG8cTE4hjn+s+zbsjhxdu/C
	eHV6uccA6PFdadyT7IQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAUF-0008G9-LV; Wed, 08 Apr 2020 13:11:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMATi-0007oW-4M
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 13:10:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id d202so5395002wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 06:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uCoRzaUrdhheeIlUNW47HAync5dklHonb09Mc1gGeaQ=;
 b=m0gdP+gW2L38CLkfKlAS1TDbSuutmYiyI58ZPkFL97FtWIweFVvbOIKVe+WTNSaHKA
 xkLRgN1PWfwEU61PK41yfNVb3P6jnaDql+mh9ce86e79y7CtT+GSIxI7wutR7gbwWJiK
 aZhaa9f98WnLj0Pw8euMTGIQd3N2MUdAkCL/P0bg80egMhuBb4w7JfTQPIxmjRdtE3j2
 YtAiz7lnBZ2SzjzGzc2lSCPWo2hluvX/TNBKIUYt4wybra/TqfvuaLuraV0kePIh+TIR
 bDAqPzIVQYozMf9SBkCC1qX4L4rp9+Y6DBRWZO1dLgcs2BLBSZ01I98Xnd0dLXzk4f/6
 WZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uCoRzaUrdhheeIlUNW47HAync5dklHonb09Mc1gGeaQ=;
 b=D0yrAaTTak7tazfdNAgq0Twt8LbLOeZBeSe0GZJ+iMj3tZKRN6F/eF1mbUq74AL/9t
 dOafoBV4RhtSkJH5AwusI2028gb0wSjMRGwOcstCHX3OmuLSxuVqBs52n8RZFIPU7p7g
 J2chRhJl4Izs8lpxf/MGFYaj1/6I0PYmZHfyzHAVlpNCxqUEVyF615KQCzNDxQYTyDuP
 FDpUGZurteJVtmWGbBFllcS2JCPNvG9KV0FYc8Um5iE/DDIRZP4dFbxTOX/yuyAngQeI
 nFQstUhhRfZSnxRaxA8Omhr0fpxwFI7BJIPK5BDQy9767Ar1FDmxVzVC7TGr8YSLmcnI
 Md0g==
X-Gm-Message-State: AGi0PuaupDX4DJbV3VttBga2V8CdCgJVDBo3/N1lDO/TY20zBPTPjK/I
 wAcz4wv1ewkPcoRPZpXbd9RUMg==
X-Google-Smtp-Source: APiQypI8sSJsIxwVReEYgGo7DltNbhld0IwxBkK3vozu76CjKVRzBofc5Zdgq1mBXZhSwpBQCte0ZA==
X-Received: by 2002:a1c:bd8b:: with SMTP id n133mr4806161wmf.175.1586351448472; 
 Wed, 08 Apr 2020 06:10:48 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id f4sm18428044wrp.80.2020.04.08.06.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 06:10:47 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, Anson.Huang@nxp.com, olof@lixom.net,
 leonard.crestez@nxp.com, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, valentin.schneider@arm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v4 2/6] arm64: dts: apq8016-sbc: Add CCI/Sensor nodes
Date: Wed,  8 Apr 2020 15:09:55 +0200
Message-Id: <20200408130959.2717409-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408130959.2717409-1-robert.foss@linaro.org>
References: <20200408130959.2717409-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_061050_166652_1505FCE7 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
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
index 06aab44d798c..14982762088d 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
@@ -51,6 +51,30 @@ chosen {
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
@@ -538,6 +562,58 @@ button@0 {
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
